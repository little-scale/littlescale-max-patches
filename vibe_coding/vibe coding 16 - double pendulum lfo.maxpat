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
		"rect" : [ 134.0, 171.0, 1000.0, 699.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-62",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 900.0, 120.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "effect",
					"id" : "obj-61",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 885.0, 180.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 840.0, 225.0, 124.0, 22.0 ],
					"text" : "abl.dsp.basicshapes~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1230.0, 300.0, 101.0, 22.0 ],
					"text" : "scale -1. 1. 0. 0.7"
				}

			}
, 			{
				"box" : 				{
					"attr" : "resonance",
					"id" : "obj-58",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1095.0, 375.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1005.0, 495.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-56",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1050.0, 180.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1005.0, 225.0, 96.0, 22.0 ],
					"text" : "abl.dsp.crackle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1065.0, 300.0, 114.0, 22.0 ],
					"text" : "scale -1. 1. 20 2000"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-53",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1065.0, 345.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1005.0, 420.0, 78.0, 22.0 ],
					"text" : "abl.dsp.dfm~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 810.0, 555.0, 43.0, 20.0 ],
					"text" : "Phase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 720.0, 555.0, 43.0, 20.0 ],
					"text" : "Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 690.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 555.0, 33.0, 20.0 ],
					"text" : "Amp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 600.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 555.0, 29.0, 20.0 ],
					"text" : "Pos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 555.0, 45.0, 20.0 ],
					"text" : "Angles"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 405.0, 525.0, 61.0, 22.0 ],
					"text" : "unpack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 405.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 315.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ 20.0, 30.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 225.0, 525.0, 61.0, 22.0 ],
					"text" : "unpack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 225.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ -2.5, 2.5 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 645.0, 90.0, 49.0, 20.0 ],
					"text" : "Gravity"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-26",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 645.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 825.0, 90.0, 49.0, 20.0 ],
					"text" : "Angle 2"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-24",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 825.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 735.0, 90.0, 49.0, 20.0 ],
					"text" : "Angle 1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-22",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 735.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 555.0, 90.0, 72.0, 20.0 ],
					"text" : "Bob 2 mass"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-20",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 555.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 90.0, 72.0, 20.0 ],
					"text" : "Bob 1 mass"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-18",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.0, 90.0, 81.0, 20.0 ],
					"text" : "Arm 2 Length"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-16",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 345.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 90.0, 81.0, 20.0 ],
					"text" : "Arm 1 Length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 120.0, 35.0, 22.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-10",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 165.0, 90.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 165.0, 120.0, 56.0, 22.0 ],
					"text" : "metro 20"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-5",
					"maxclass" : "v8ui",
					"numinlets" : 7,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 225.0, 180.0, 465.0, 330.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar angle1 = Math.PI / 2;\nvar angle2 = Math.PI / 2;\nvar angle1_v = 0;\nvar angle2_v = 0;\n\nvar len1 = 100;\nvar len2 = 100;\nvar m1 = 10;\nvar m2 = 10;\nvar g = 1;\n\nvar trace = [];\nvar max_trace_length = 1000;\n\nvar centerX = 0;\nvar centerY = 0;\nvar lastTime = Date.now();\n\nfunction bang() {\n    var now = Date.now();\n    var dt = (now - lastTime) / 1000;\n    lastTime = now;\n\n    simulate(dt * 10); // Speed factor here\n    refresh();\n}\n\nfunction simulate(dt) {\n    // Physics\n    var num1 = -g * (2 * m1 + m2) * Math.sin(angle1);\n    var num2 = -m2 * g * Math.sin(angle1 - 2 * angle2);\n    var num3 = -2 * Math.sin(angle1 - angle2) * m2;\n    var num4 = angle2_v * angle2_v * len2 + angle1_v * angle1_v * len1 * Math.cos(angle1 - angle2);\n    var den = len1 * (2 * m1 + m2 - m2 * Math.cos(2 * angle1 - 2 * angle2));\n    var angle1_a = (num1 + num2 + num3 * num4) / den;\n\n    num1 = 2 * Math.sin(angle1 - angle2);\n    num2 = (angle1_v * angle1_v * len1 * (m1 + m2));\n    num3 = g * (m1 + m2) * Math.cos(angle1);\n    num4 = angle2_v * angle2_v * len2 * m2 * Math.cos(angle1 - angle2);\n    den = len2 * (2 * m1 + m2 - m2 * Math.cos(2 * angle1 - 2 * angle2));\n    var angle2_a = (num1 * (num2 + num3 + num4)) / den;\n\n    angle1_v += angle1_a * dt;\n    angle2_v += angle2_a * dt;\n    angle1 += angle1_v * dt;\n    angle2 += angle2_v * dt;\n\n    // Coordinates\n    var x1 = centerX + len1 * Math.sin(angle1);\n    var y1 = centerY + len1 * Math.cos(angle1);\n    var x2 = x1 + len2 * Math.sin(angle2);\n    var y2 = y1 + len2 * Math.cos(angle2);\n\n    trace.push([x2, y2]);\n    if (trace.length > max_trace_length) trace.shift();\n\n    // LFO outputs\n    var norm = len1 + len2;\n    var lfo_x = (x2 - centerX) / norm;\n    var lfo_y = (y2 - centerY) / norm;\n    var lfo_amp = Math.sqrt((x2 - centerX) ** 2 + (y2 - centerY) ** 2) / norm;\n    var lfo_speed = Math.tanh(angle2_v / 5);\n    var phase = (Math.atan2(y2 - centerY, x2 - centerX) + Math.PI) / (2 * Math.PI);\n\n    // Send to outlets\n    outlet(0, angle1, angle2);\n    outlet(1, lfo_x, lfo_y);\n    outlet(2, lfo_amp);\n    outlet(3, lfo_speed);\n    outlet(4, phase);\n}\n\nfunction paint() {\n    var width = box.rect[2] - box.rect[0];\n    var height = box.rect[3] - box.rect[1];\n    centerX = width / 2;\n    centerY = height / 4;\n\n    var x1 = centerX + len1 * Math.sin(angle1);\n    var y1 = centerY + len1 * Math.cos(angle1);\n    var x2 = x1 + len2 * Math.sin(angle2);\n    var y2 = y1 + len2 * Math.cos(angle2);\n\n    with (mgraphics) {\n        if (trace.length > 1) {\n            set_source_rgba(0, 0.4, 1, 0.5);\n            move_to(trace[0][0], trace[0][1]);\n            for (var i = 1; i < trace.length; i++) {\n                line_to(trace[i][0], trace[i][1]);\n            }\n            stroke();\n        }\n\n        set_line_width(2);\n        set_source_rgba(0.8, 0.8, 0.8, 1);\n        move_to(centerX, centerY);\n        line_to(x1, y1);\n        stroke();\n\n        move_to(x1, y1);\n        line_to(x2, y2);\n        stroke();\n\n        ellipse(x1 - m1, y1 - m1, m1 * 2, m1 * 2);\n        fill();\n\n        ellipse(x2 - m2, y2 - m2, m2 * 2, m2 * 2);\n        fill();\n    }\n}\n\nfunction msg_float(v) {\n    switch (inlet) {\n        case 0: len1 = v; break;\n        case 1: len2 = v; break;\n        case 2: m1 = v; break;\n        case 3: m2 = v; break;\n        case 4: g = v; break;\n        case 5: angle1 = v; angle1_v = 0; break;\n        case 6: angle2 = v; angle2_v = 0; break;\n    }\n    refresh();\n}\n\nfunction reset() {\n    angle1 = Math.PI / 2;\n    angle2 = Math.PI / 2;\n    angle1_v = 0;\n    angle2_v = 0;\n    trace = [];\n    refresh();\n}\n\ninlets = 7;\noutlets = 5;\n",
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
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 249.5, 165.0, 234.5, 165.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 114.5, 165.0, 234.5, 165.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 354.5, 165.0, 308.833333333333314, 165.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"midpoints" : [ 459.5, 165.0, 383.166666666666629, 165.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"midpoints" : [ 564.5, 165.0, 457.5, 165.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 5 ],
					"midpoints" : [ 744.5, 165.0, 606.166666666666742, 165.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 6 ],
					"midpoints" : [ 834.5, 165.0, 680.5, 165.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 4 ],
					"midpoints" : [ 654.5, 165.0, 531.833333333333258, 165.0 ],
					"source" : [ "obj-26", 0 ]
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
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 276.5, 549.0, 324.5, 549.0 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 504.5, 747.0, 990.0, 747.0, 990.0, 285.0, 1239.5, 285.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 456.5, 558.0, 504.5, 558.0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 414.5, 747.0, 990.0, 747.0, 990.0, 297.0, 1074.5, 297.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"midpoints" : [ 609.5, 738.0, 585.0, 738.0, 585.0, 522.0, 825.0, 522.0, 825.0, 177.0, 894.5, 177.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 346.0, 522.0, 414.5, 522.0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 457.5, 522.0, 609.5, 522.0 ],
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 569.0, 540.0, 699.5, 540.0 ],
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 680.5, 540.0, 789.5, 540.0 ],
					"source" : [ "obj-5", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"midpoints" : [ 1014.5, 468.5, 1030.5, 468.5 ],
					"order" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 1014.5, 468.5, 1014.5, 468.5 ],
					"order" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 1074.5, 405.0, 1014.5, 405.0 ],
					"source" : [ "obj-53", 0 ]
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
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 1014.5, 249.0, 1014.5, 249.0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 1104.5, 399.0, 1014.5, 399.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 1239.5, 360.0, 1215.0, 360.0, 1215.0, 372.0, 1104.5, 372.0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 174.5, 165.0, 234.5, 165.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 849.5, 405.0, 1014.5, 405.0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"originid" : "pat-2",
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
