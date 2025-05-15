/*
Take GPS as, output Open-Meteo current model data for marine
Send the message:
    set lat 37.7749
    set lon -122.4194
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

  const marineURL = `https://marine-api.open-meteo.com/v1/marine?latitude=${lat}&longitude=${lon}&hourly=wave_height,swell_wave_height,swell_wave_period,sea_surface_temperature&timezone=auto`;

  try {
    const data = await fetchJSON(marineURL);
    const now = new Date();
    const nowHour = now.toISOString().slice(0, 13) + ":00";

    const index = data.hourly?.time?.indexOf(nowHour);

    if (!data.hourly || index === -1) {
      Max.post("Warning: Location may be on land or no marine data available for this time.");
      Max.outlet("ocean", { warning: "No marine data available" });
      return;
    }

    function check(value, label) {
      if (value == null || value === 0) {
        Max.post(`Warning: ${label} is missing or zero.`);
        return null;
      }
      return value;
    }

    const output = {
      coords: { lat, lon },
      ocean: {
        wave_height_m: check(data.hourly.wave_height?.[index], "wave_height"),
        swell_wave_height_m: check(data.hourly.swell_wave_height?.[index], "swell_wave_height"),
        swell_wave_period_s: check(data.hourly.swell_wave_period?.[index], "swell_wave_period"),
        sea_surface_temp_C: check(data.hourly.sea_surface_temperature?.[index], "sea_surface_temperature")
      }
    };

    Max.outlet(output);
  } catch (err) {
    Max.post("Marine data fetch error: " + err);
    Max.outlet({ error: err.toString() });
  }
});
