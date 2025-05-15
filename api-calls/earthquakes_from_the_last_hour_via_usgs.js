/*
Get the last hour of earthquake data from USGS

Accepts a bang 
Outputs to a dict
*/

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

Max.addHandler("bang", async () => {
  try {
    const quakeURL = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson";
    const data = await fetchJSON(quakeURL);

    const features = data.features.map(f => ({
      magnitude: f.properties.mag,
      place: f.properties.place,
      time: f.properties.time,
      title: f.properties.title,
      coordinates: {
        longitude: f.geometry.coordinates[0],
        latitude: f.geometry.coordinates[1],
        depth_km: f.geometry.coordinates[2]
      }
    }));

    Max.outlet({ earthquakes: features });
  } catch (err) {
    Max.post("Earthquake API error: " + err);
    Max.outlet({ error: err.toString() });
  }
});
