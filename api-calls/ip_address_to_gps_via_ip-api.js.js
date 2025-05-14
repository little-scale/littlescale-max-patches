// Bang for GPS and location data
const Max = require("max-api");
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

async function getLocationFromIP() {
  try {
    const location = await fetchJSON("http://ip-api.com/json/");
    const { lat, lon, city, regionName, country } = location;
    Max.outlet({ lat, lon, city, region: regionName, country });
  } catch (err) {
    Max.post("Location error: " + err);
    Max.outlet({ error: err.toString() });
  }
}

Max.addHandler("bang", getLocationFromIP);
