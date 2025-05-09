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
		"rect" : [ 34.0, 99.0, 1152.0, 777.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 150.0, 70.0, 20.0 ],
					"text" : "noise amps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 150.0, 71.0, 20.0 ],
					"text" : "chord amps"
				}

			}
, 			{
				"box" : 				{
					"attr" : "mix",
					"id" : "obj-72",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 480.0, 405.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 660.0, 555.0, 104.0, 22.0 ],
					"text" : "abl.dsp.shimmer~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 660.0, 375.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.gain~[1]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 750.0, 480.0, 74.0, 22.0 ],
					"text" : "mc.unpack~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 750.0, 450.0, 139.0, 22.0 ],
					"text" : "mc.stereo~ @chans 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.0, 360.0, 101.0, 22.0 ],
					"text" : "prepend setvalue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 765.0, 300.0, 32.0, 22.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.0, 330.0, 47.0, 22.0 ],
					"text" : "pack i f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 750.0, 270.0, 51.0, 22.0 ],
					"text" : "poly 6 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 990.0, 465.0, 29.5, 22.0 ],
					"text" : "500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 990.0, 435.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 900.0, 525.0, 112.0, 22.0 ],
					"text" : "mc.abs~ @chans 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 900.0, 555.0, 103.0, 22.0 ],
					"text" : "mc.scale~ 0 1 0 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "multichannelsignal", "", "" ],
					"patching_rect" : [ 900.0, 495.0, 111.0, 22.0 ],
					"text" : "mc.line~ @chans 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 750.0, 420.0, 97.0, 22.0 ],
					"text" : "mc.*~ @chans 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 900.0, 405.0, 119.0, 22.0 ],
					"text" : "prepend applyvalues"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 750.0, 390.0, 114.0, 22.0 ],
					"text" : "mc.saw~ @chans 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 180.0, 585.0, 192.0, 22.0 ],
					"text" : "mc.reson~ 3 1000 25 @chans 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 180.0, 555.0, 134.0, 22.0 ],
					"text" : "mc.noise~ @chans 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "kslider",
					"mode" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 750.0, 180.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 570.0, 120.0, 113.0, 22.0 ],
					"text" : "slidercolor $1 $2 $3"
				}

			}
, 			{
				"box" : 				{
					"ghostbar" : 50,
					"id" : "obj-14",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 180.0, 135.0, 180.0 ],
					"signed" : 1,
					"size" : 6,
					"slidercolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 45.0, 41.0, 20.0 ],
					"text" : "nodes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 75.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 120.0, 74.0, 22.0 ],
					"text" : "setnodes $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 45.0, 63.0, 20.0 ],
					"text" : "simulation"
				}

			}
