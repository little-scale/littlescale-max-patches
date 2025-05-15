{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 99.0, 1032.0, 778.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 779.0, 795.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 825.0, 839.0, 45.0, 22.0 ],
					"text" : "get lon"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 779.0, 899.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 779.0, 839.0, 41.0, 22.0 ],
					"text" : "get lat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 779.0, 869.0, 61.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict gps"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1019.0, 899.0, 317.0, 33.0 ],
					"text" : "Marine Data via Open-Meteo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 869.0, 899.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 705.0, 1275.0, 420.0, 195.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 705.0, 1245.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict marine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 705.0, 899.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"code" : "/*\r\nTake GPS as lon and lat, output Open-Meteo current model data for marine\nSend the message:\n    set lat 37.7749\n    set lon -122.4194\nThen send:\n    bang\r\n\r\nOutputs to two dicts routed via route weather airquality\r\n\r\n*/\r\n\r\nconst Max = require(\"max-api\");\nconst https = require(\"https\");\n\nlet lat = null;\nlet lon = null;\n\nfunction fetchJSON(url) {\n  return new Promise((resolve, reject) => {\n    https.get(url, (res) => {\n      let data = \"\";\n      res.on(\"data\", chunk => data += chunk);\n      res.on(\"end\", () => {\n        try {\n          const parsed = JSON.parse(data);\n          resolve(parsed);\n        } catch (e) {\n          reject(\"JSON parse error: \" + e.message);\n        }\n      });\n    }).on(\"error\", (err) => {\n      reject(\"Request error: \" + err.message);\n    });\n  });\n}\n\nMax.addHandler(\"set\", (key, value) => {\n  if (key === \"lat\") lat = parseFloat(value);\n  if (key === \"lon\") lon = parseFloat(value);\n});\n\nMax.addHandler(\"bang\", async () => {\n  if (lat === null || lon === null) {\n    Max.post(\"Please set both lat and lon before sending bang\");\n    return;\n  }\n\n  const marineURL = `https://marine-api.open-meteo.com/v1/marine?latitude=${lat}&longitude=${lon}&hourly=wave_height,swell_wave_height,swell_wave_period,sea_surface_temperature&timezone=auto`;\n\n  try {\n    const data = await fetchJSON(marineURL);\n    const now = new Date();\n    const nowHour = now.toISOString().slice(0, 13) + \":00\";\n\n    const index = data.hourly?.time?.indexOf(nowHour);\n\n    if (!data.hourly || index === -1) {\n      Max.post(\"Warning: Location may be on land or no marine data available for this time.\");\n      Max.outlet(\"ocean\", { warning: \"No marine data available\" });\n      return;\n    }\n\n    function check(value, label) {\n      if (value == null || value === 0) {\n        Max.post(`Warning: ${label} is missing or zero.`);\n        return null;\n      }\n      return value;\n    }\n\n    const output = {\n      coords: { lat, lon },\n      ocean: {\n        wave_height_m: check(data.hourly.wave_height?.[index], \"wave_height\"),\n        swell_wave_height_m: check(data.hourly.swell_wave_height?.[index], \"swell_wave_height\"),\n        swell_wave_period_s: check(data.hourly.swell_wave_period?.[index], \"swell_wave_period\"),\n        sea_surface_temp_C: check(data.hourly.sea_surface_temperature?.[index], \"sea_surface_temperature\")\n      }\n    };\n\n    Max.outlet(output);\n  } catch (err) {\n    Max.post(\"Marine data fetch error: \" + err);\n    Max.outlet({ error: err.toString() });\n  }\n});\n",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "node.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 705.0, 945.0, 630.0, 285.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"watch" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1741.0, 135.0, 276.0, 33.0 ],
					"text" : "Weather via Open-Meteo"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 405.0, 899.0, 255.0, 33.0 ],
					"text" : "Earthquakes via USGS"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1051.0, 135.0, 292.0, 33.0 ],
					"text" : "Weather via OpenWeather"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 315.0, 135.0, 350.0, 33.0 ],
					"text" : "GPS from IP Address via IP-API"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1725.0, 541.0, 285.0, 240.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 1725.0, 511.0, 143.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict openmeteo-airquality"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1381.0, 481.0, 133.0, 22.0 ],
					"text" : "route weather airquality"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1455.0, 31.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1501.0, 75.0, 45.0, 22.0 ],
					"text" : "get lon"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1455.0, 135.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1455.0, 75.0, 41.0, 22.0 ],
					"text" : "get lat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 1455.0, 105.0, 61.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict gps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1545.0, 135.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1381.0, 541.0, 285.0, 240.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 1381.0, 511.0, 137.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict openmeteo-weather"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1381.0, 135.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"code" : "/*\r\nTake GPS as lon and lat, output Open-Meteo current model data\nSend the message:\n    set lat 37.7749\n    set lon -122.4194\nThen send:\n    bang\r\n\r\nOutputs to two dicts routed via route weather airquality\r\n\r\n*/\r\n\r\nconst Max = require(\"max-api\");\nconst https = require(\"https\");\n\nlet lat = null;\nlet lon = null;\n\nfunction fetchJSON(url) {\n  return new Promise((resolve, reject) => {\n    https.get(url, (res) => {\n      let data = \"\";\n      res.on(\"data\", chunk => data += chunk);\n      res.on(\"end\", () => {\n        try {\n          const parsed = JSON.parse(data);\n          resolve(parsed);\n        } catch (e) {\n          reject(\"JSON parse error: \" + e.message);\n        }\n      });\n    }).on(\"error\", (err) => {\n      reject(\"Request error: \" + err.message);\n    });\n  });\n}\n\nMax.addHandler(\"set\", (key, value) => {\n  if (key === \"lat\") lat = parseFloat(value);\n  if (key === \"lon\") lon = parseFloat(value);\n});\n\nMax.addHandler(\"bang\", async () => {\n  if (lat === null || lon === null) {\n    Max.post(\"Please set both lat and lon before sending bang\");\n    return;\n  }\n\n  const weatherURL = `https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current_weather=true&hourly=surface_pressure,uv_index&timezone=auto`;\n  const airURL = `https://air-quality-api.open-meteo.com/v1/air-quality?latitude=${lat}&longitude=${lon}&hourly=pm2_5,pm10,carbon_monoxide,nitrogen_dioxide,sulphur_dioxide,ozone&timezone=auto`;\n\n  try {\n    const [weatherData, airData] = await Promise.all([\n      fetchJSON(weatherURL),\n      fetchJSON(airURL)\n    ]);\n\n    if (!weatherData.current_weather || !weatherData.hourly || !Array.isArray(weatherData.hourly.time)) {\n      Max.post(\"Missing expected weather fields in weather response.\");\n      Max.outlet({ error: \"Missing expected weather data\" });\n      return;\n    }\n\n    const current = weatherData.current_weather;\n    const nowISO = current.time;\n    const nowHourISO = nowISO.slice(0, 13) + \":00\";\n\n    const weatherIndex = weatherData.hourly.time.indexOf(nowISO);\n    const airIndex = airData.hourly?.time?.indexOf(nowHourISO);\n\n    \n\n    function getWeatherValue(key) {\n      return weatherIndex >= 0 ? weatherData.hourly[key]?.[weatherIndex] : null;\n    }\n\n    function getAirValue(key) {\n      return airIndex >= 0 ? airData.hourly[key]?.[airIndex] : null;\n    }\n\n    const weatherOutput = {\n      coords: { lat, lon },\n      weather: {\n        temperature_C: current.temperature,\n        windspeed_mps: current.windspeed,\n        winddirection_deg: current.winddirection,\n        code: current.weathercode,\n        pressure_hPa: getWeatherValue(\"surface_pressure\"),\n        uv_index: getWeatherValue(\"uv_index\")\n      }\n    };\n\n    const airOutput = {\n      coords: { lat, lon },\n      air_quality: {\n        pm2_5: getAirValue(\"pm2_5\"),\n        pm10: getAirValue(\"pm10\"),\n        co: getAirValue(\"carbon_monoxide\"),\n        no2: getAirValue(\"nitrogen_dioxide\"),\n        so2: getAirValue(\"sulphur_dioxide\"),\n        o3: getAirValue(\"ozone\")\n      }\n    };\n\n    Max.outlet(\"weather\", weatherOutput);\n    Max.outlet(\"airquality\", airOutput);\n  } catch (err) {\n    Max.post(\"Weather fetch error: \" + err);\n    Max.outlet({ error: err.toString() });\n  }\n});\n",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "node.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1381.0, 181.0, 630.0, 285.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"watch" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 135.0, 899.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.0, 1275.0, 315.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 29.0, 1245.0, 97.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict earthquakes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 29.0, 899.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"code" : "/*\r\nGet the last hour of earthquake data from USGS\r\n\r\nAccepts a bang \r\nOutputs to a dict\r\n*/\r\n\r\nconst Max = require(\"max-api\");\nconst https = require(\"https\");\nconst http = require(\"http\");\n\nfunction fetchJSON(url) {\n  return new Promise((resolve, reject) => {\n    const client = url.startsWith(\"https\") ? https : http;\n\n    client.get(url, (res) => {\n      let data = \"\";\n      res.on(\"data\", chunk => data += chunk);\n      res.on(\"end\", () => {\n        try {\n          const parsed = JSON.parse(data);\n          resolve(parsed);\n        } catch (e) {\n          reject(\"JSON parse error: \" + e.message);\n        }\n      });\n    }).on(\"error\", (err) => {\n      reject(\"Request error: \" + err.message);\n    });\n  });\n}\n\nMax.addHandler(\"bang\", async () => {\n  try {\n    const quakeURL = \"https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson\";\n    const data = await fetchJSON(quakeURL);\n\n    const features = data.features.map(f => ({\n      magnitude: f.properties.mag,\n      place: f.properties.place,\n      time: f.properties.time,\n      title: f.properties.title,\n      coordinates: {\n        longitude: f.geometry.coordinates[0],\n        latitude: f.geometry.coordinates[1],\n        depth_km: f.geometry.coordinates[2]\n      }\n    }));\n\n    Max.outlet({ earthquakes: features });\n  } catch (err) {\n    Max.post(\"Earthquake API error: \" + err);\n    Max.outlet({ error: err.toString() });\n  }\n});",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "node.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 29.0, 945.0, 630.0, 285.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node_bin_path" : "",
						"npm_bin_path" : "",
						"watch" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 781.0, 31.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 825.0, 75.0, 45.0, 22.0 ],
					"text" : "get lon"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 781.0, 135.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 781.0, 75.0, 41.0, 22.0 ],
					"text" : "get lat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 781.0, 105.0, 61.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict gps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 705.0, 481.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict openweather"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 705.0, 511.0, 314.0, 269.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1021.0, 135.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 855.0, 135.0, 157.0, 22.0 ],
					"text" : "set apikey YOUR_API_KEY"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 705.0, 135.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 525.0, 100.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 31.0, 495.0, 61.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict gps"
				}

			}
