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
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 615.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 570.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 720.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Macintosh HD:/Users/a1106632/Desktop/Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Kick/Lofi Sounds - Kick 1.wav",
								"filename" : "Lofi Sounds - Kick 1.wav",
								"filekind" : "audiofile",
								"id" : "u307003508",
								"loop" : 0,
								"content_state" : 								{

								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-19",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 645.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"saved_attribute_attributes" : 					{
						"candicane2" : 						{
							"expression" : ""
						}
,
						"candicane3" : 						{
							"expression" : ""
						}
,
						"candicane4" : 						{
							"expression" : ""
						}
,
						"candicane5" : 						{
							"expression" : ""
						}
,
						"candicane6" : 						{
							"expression" : ""
						}
,
						"candicane7" : 						{
							"expression" : ""
						}
,
						"candicane8" : 						{
							"expression" : ""
						}

					}
,
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 90.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 540.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 30.0, 495.0, 48.0, 22.0 ],
					"text" : "change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, -180.0, 379.0, 154.0 ],
					"text" : "Hi chat can you create the following in v8ui in max 9? something that starts of as an octagon shape with nodes between each line segment we should be able to move each node and the octagon will redraw. we want each node to represent a note in a sequence. the object should accept a float from 0 - 8 that indicates where along the line shape our sequence is. the travel time between nodes should be determined by the length of each line segment. there should be a visual indication relating to where along the sequence we are. we should output the current node number along which we travelling as well as the co-ordinate of the current node number. we also want to be able to change the number of nodes from 3 to 16. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 60.0, 30.0, 22.0 ],
					"text" : "*~ 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 90.0, 81.0, 22.0 ],
					"text" : "snapshot~ 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 15.0, 72.0, 22.0 ],
					"text" : "phasor~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-32",
					"maxclass" : "v8ui",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 135.0, 330.0, 330.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.autofill = 0;\nmgraphics.relative_coords = 0;\n\noutlets = 2;\ninlets = 2;\n\nvar points = [];\nvar dragging = -1;\nvar travel = 0;\nvar seg_lengths = [];\nvar seg_fracs = [];\nvar nodeCount = 8;\n\nfunction clamp(val, min, max) {\n    return Math.max(min, Math.min(max, val));\n}\n\nfunction init_shape(n) {\n    nodeCount = clamp(n, 4, 16);\n    points = [];\n\n    var view = mgraphics.size;\n    var w = view[0];\n    var h = view[1];\n    var cx = w / 2;\n    var cy = h / 2;\n    var r = Math.min(w, h) * 0.4;\n\n    for (var i = 0; i < nodeCount; i++) {\n        var angle = (Math.PI * 2 * i / nodeCount) - Math.PI / 2;\n        points.push([\n            cx + Math.cos(angle) * r,\n            cy + Math.sin(angle) * r\n        ]);\n    }\n\n    compute_lengths();\n    mgraphics.redraw();\n}\ninit_shape(nodeCount);\n\nfunction compute_lengths() {\n    seg_lengths = [];\n    seg_fracs = [];\n    var total = 0;\n\n    for (var i = 0; i < nodeCount; i++) {\n        var a = points[i];\n        var b = points[(i + 1) % nodeCount];\n        var dx = b[0] - a[0];\n        var dy = b[1] - a[1];\n        var len = Math.sqrt(dx * dx + dy * dy);\n        seg_lengths.push(len);\n        total += len;\n    }\n\n    for (var i = 0; i < nodeCount; i++) {\n        seg_fracs[i] = seg_lengths[i] / total;\n    }\n}\n\nfunction phase_to_segment(t) {\n    var acc = 0;\n    for (var i = 0; i < nodeCount; i++) {\n        var next = acc + seg_fracs[i];\n        if (t >= acc && t <= next) {\n            var local = (t - acc) / seg_fracs[i];\n            return [i, local];\n        }\n        acc = next;\n    }\n    return [nodeCount - 1, 1];\n}\n\nfunction paint() {\n    var view = mgraphics.size;\n    var w = view[0];\n    var h = view[1];\n\n    with (mgraphics) {\n        // background\n        set_source_rgba(0.1, 0.1, 0.1, 1);\n        rectangle(0, 0, w, h);\n        fill();\n\n        // shape path\n        set_line_width(2);\n        set_source_rgba(1, 1, 1, 1);\n        move_to(points[0][0], points[0][1]);\n        for (var i = 1; i < nodeCount; i++) {\n            line_to(points[i][0], points[i][1]);\n        }\n        close_path();\n        stroke();\n\n        // draw nodes\n        for (var i = 0; i < nodeCount; i++) {\n            ellipse(points[i][0] - 5, points[i][1] - 5, 10, 10);\n            fill();\n        }\n\n        // travel marker\n        var phase = clamp(travel / nodeCount, 0, 1);\n        var [seg, frac] = phase_to_segment(phase);\n        var a = points[seg];\n        var b = points[(seg + 1) % nodeCount];\n        var x = a[0] + (b[0] - a[0]) * frac;\n        var y = a[1] + (b[1] - a[1]) * frac;\n\n        set_source_rgba(1, 0, 0, 1);\n        ellipse(x - 6, y - 6, 12, 12);\n        fill();\n    }\n}\n\nfunction msg_float(v) {\n    if (inlet === 0) {\n        travel = v;\n        var phase = clamp(travel / nodeCount, 0, 1);\n        var [seg, frac] = phase_to_segment(phase);\n        var a = points[seg];\n        outlet(0, seg);\n        outlet(1, [a[0], a[1]]);\n        mgraphics.redraw();\n    }\n}\n\nfunction msg_int(v) {\n    if (inlet === 1) {\n        init_shape(v);\n    }\n}\n\nfunction ondrag(x, y, button) {\n    if (button) {\n        if (dragging === -1) {\n            for (var i = 0; i < points.length; i++) {\n                var dx = x - points[i][0];\n                var dy = y - points[i][1];\n                if (dx * dx + dy * dy < 100) {\n                    dragging = i;\n                    break;\n                }\n            }\n        }\n        if (dragging !== -1) {\n            points[dragging][0] = x;\n            points[dragging][1] = y;\n            compute_lengths();\n            mgraphics.redraw();\n        }\n    } else {\n        dragging = -1;\n    }\n}\n",
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
					"destination" : [ "obj-32", 1 ],
					"midpoints" : [ 309.5, 123.5, 350.5, 123.5 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"midpoints" : [ 309.5, 122.0, 180.0, 122.0, 180.0, 50.0, 50.5, 50.0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"midpoints" : [ 72.25, 697.5, 55.5, 697.5 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 39.5, 697.5, 39.5, 697.5 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 39.5, 48.5, 39.5, 48.5 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"originid" : "pat-4",
		"dependency_cache" : [ 			{
				"name" : "Lofi Sounds - Kick 1.wav",
				"bootpath" : "~/Desktop/Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Kick",
				"patcherrelativepath" : "./Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Kick",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "v8ui_default.js",
				"bootpath" : "C74:/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