, 			{
				"box" : 				{
					"attr" : "mix",
					"id" : "obj-75",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 375.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 390.0, 555.0, 87.0, 22.0 ],
					"text" : "abl.dsp.prism~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 390.0, 375.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 45.0, 51.0, 20.0 ],
					"text" : "colour 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 315.0, 45.0, 51.0, 20.0 ],
					"text" : "colour 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 180.0, 375.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.0, 45.0, 41.0, 20.0 ],
					"text" : "decay"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-65",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 375.0, 180.0, 180.0, 180.0 ],
					"textfile" : 					{
						"text" : "// @name heatmap_ui\nmgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nconst cols = 16;\nconst rows = 8;\nconst cellCount = cols * rows;\n\nlet amplitudes = new Array(cellCount).fill(0);\n\nlet color1 = [0.0, 0.0, 0.2];\nlet color2 = [1.0, 0.6, 0.0];\n\nfunction paint() {\n  const width = box.rect[2] - box.rect[0];\n  const height = box.rect[3] - box.rect[1];\n  const cellW = width / cols;\n  const cellH = height / rows;\n\n  let index = 0;\n  for (let y = 0; y < rows; y++) {\n    for (let x = 0; x < cols; x++) {\n      const v = amplitudes[index];\n      const t = (v * 0.5) + 0.5;\n\n      const r = lerp(color1[0], color2[0], t);\n      const g = lerp(color1[1], color2[1], t);\n      const b = lerp(color1[2], color2[2], t);\n\n      mgraphics.set_source_rgba(r, g, b, 0.9 * Math.abs(v));\n      mgraphics.rectangle(x * cellW, y * cellH, cellW, cellH);\n      mgraphics.fill();\n\n      index++;\n    }\n  }\n}\n\nfunction list() {\n  const args = arrayfromargs(arguments);\n  if (args.length === cellCount) {\n    amplitudes = args.map(v => Math.max(-1, Math.min(1, parseFloat(v))));\n    mgraphics.redraw();\n  }\n}\n\nfunction anything() {\n  const args = arrayfromargs(messagename, arguments);\n  const cmd = args[0];\n\n  if (cmd === \"setcolor1\" && args.length === 4) {\n    color1 = args.slice(1).map(clamp01);\n    mgraphics.redraw();\n  } else if (cmd === \"setcolor2\" && args.length === 4) {\n    color2 = args.slice(1).map(clamp01);\n    mgraphics.redraw();\n  } else {\n    post(\"unknown command:\", args, \"\\n\");\n  }\n}\n\n\nfunction lerp(a, b, t) {\n  return a + (b - a) * t;\n}\n\nfunction clamp01(v) {\n  return Math.max(0, Math.min(1, parseFloat(v)));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}
,
					"varname" : "v8ui_AB"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 180.0, 495.0, 121.0, 22.0 ],
					"text" : "mc.sig~ @chans 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 465.0, 119.0, 22.0 ],
					"text" : "prepend applyvalues"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 180.0, 435.0, 81.0, 22.0 ],
					"text" : "list.group 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 180.0, 405.0, 57.0, 22.0 ],
					"text" : "uzi 128 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 180.0, 525.0, 129.0, 22.0 ],
					"text" : "mc.mtof~ @chans 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 45.0, 435.0, 43.0, 22.0 ],
					"text" : "list.rev"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 45.0, 585.0, 125.0, 22.0 ],
					"text" : "mc.abs~ @chans 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 525.0, 29.5, 22.0 ],
					"text" : "100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 45.0, 615.0, 123.0, 22.0 ],
					"text" : "mc.scale~ 0 1 0 1 1.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 105.0, 495.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "multichannelsignal", "", "" ],
					"patching_rect" : [ 45.0, 555.0, 124.0, 22.0 ],
					"text" : "mc.line~ @chans 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 585.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 180.0, 675.0, 74.0, 22.0 ],
					"text" : "mc.unpack~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 180.0, 645.0, 139.0, 22.0 ],
					"text" : "mc.stereo~ @chans 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 465.0, 119.0, 22.0 ],
					"text" : "prepend applyvalues"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 180.0, 615.0, 110.0, 22.0 ],
					"text" : "mc.*~ @chans 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 120.0, 107.0, 22.0 ],
					"text" : "setcolor2 $1 $2 $3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "swatch",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 75.0, 128.0, 32.0 ],
					"saturation" : 1.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 315.0, 120.0, 107.0, 22.0 ],
					"text" : "setcolor1 $1 $2 $3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "swatch",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 315.0, 75.0, 128.0, 32.0 ],
					"saturation" : 1.0
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
					"patching_rect" : [ 255.0, 75.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 75.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 180.0, 120.0, 56.0, 22.0 ],
					"text" : "metro 20"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-1",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 180.0, 180.0, 180.0 ],
					"textfile" : 					{
						"text" : "// @name ripple_node_sampler\nmgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nconst N = 128;\nconst outputCols = 16;\nconst outputRows = 8;\nconst outputCount = outputCols * outputRows;\n\nlet outputGrid = new Float32Array(outputCount);\nlet prev = new Float32Array(N * N);\nlet curr = new Float32Array(N * N);\nlet next = new Float32Array(N * N);\n\nlet decay = 0.99;\nlet opacity = 0.9;\nlet color_boost = 2.0;\nlet color1 = [0.0, 0.0, 0.2];\nlet color2 = [1.0, 0.6, 0.0];\n\nlet nodeCount = 6;\nlet nodes = [];\nlet draggingIndex = -1;\n\nfunction resetNodes() {\n  nodes = [];\n  const cx = N / 2;\n  const cy = N / 2;\n  const r = N / 3;\n  for (let i = 0; i < nodeCount; i++) {\n    const angle = (i / nodeCount) * Math.PI * 2;\n    const x = cx + r * Math.cos(angle);\n    const y = cy + r * Math.sin(angle);\n    nodes.push({ x, y });\n  }\n}\n\nfunction bang() {\n  simulate();\n  downsampleOutput();\n  normalizeOutputGrid();\n  outlet(0, Array.from(outputGrid));\n  outlet(1, nodes.map(n => sampleAt(n.x, n.y)));\n  mgraphics.redraw();\n}\n\nfunction simulate() {\n  for (let y = 1; y < N - 1; y++) {\n    for (let x = 1; x < N - 1; x++) {\n      const i = y * N + x;\n      const sum = (\n        curr[(y - 1) * N + x] +\n        curr[(y + 1) * N + x] +\n        curr[y * N + (x - 1)] +\n        curr[y * N + (x + 1)]\n      ) / 2 - prev[i];\n      next[i] = sum * decay;\n    }\n  }\n  const temp = prev;\n  prev = curr;\n  curr = next;\n  next = temp;\n}\n\nfunction downsampleOutput() {\n  const blockW = Math.floor(N / outputCols);\n  const blockH = Math.floor(N / outputRows);\n  let index = 0;\n  for (let gy = 0; gy < outputRows; gy++) {\n    for (let gx = 0; gx < outputCols; gx++) {\n      let sum = 0, count = 0;\n      const startX = gx * blockW;\n      const startY = gy * blockH;\n      for (let y = startY; y < startY + blockH; y++) {\n        for (let x = startX; x < startX + blockW; x++) {\n          sum += curr[y * N + x];\n          count++;\n        }\n      }\n      outputGrid[index++] = sum / count;\n    }\n  }\n}\n\nfunction normalizeOutputGrid() {\n  let max = 0;\n  for (let v of outputGrid) max = Math.max(max, Math.abs(v));\n  const safeMax = Math.max(max, 0.01);\n  const invMax = 1 / safeMax;\n  for (let i = 0; i < outputGrid.length; i++) {\n    let norm = outputGrid[i] * invMax;\n    norm = Math.sign(norm) * Math.pow(Math.abs(norm), 1.5);\n    outputGrid[i] = norm;\n  }\n}\n\nfunction sampleAt(x, y) {\n  const fx = Math.max(0, Math.min(N - 2, x));\n  const fy = Math.max(0, Math.min(N - 2, y));\n  const ix = Math.floor(fx);\n  const iy = Math.floor(fy);\n  const dx = fx - ix;\n  const dy = fy - iy;\n  const i00 = curr[iy * N + ix];\n  const i01 = curr[(iy + 1) * N + ix];\n  const i10 = curr[iy * N + (ix + 1)];\n  const i11 = curr[(iy + 1) * N + (ix + 1)];\n  const top = i00 * (1 - dx) + i10 * dx;\n  const bot = i01 * (1 - dx) + i11 * dx;\n  return top * (1 - dy) + bot * dy;\n}\n\nfunction inject(x, y, amount) {\n  const radius = 6;\n  for (let dy = -radius; dy <= radius; dy++) {\n    for (let dx = -radius; dx <= radius; dx++) {\n      const xx = Math.floor(x + dx);\n      const yy = Math.floor(y + dy);\n      if (xx < 1 || xx >= N - 1 || yy < 1 || yy >= N - 1) continue;\n      const distSq = dx * dx + dy * dy;\n      if (distSq <= radius * radius) {\n        const i = yy * N + xx;\n        const falloff = Math.exp(-distSq * 0.1);\n        curr[i] += amount * falloff;\n      }\n    }\n  }\n}\n\nfunction paint() {\n  const w = box.rect[2] - box.rect[0];\n  const h = box.rect[3] - box.rect[1];\n  const cellSize = Math.min(w, h) / N;\n  for (let y = 0; y < N; y++) {\n    for (let x = 0; x < N; x++) {\n      const val = curr[y * N + x];\n      if (Math.abs(val) > 0.001) {\n        const n = Math.max(-1, Math.min(1, val * color_boost));\n        const t = (n * 0.5) + 0.5;\n        const r = lerp(color1[0], color2[0], t);\n        const g = lerp(color1[1], color2[1], t);\n        const b = lerp(color1[2], color2[2], t);\n        mgraphics.set_source_rgba(r, g, b, opacity * Math.abs(n));\n        mgraphics.rectangle(x * cellSize, y * cellSize, cellSize, cellSize);\n        mgraphics.fill();\n      }\n    }\n  }\n\n  mgraphics.select_font_face(\"Ableton Sans Bold\");\n  mgraphics.set_font_size(9);\n  \n\n  for (let i = 0; i < nodes.length; i++) {\n    const n = nodes[i];\n    const x = n.x * cellSize;\n    const y = n.y * cellSize;\n    mgraphics.set_source_rgba(1, 1, 1, 0.9);\n    mgraphics.arc(x, y, 6, 0, Math.PI * 2);\n    mgraphics.fill();\n    const label = i.toString();\n    const tw = mgraphics.text_measure(label)[0];\n    const th = mgraphics.text_measure(label)[1];\n    mgraphics.set_source_rgba(0, 0, 0, 0.9);\n    mgraphics.move_to(x - tw / 2, y + th / 2 - 2);\n    mgraphics.show_text(label);\n  }\n}\n\nfunction setnodes(n) {\n  nodeCount = Math.max(1, Math.floor(n));\n  resetNodes();\n  mgraphics.redraw();\n}\n\nfunction onclick(x, y, button, shift, caps, alt, ctrl) {\n  const w = box.rect[2] - box.rect[0];\n  const h = box.rect[3] - box.rect[1];\n  const cellSize = Math.min(w, h) / N;\n  const mx = x / cellSize;\n  const my = y / cellSize;\n  if (alt) {\n    for (let i = 0; i < nodes.length; i++) {\n      const dx = nodes[i].x - mx;\n      const dy = nodes[i].y - my;\n      if (dx * dx + dy * dy < 4) {\n        draggingIndex = i;\n        return;\n      }\n    }\n  } else {\n    inject(mx, my, 1.0);\n  }\n}\n\nfunction mousedrag(x, y, button, shift, caps, alt, ctrl) {\n  const w = box.rect[2] - box.rect[0];\n  const h = box.rect[3] - box.rect[1];\n  const cellSize = Math.min(w, h) / N;\n  const mx = x / cellSize;\n  const my = y / cellSize;\n  if (alt && draggingIndex !== -1) {\n    nodes[draggingIndex].x = mx;\n    nodes[draggingIndex].y = my;\n    mgraphics.redraw();\n  } else if (!alt) {\n    inject(mx, my, 0.5);\n  }\n}\n\nfunction anything() {\n  const args = arrayfromargs(messagename, arguments);\n  const cmd = args[0];\n\n  if (cmd === \"setcolor1\" && args.length === 4) {\n    color1 = args.slice(1).map(clamp01);\n    mgraphics.redraw();\n  } else if (cmd === \"setcolor2\" && args.length === 4) {\n    color2 = args.slice(1).map(clamp01);\n    mgraphics.redraw();\n  }\n}\n\nfunction clamp01(v) {\n  return Math.max(0, Math.min(1, parseFloat(v)));\n}\n\n\nfunction mouseup() {\n  draggingIndex = -1;\n}\n\nfunction lerp(a, b, t) {\n  return a + (b - a) * t;\n}\n\nresetNodes();\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}
,
					"varname" : "v8ui_AA"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 350.5, 363.0, 562.69140625, 363.0, 562.69140625, 165.0, 579.5, 165.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 189.5, 363.5625, 54.5, 363.5625 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 189.5, 370.0, 366.671875, 370.0, 366.671875, 170.0, 384.5, 170.0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 324.5, 113.5, 579.5, 113.5 ],
					"order" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 579.5, 372.0, 735.0, 372.0, 735.0, 387.0, 909.5, 387.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 324.5, 161.0, 189.5, 161.0 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 324.5, 161.0, 384.5, 161.0 ],
					"order" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 189.5, 144.0, 189.5, 144.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 459.5, 161.0, 189.5, 161.0 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 459.5, 161.0, 384.5, 161.0 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-22", 0 ]
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
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"order" : 1,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 54.5, 489.0, 114.5, 489.0 ],
					"order" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"order" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 1 ],
					"midpoints" : [ 244.5, 699.0, 375.0, 699.0, 375.0, 372.0, 428.5, 372.0 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 189.5, 708.0, 375.0, 708.0, 375.0, 372.0, 399.5, 372.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"midpoints" : [ 909.5, 579.0, 885.0, 579.0, 885.0, 489.0, 891.0, 489.0, 891.0, 438.0, 858.0, 438.0, 858.0, 417.0, 837.5, 417.0 ],
					"source" : [ "obj-37", 0 ]
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
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 999.5, 462.0, 999.5, 462.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 114.5, 522.0, 114.5, 522.0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"midpoints" : [ 54.5, 648.0, 177.0, 648.0, 177.0, 612.0, 280.5, 612.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"midpoints" : [ 814.5, 513.0, 720.0, 513.0, 720.0, 372.0, 698.5, 372.0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 759.5, 504.0, 720.0, 504.0, 720.0, 372.0, 669.5, 372.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"midpoints" : [ 676.75, 540.0, 683.666666666666629, 540.0 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 669.5, 513.0, 669.5, 513.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 2 ],
					"midpoints" : [ 189.5, 549.0, 323.37109375, 549.0, 323.37109375, 588.0, 304.833333333333314, 588.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-59", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 264.5, 150.3828125, 189.5, 150.3828125 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"midpoints" : [ 754.5, 588.0, 426.0, 588.0, 426.0, 582.0, 415.5, 582.0 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 669.5, 588.0, 426.0, 588.0, 426.0, 582.0, 399.5, 582.0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 489.5, 528.5, 669.5, 528.5 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"midpoints" : [ 406.75, 533.0, 422.166666666666686, 533.0 ],
					"source" : [ "obj-73", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 399.5, 533.0, 399.5, 533.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"midpoints" : [ 467.5, 579.0, 415.5, 579.0 ],
					"source" : [ "obj-74", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 399.5, 579.0, 399.5, 579.0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 459.5, 536.0, 399.5, 536.0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 99.5, 161.0, 189.5, 161.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"originid" : "pat-4",
		"parameters" : 		{
			"obj-52" : [ "live.gain~[1]", "live.gain~[1]", 0 ],
			"obj-73" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
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