, 			{
				"box" : 				{
					"code" : "/*\nTake GPS and API key as input, output OpenWeather current data\nSend the message:\n    set lat 37.7749\n    set lon -122.4194\n    set apikey YOUR_API_KEY\nThen send:\n    bang\r\n\r\nOutputs to a dict\n*/\r\n\r\nconst Max = require(\"max-api\");\n\nlet lat = null;\nlet lon = null;\nlet apiKey = null;\r\n\r\nconst https = require(\"https\");\nconst http = require(\"http\");\n\nfunction fetchJSON(url) {\n  return new Promise((resolve, reject) => {\n    const client = url.startsWith(\"https\") ? https : http;\n\n    client.get(url, (res) => {\n      let data = \"\";\n      res.on(\"data\", chunk => data += chunk);\n      res.on(\"end\", () => {\n        try {\n          const parsed = JSON.parse(data);\n          resolve(parsed);\n        } catch (e) {\n          reject(\"JSON parse error: \" + e.message);\n        }\n      });\n    }).on(\"error\", (err) => {\n      reject(\"Request error: \" + err.message);\n    });\n  });\n}\n\n\nMax.addHandler(\"set\", (key, value) => {\n  if (key === \"lat\") lat = parseFloat(value);\n  if (key === \"lon\") lon = parseFloat(value);\n  if (key === \"apikey\") apiKey = value;\n});\n\nasync function getWeather() {\n  if (!lat || !lon || !apiKey) {\n    Max.post(\"Missing lat, lon, or API key\");\n    return;\n  }\n\n  try {\n    const weatherURL = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${apiKey}&units=metric`;\n    const airURL = `https://api.openweathermap.org/data/2.5/air_pollution?lat=${lat}&lon=${lon}&appid=${apiKey}`;\n\n    const weatherData = await fetchJSON(weatherURL);\n    const airData = await fetchJSON(airURL);\n    const air = airData.list[0];\n\n    const output = {\n      location: weatherData.name,\n      coords: { lat, lon },\n      weather: {\n        temperature_C: weatherData.main.temp,\n        humidity_percent: weatherData.main.humidity,\n        pressure_hPa: weatherData.main.pressure,\n        wind_speed_mps: weatherData.wind.speed,\n        description: weatherData.weather[0]?.description || \"Unknown\"\n      },\n      air_quality: {\n        aqi: air.main.aqi,\n        components: air.components\n      }\n    };\n\n    Max.outlet(output);\n  } catch (err) {\n    Max.post(\"Weather error: \" + err);\n    Max.outlet({ error: err.toString() });\n  }\n}\n\nMax.addHandler(\"bang\", getWeather);",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "node.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 705.0, 181.0, 630.0, 285.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node_bin_path" : "",
						"npm_bin_path" : "",
						"watch" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 105.0, 135.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 31.0, 135.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"code" : "/* \r\nMatches IP address to GPS co-ordinates using ip-api.com\r\n\r\nAccepts a bang \r\nOutputs to a dict\r\n*/\r\nconst Max = require(\"max-api\");\nconst https = require(\"https\");\nconst http = require(\"http\");\n\nfunction fetchJSON(url) {\n  return new Promise((resolve, reject) => {\n    const client = url.startsWith(\"https\") ? https : http;\n\n    client.get(url, (res) => {\n      let data = \"\";\n      res.on(\"data\", chunk => data += chunk);\n      res.on(\"end\", () => {\n        try {\n          const parsed = JSON.parse(data);\n          resolve(parsed);\n        } catch (e) {\n          reject(\"JSON parse error: \" + e.message);\n        }\n      });\n    }).on(\"error\", (err) => {\n      reject(\"Request error: \" + err.message);\n    });\n  });\n}\n\nasync function getLocationFromIP() {\n  try {\n    const location = await fetchJSON(\"http://ip-api.com/json/\");\n    const { lat, lon, city, regionName, country } = location;\n    Max.outlet({ lat, lon, city, region: regionName, country });\n  } catch (err) {\n    Max.post(\"Location error: \" + err);\n    Max.outlet({ error: err.toString() });\n  }\n}\n\nMax.addHandler(\"bang\", getLocationFromIP);\n",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "node.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 31.0, 181.0, 630.0, 285.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node_bin_path" : "",
						"npm_bin_path" : "",
						"watch" : 0
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 714.5, 168.5, 714.5, 168.5 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 1447.5, 506.0, 1734.5, 506.0 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 864.5, 168.5, 714.5, 168.5 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 1030.5, 169.5, 714.5, 169.5 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 144.5, 933.5, 38.5, 933.5 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 790.5, 168.5, 714.5, 168.5 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 1,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"midpoints" : [ 878.5, 933.5, 714.5, 933.5 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"order" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 1,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 1554.5, 169.5, 1390.5, 169.5 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-4",
		"dependency_cache" : [ 			{
				"name" : "u011000757.js",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 9/Settings/temp64-Max",
				"patcherrelativepath" : "../Library/Application Support/Cycling '74/Max 9/Settings/temp64-Max",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "u132000734.js",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 9/Settings/temp64-Max",
				"patcherrelativepath" : "../Library/Application Support/Cycling '74/Max 9/Settings/temp64-Max",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "u270000760.js",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 9/Settings/temp64-Max",
				"patcherrelativepath" : "../Library/Application Support/Cycling '74/Max 9/Settings/temp64-Max",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "u298000743.js",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 9/Settings/temp64-Max",
				"patcherrelativepath" : "../Library/Application Support/Cycling '74/Max 9/Settings/temp64-Max",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "u412000748.js",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 9/Settings/temp64-Max",
				"patcherrelativepath" : "../Library/Application Support/Cycling '74/Max 9/Settings/temp64-Max",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
