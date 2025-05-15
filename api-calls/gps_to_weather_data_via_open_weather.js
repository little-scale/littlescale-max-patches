/*
Take GPS and API key as input, output OpenWeather current data
Requires an API key from OpenWeather.org using a free tier membership
Send the message:
    set lat 37.7749
    set lon -122.4194
    set apikey YOUR_API_KEY
Then send:
    bang
*/

const Max = require("max-api");

let lat = null;
let lon = null;
let apiKey = null;

const https = require("https");
const http = require("http");

function fetchJSON(url) {
  return new Promise((resolve, reject) => {
    const client = url.startsWith("https") ? https : http;

    client.get(url, (res) => {
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
  if (key === "apikey") apiKey = value;
});

async function getWeather() {
  if (!lat || !lon || !apiKey) {
    Max.post("Missing lat, lon, or API key");
    return;
  }

  try {
    const weatherURL = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${apiKey}&units=metric`;
    const airURL = `https://api.openweathermap.org/data/2.5/air_pollution?lat=${lat}&lon=${lon}&appid=${apiKey}`;

    const weatherData = await fetchJSON(weatherURL);
    const airData = await fetchJSON(airURL);
    const air = airData.list[0];

    const output = {
      location: weatherData.name,
      coords: { lat, lon },
      weather: {
        temperature_C: weatherData.main.temp,
        humidity_percent: weatherData.main.humidity,
        pressure_hPa: weatherData.main.pressure,
        wind_speed_mps: weatherData.wind.speed,
        description: weatherData.weather[0]?.description || "Unknown"
      },
      air_quality: {
        aqi: air.main.aqi,
        components: air.components
      }
    };

    Max.outlet(output);
  } catch (err) {
    Max.post("Weather error: " + err);
    Max.outlet({ error: err.toString() });
  }
}

Max.addHandler("bang", getWeather);
