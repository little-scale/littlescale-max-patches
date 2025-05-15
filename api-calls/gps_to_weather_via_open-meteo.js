/*
Take GPS as, output Open-Meteo current model data
Send the message:
    set lat 37.7749
    set lon -122.4194
    set apikey YOUR_API_KEY
Then send:
    bang

Outputs to two dicts routed via route weather airquality

*/

const Max = require("max-api");
const https = require("https");

let lat = null;
let lon = null;

function fetchJSON(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (res) => {
      let data = "";
      res.on("data", chunk => data += chunk);
      res.on("end", () => {
        try {
          const parsed = JSON.parse(data);
          resolve(parsed);
        } catch (e) {
          reject("JSON parse error: " + e.message);
        }
      });
    }).on("error", (err) => {
      reject("Request error: " + err.message);
    });
  });
}

Max.addHandler("set", (key, value) => {
  if (key === "lat") lat = parseFloat(value);
  if (key === "lon") lon = parseFloat(value);
});

Max.addHandler("bang", async () => {
  if (lat === null || lon === null) {
    Max.post("Please set both lat and lon before sending bang");
    return;
  }

  const weatherURL = `https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current_weather=true&hourly=surface_pressure,uv_index&timezone=auto`;
  const airURL = `https://air-quality-api.open-meteo.com/v1/air-quality?latitude=${lat}&longitude=${lon}&hourly=pm2_5,pm10,carbon_monoxide,nitrogen_dioxide,sulphur_dioxide,ozone&timezone=auto`;

  try {
    const [weatherData, airData] = await Promise.all([
      fetchJSON(weatherURL),
      fetchJSON(airURL)
    ]);

    if (!weatherData.current_weather || !weatherData.hourly || !Array.isArray(weatherData.hourly.time)) {
      Max.post("Missing expected weather fields in weather response.");
      Max.outlet({ error: "Missing expected weather data" });
      return;
    }

    const current = weatherData.current_weather;
    const nowISO = current.time;
    const nowHourISO = nowISO.slice(0, 13) + ":00";

    const weatherIndex = weatherData.hourly.time.indexOf(nowISO);
    const airIndex = airData.hourly?.time?.indexOf(nowHourISO);

    

    function getWeatherValue(key) {
      return weatherIndex >= 0 ? weatherData.hourly[key]?.[weatherIndex] : null;
    }

    function getAirValue(key) {
      return airIndex >= 0 ? airData.hourly[key]?.[airIndex] : null;
    }

    const weatherOutput = {
      coords: { lat, lon },
      weather: {
        temperature_C: current.temperature,
        windspeed_mps: current.windspeed,
        winddirection_deg: current.winddirection,
        code: current.weathercode,
        pressure_hPa: getWeatherValue("surface_pressure"),
        uv_index: getWeatherValue("uv_index")
      }
    };

    const airOutput = {
      coords: { lat, lon },
      air_quality: {
        pm2_5: getAirValue("pm2_5"),
        pm10: getAirValue("pm10"),
        co: getAirValue("carbon_monoxide"),
        no2: getAirValue("nitrogen_dioxide"),
        so2: getAirValue("sulphur_dioxide"),
        o3: getAirValue("ozone")
      }
    };

    Max.outlet("weather", weatherOutput);
    Max.outlet("airquality", airOutput);
  } catch (err) {
    Max.post("Weather fetch error: " + err);
    Max.outlet({ error: err.toString() });
  }
});
