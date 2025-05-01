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
		"rect" : [ 34.0, 99.0, 1402.0, 777.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 690.0, 60.0, 47.0, 20.0 ],
					"presentation_linecount" : 2,
					"text" : "density"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 60.0, 29.0, 20.0 ],
					"text" : "rate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 690.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"code" : "History env(0);\nHistory trig(0);\nHistory y1(0);\nHistory y2(0);\nHistory x1(0);\nHistory x2(0);\n\nParam decaytime(0.01);\nParam cutoffbase(1000);\nParam cutoffrange(1000);\nParam resonance(0.5);\nParam noiseamt(1);\n\n// Input trigger (normalized x position from 0 to 1)\nx = in1; \n\n// Detect new trigger\ndiff = x - trig;\nis_trigger = abs(diff) > 0.0001;\ntrig = x;\n\n// Envelope\nenv = is_trigger ? 1 : env * exp(-1 / (samplerate * decaytime));\n\n// Randomized cutoff per trigger\nrandval = noise();\ncutoff = cutoffbase + randval * cutoffrange;\nw0 = (2 * PI * cutoff) / samplerate;\ncos_w0 = cos(w0);\nsin_w0 = sin(w0);\nalpha = sin_w0 * resonance;\n\n// Biquad Lowpass filter coefficients (Cookbook formula)\nb0 = (1 - cos_w0) / 2;\nb1 = 1 - cos_w0;\nb2 = (1 - cos_w0) / 2;\na0 = 1 + alpha;\na1 = -2 * cos_w0;\na2 = 1 - alpha;\n\n// Normalize\nb0 /= a0;\nb1 /= a0;\nb2 /= a0;\na1 /= a0;\na2 /= a0;\n\n// Generate burst of noise\nraw = noise() * noiseamt * env;\n\n// Apply biquad filter\ny = b0 * raw + b1 * x1 + b2 * x2 - a1 * y1 - a2 * y2;\nx2 = x1;\nx1 = raw;\ny2 = y1;\ny1 = y;\n\n// Stereo panning based on input x\npanL = sqrt(1 - x);\npanR = sqrt(x);\n\nout1 = y * panL;\nout2 = y * panR;\n",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "gen.codebox~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 510.0, 450.0, 340.0, 200.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 435.0, 60.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 435.0, 90.0, 56.0, 22.0 ],
					"text" : "metro 30"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 690.0, 90.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-3",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 510.0, 90.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-1",
					"maxclass" : "v8ui",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 510.0, 120.0, 366.0, 313.0 ],
					"textfile" : 					{
						"text" : "// Simple Rain Simulator with bottom-hit output\n\nmgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar drops = [];\nvar width = 0;\nvar height = 0;\nvar rainRate = 0.2;\nvar rainDensity = 5;\nvar grayVariation = 0.5;\n\nfunction bang() {\n    width = mgraphics.size[0];\n    height = mgraphics.size[1];\n\n    // Generate new drops\n    if (Math.random() < rainRate) {\n        for (var i = 0; i < rainDensity; i++) {\n            drops.push({\n                x: Math.random() * width,\n                y: 0,\n                speed: 2 + Math.random() * 3,\n                gray: 0.5 + (Math.random() - 0.5) * grayVariation\n            });\n        }\n    }\n\n    // Update drops and detect hits\n    for (var i = drops.length - 1; i >= 0; i--) {\n        drops[i].y += drops[i].speed;\n\n        if (drops[i].y >= height) {\n            outlet(0, drops[i].x / width); // Normalized x-coordinate\n            drops.splice(i, 1);    // Remove the drop\n        }\n    }\n\n    mgraphics.redraw();\n}\n\nfunction paint() {\n    // Clear\n    mgraphics.set_source_rgb(0, 0, 0);\n    mgraphics.rectangle(0, 0, width, height);\n    mgraphics.fill();\n\n    // Draw drops\n    for (var i = 0; i < drops.length; i++) {\n        var d = drops[i];\n        mgraphics.set_source_rgb(d.gray, d.gray, d.gray);\n        mgraphics.move_to(d.x, d.y);\n        mgraphics.line_to(d.x, d.y + 5);\n        mgraphics.stroke();\n    }\n}\n\n// Parameters via inlets\ninlets = 3;\noutlets = 1;\n\n// inlet 0 = rain rate\n// inlet 1 = rain density\n// inlet 2 = gray variation\nfunction msg_float(v) {\n    if (inlet === 0) rainRate = Math.max(0, Math.min(v, 1));\n    else if (inlet === 1) rainDensity = Math.max(1, Math.floor(v));\n    else if (inlet === 2) grayVariation = Math.max(0, Math.min(v, 1));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"midpoints" : [ 840.5, 670.0, 535.5, 670.0 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 519.5, 670.0, 519.5, 670.0 ],
					"source" : [ "obj-17", 0 ]
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
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-13",
		"dependency_cache" : [ 			{
				"name" : "v8ui_default.js",
				"bootpath" : "C74:/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
