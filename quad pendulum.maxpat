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
		"rect" : [ 34.0, 99.0, 1402.0, 776.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4815.0, 0.0, 83.0, 22.0 ],
					"text" : "loadmess 156"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3615.0, 0.0, 77.0, 22.0 ],
					"text" : "loadmess 90"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2355.0, 0.0, 77.0, 22.0 ],
					"text" : "loadmess 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1110.0, 0.0, 77.0, 22.0 ],
					"text" : "loadmess 40"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1140.0, 510.0, 40.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"attr" : "size",
					"id" : "obj-192",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1245.0, 495.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1140.0, 630.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1140.0, 555.0, 87.0, 22.0 ],
					"text" : "abl.dsp.prism~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1140.0, 480.0, 81.0, 22.0 ],
					"text" : "receive~ out1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 102.25, 64.0, 41.0, 22.0 ],
					"text" : "sel 49"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 102.25, 34.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 102.25, 4.0, 50.5, 22.0 ],
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 105.0, 105.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 4710.0, 480.0, 40.0, 22.0 ],
					"text" : "*~ 0.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4815.0, 30.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3930.0, 180.0, 43.0, 22.0 ],
					"text" : "r reset"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-141",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4605.0, 120.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "effect",
					"id" : "obj-142",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4590.0, 180.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 4545.0, 225.0, 124.0, 22.0 ],
					"text" : "abl.dsp.basicshapes~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4935.0, 300.0, 101.0, 22.0 ],
					"text" : "scale -1. 1. 0. 0.7"
				}

			}
, 			{
				"box" : 				{
					"attr" : "resonance",
					"id" : "obj-145",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4800.0, 375.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4710.0, 540.0, 68.0, 22.0 ],
					"text" : "send~ out1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-147",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4755.0, 180.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 4710.0, 225.0, 96.0, 22.0 ],
					"text" : "abl.dsp.crackle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4770.0, 300.0, 114.0, 22.0 ],
					"text" : "scale -1. 1. 20 2000"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-150",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4770.0, 345.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 4710.0, 420.0, 78.0, 22.0 ],
					"text" : "abl.dsp.dfm~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4515.0, 555.0, 43.0, 20.0 ],
					"text" : "Phase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4485.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4425.0, 555.0, 43.0, 20.0 ],
					"text" : "Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4395.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4335.0, 555.0, 33.0, 20.0 ],
					"text" : "Amp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4305.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4125.0, 555.0, 29.0, 20.0 ],
					"text" : "Pos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3945.0, 555.0, 45.0, 20.0 ],
					"text" : "Angles"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4200.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 4110.0, 525.0, 61.0, 22.0 ],
					"text" : "unpack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4110.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4020.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ 20.0, 30.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 3930.0, 525.0, 61.0, 22.0 ],
					"text" : "unpack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3930.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ -2.5, 2.5 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4350.0, 90.0, 49.0, 20.0 ],
					"text" : "Gravity"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-167",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4350.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4530.0, 90.0, 49.0, 20.0 ],
					"text" : "Angle 2"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-169",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4530.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4440.0, 90.0, 49.0, 20.0 ],
					"text" : "Angle 1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-171",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4440.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4260.0, 90.0, 72.0, 20.0 ],
					"text" : "Bob 2 mass"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-173",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4260.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4155.0, 90.0, 72.0, 20.0 ],
					"text" : "Bob 1 mass"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-175",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4155.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4050.0, 90.0, 81.0, 20.0 ],
					"text" : "Arm 2 Length"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-177",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4050.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3945.0, 90.0, 81.0, 20.0 ],
					"text" : "Arm 1 Length"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-179",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3945.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-180",
					"maxclass" : "v8ui",
					"numinlets" : 7,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4035.0, 195.0, 465.0, 330.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 691.0, 405.0, 465.0, 330.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar angle1 = Math.PI / 2;\nvar angle2 = Math.PI / 2;\nvar angle1_v = 0;\nvar angle2_v = 0;\n\nvar len1 = 115;\nvar len2 = 115;\nvar m1 = 15;\nvar m2 = 12;\nvar g = 1;\n\nvar trace = [];\nvar max_trace_length = 1000;\n\nvar trace1 = [];\n\n\nvar centerX = 0;\nvar centerY = 0;\nvar lastTime = Date.now();\n\nfunction bang() {\n    var now = Date.now();\n    var dt = (now - lastTime) / 1000;\n    lastTime = now;\n\n    simulate(dt * 10); // Speed factor here\n    refresh();\n}\n\nfunction simulate(dt) {\n    // Physics\n    var num1 = -g * (2 * m1 + m2) * Math.sin(angle1);\n    var num2 = -m2 * g * Math.sin(angle1 - 2 * angle2);\n    var num3 = -2 * Math.sin(angle1 - angle2) * m2;\n    var num4 = angle2_v * angle2_v * len2 + angle1_v * angle1_v * len1 * Math.cos(angle1 - angle2);\n    var den = len1 * (2 * m1 + m2 - m2 * Math.cos(2 * angle1 - 2 * angle2));\n    var angle1_a = (num1 + num2 + num3 * num4) / den;\n\n    num1 = 2 * Math.sin(angle1 - angle2);\n    num2 = (angle1_v * angle1_v * len1 * (m1 + m2));\n    num3 = g * (m1 + m2) * Math.cos(angle1);\n    num4 = angle2_v * angle2_v * len2 * m2 * Math.cos(angle1 - angle2);\n    den = len2 * (2 * m1 + m2 - m2 * Math.cos(2 * angle1 - 2 * angle2));\n    var angle2_a = (num1 * (num2 + num3 + num4)) / den;\n\n    angle1_v += angle1_a * dt;\n    angle2_v += angle2_a * dt;\n    angle1 += angle1_v * dt;\n    angle2 += angle2_v * dt;\n\n    // Coordinates\n    var x1 = centerX + len1 * Math.sin(angle1);\n    var y1 = centerY + len1 * Math.cos(angle1);\n\ttrace1.push([x1, y1]);\n\tif (trace1.length > max_trace_length) trace1.shift();\n    var x2 = x1 + len2 * Math.sin(angle2);\n    var y2 = y1 + len2 * Math.cos(angle2);\n\n    trace.push([x2, y2]);\n    if (trace.length > max_trace_length) trace.shift();\n\n    // LFO outputs\n    var norm = len1 + len2;\n    var lfo_x = (x2 - centerX) / norm;\n    var lfo_y = (y2 - centerY) / norm;\n    var lfo_amp = Math.sqrt((x2 - centerX) ** 2 + (y2 - centerY) ** 2) / norm;\n    var lfo_speed = Math.tanh(angle2_v / 5);\n    var phase = (Math.atan2(y2 - centerY, x2 - centerX) + Math.PI) / (2 * Math.PI);\n\n    // Send to outlets\n    outlet(0, angle1, angle2);\n    outlet(1, lfo_x, lfo_y);\n    outlet(2, lfo_amp);\n    outlet(3, lfo_speed);\n    outlet(4, phase);\n}\n\nfunction paint() {\n    var width = box.rect[2] - box.rect[0];\n    var height = box.rect[3] - box.rect[1];\n    centerX = width / 2;\n    centerY = height / 4;\n\n    var x1 = centerX + len1 * Math.sin(angle1);\n    var y1 = centerY + len1 * Math.cos(angle1);\n    var x2 = x1 + len2 * Math.sin(angle2);\n    var y2 = y1 + len2 * Math.cos(angle2);\n\n    with (mgraphics) {\n\t\tif (trace1.length > 1) {\n    \tset_source_rgba(1, 0.2, 0.2, 0.5);\n    \tmove_to(trace1[0][0], trace1[0][1]);\n    \tfor (var i = 1; i < trace1.length; i++) {\n        \tline_to(trace1[i][0], trace1[i][1]);\n    \t\t}\n    \t\tstroke();\n\t\t}\n        if (trace.length > 1) {\n            set_source_rgba(0, 0.4, 1, 0.5);\n            move_to(trace[0][0], trace[0][1]);\n            for (var i = 1; i < trace.length; i++) {\n                line_to(trace[i][0], trace[i][1]);\n            }\n            stroke();\n        }\n\n        set_line_width(2);\n        set_source_rgba(0.8, 0.8, 0.8, 1);\n        move_to(centerX, centerY);\n        line_to(x1, y1);\n        stroke();\n\n        move_to(x1, y1);\n        line_to(x2, y2);\n        stroke();\n\n        ellipse(x1 - m1, y1 - m1, m1 * 2, m1 * 2);\n        fill();\n\n        ellipse(x2 - m2, y2 - m2, m2 * 2, m2 * 2);\n        fill();\n    }\n}\n\nfunction msg_float(v) {\n    switch (inlet) {\n        case 0: len1 = v; break;\n        case 1: len2 = v; break;\n        case 2: m1 = v; break;\n        case 3: m2 = v; break;\n        case 4: g = v; break;\n        case 5: angle1 = v; angle1_v = 0; break;\n        case 6: angle2 = v; angle2_v = 0; break;\n    }\n    refresh();\n}\n\nfunction reset() {\n    angle1 = Math.PI / 2;\n    angle2 = Math.PI / 2;\n    angle1_v = 0;\n    angle2_v = 0;\n    trace = [];\n\ttrace1 = [];\n    refresh();\n}\n\ninlets = 7;\noutlets = 5;\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3510.0, 480.0, 40.0, 22.0 ],
					"text" : "*~ 0.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3615.0, 30.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2730.0, 180.0, 43.0, 22.0 ],
					"text" : "r reset"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-97",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3405.0, 120.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "effect",
					"id" : "obj-98",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3390.0, 180.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3345.0, 225.0, 124.0, 22.0 ],
					"text" : "abl.dsp.basicshapes~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3735.0, 300.0, 101.0, 22.0 ],
					"text" : "scale -1. 1. 0. 0.7"
				}

			}
, 			{
				"box" : 				{
					"attr" : "resonance",
					"id" : "obj-101",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3600.0, 375.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3510.0, 540.0, 68.0, 22.0 ],
					"text" : "send~ out1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-103",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3555.0, 180.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3510.0, 225.0, 96.0, 22.0 ],
					"text" : "abl.dsp.crackle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3570.0, 300.0, 114.0, 22.0 ],
					"text" : "scale -1. 1. 20 2000"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-106",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3570.0, 345.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3510.0, 420.0, 78.0, 22.0 ],
					"text" : "abl.dsp.dfm~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3315.0, 555.0, 43.0, 20.0 ],
					"text" : "Phase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3285.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3225.0, 555.0, 43.0, 20.0 ],
					"text" : "Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3195.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3135.0, 555.0, 33.0, 20.0 ],
					"text" : "Amp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3105.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2925.0, 555.0, 29.0, 20.0 ],
					"text" : "Pos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2745.0, 555.0, 45.0, 20.0 ],
					"text" : "Angles"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3000.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 2910.0, 525.0, 61.0, 22.0 ],
					"text" : "unpack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2910.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2820.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ 20.0, 30.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 2730.0, 525.0, 61.0, 22.0 ],
					"text" : "unpack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2730.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ -2.5, 2.5 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3150.0, 90.0, 49.0, 20.0 ],
					"text" : "Gravity"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-123",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3150.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3330.0, 90.0, 49.0, 20.0 ],
					"text" : "Angle 2"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-125",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3330.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3240.0, 90.0, 49.0, 20.0 ],
					"text" : "Angle 1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-127",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3240.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3060.0, 90.0, 72.0, 20.0 ],
					"text" : "Bob 2 mass"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-129",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3060.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2955.0, 90.0, 72.0, 20.0 ],
					"text" : "Bob 1 mass"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-131",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2955.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2850.0, 90.0, 81.0, 20.0 ],
					"text" : "Arm 2 Length"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-133",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2850.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2745.0, 90.0, 81.0, 20.0 ],
					"text" : "Arm 1 Length"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-135",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2745.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-136",
					"maxclass" : "v8ui",
					"numinlets" : 7,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2835.0, 195.0, 465.0, 330.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 405.0, 465.0, 330.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar angle1 = Math.PI / 2;\nvar angle2 = Math.PI / 2;\nvar angle1_v = 0;\nvar angle2_v = 0;\n\nvar len1 = 90;\nvar len2 = 90;\nvar m1 = 9;\nvar m2 = 16;\nvar g = 1;\n\nvar trace = [];\nvar max_trace_length = 1000;\n\nvar trace1 = [];\n\n\nvar centerX = 0;\nvar centerY = 0;\nvar lastTime = Date.now();\n\nfunction bang() {\n    var now = Date.now();\n    var dt = (now - lastTime) / 1000;\n    lastTime = now;\n\n    simulate(dt * 10); // Speed factor here\n    refresh();\n}\n\nfunction simulate(dt) {\n    // Physics\n    var num1 = -g * (2 * m1 + m2) * Math.sin(angle1);\n    var num2 = -m2 * g * Math.sin(angle1 - 2 * angle2);\n    var num3 = -2 * Math.sin(angle1 - angle2) * m2;\n    var num4 = angle2_v * angle2_v * len2 + angle1_v * angle1_v * len1 * Math.cos(angle1 - angle2);\n    var den = len1 * (2 * m1 + m2 - m2 * Math.cos(2 * angle1 - 2 * angle2));\n    var angle1_a = (num1 + num2 + num3 * num4) / den;\n\n    num1 = 2 * Math.sin(angle1 - angle2);\n    num2 = (angle1_v * angle1_v * len1 * (m1 + m2));\n    num3 = g * (m1 + m2) * Math.cos(angle1);\n    num4 = angle2_v * angle2_v * len2 * m2 * Math.cos(angle1 - angle2);\n    den = len2 * (2 * m1 + m2 - m2 * Math.cos(2 * angle1 - 2 * angle2));\n    var angle2_a = (num1 * (num2 + num3 + num4)) / den;\n\n    angle1_v += angle1_a * dt;\n    angle2_v += angle2_a * dt;\n    angle1 += angle1_v * dt;\n    angle2 += angle2_v * dt;\n\n    // Coordinates\n    var x1 = centerX + len1 * Math.sin(angle1);\n    var y1 = centerY + len1 * Math.cos(angle1);\n\ttrace1.push([x1, y1]);\n\tif (trace1.length > max_trace_length) trace1.shift();\n    var x2 = x1 + len2 * Math.sin(angle2);\n    var y2 = y1 + len2 * Math.cos(angle2);\n\n    trace.push([x2, y2]);\n    if (trace.length > max_trace_length) trace.shift();\n\n    // LFO outputs\n    var norm = len1 + len2;\n    var lfo_x = (x2 - centerX) / norm;\n    var lfo_y = (y2 - centerY) / norm;\n    var lfo_amp = Math.sqrt((x2 - centerX) ** 2 + (y2 - centerY) ** 2) / norm;\n    var lfo_speed = Math.tanh(angle2_v / 5);\n    var phase = (Math.atan2(y2 - centerY, x2 - centerX) + Math.PI) / (2 * Math.PI);\n\n    // Send to outlets\n    outlet(0, angle1, angle2);\n    outlet(1, lfo_x, lfo_y);\n    outlet(2, lfo_amp);\n    outlet(3, lfo_speed);\n    outlet(4, phase);\n}\n\nfunction paint() {\n    var width = box.rect[2] - box.rect[0];\n    var height = box.rect[3] - box.rect[1];\n    centerX = width / 2;\n    centerY = height / 4;\n\n    var x1 = centerX + len1 * Math.sin(angle1);\n    var y1 = centerY + len1 * Math.cos(angle1);\n    var x2 = x1 + len2 * Math.sin(angle2);\n    var y2 = y1 + len2 * Math.cos(angle2);\n\n    with (mgraphics) {\n\t\tif (trace1.length > 1) {\n    \tset_source_rgba(1, 0.2, 0.2, 0.5);\n    \tmove_to(trace1[0][0], trace1[0][1]);\n    \tfor (var i = 1; i < trace1.length; i++) {\n        \tline_to(trace1[i][0], trace1[i][1]);\n    \t\t}\n    \t\tstroke();\n\t\t}\n        if (trace.length > 1) {\n            set_source_rgba(0, 0.4, 1, 0.5);\n            move_to(trace[0][0], trace[0][1]);\n            for (var i = 1; i < trace.length; i++) {\n                line_to(trace[i][0], trace[i][1]);\n            }\n            stroke();\n        }\n\n        set_line_width(2);\n        set_source_rgba(0.8, 0.8, 0.8, 1);\n        move_to(centerX, centerY);\n        line_to(x1, y1);\n        stroke();\n\n        move_to(x1, y1);\n        line_to(x2, y2);\n        stroke();\n\n        ellipse(x1 - m1, y1 - m1, m1 * 2, m1 * 2);\n        fill();\n\n        ellipse(x2 - m2, y2 - m2, m2 * 2, m2 * 2);\n        fill();\n    }\n}\n\nfunction msg_float(v) {\n    switch (inlet) {\n        case 0: len1 = v; break;\n        case 1: len2 = v; break;\n        case 2: m1 = v; break;\n        case 3: m2 = v; break;\n        case 4: g = v; break;\n        case 5: angle1 = v; angle1_v = 0; break;\n        case 6: angle2 = v; angle2_v = 0; break;\n    }\n    refresh();\n}\n\nfunction reset() {\n    angle1 = Math.PI / 2;\n    angle2 = Math.PI / 2;\n    angle1_v = 0;\n    angle2_v = 0;\n    trace = [];\n\ttrace1 = [];\n    refresh();\n}\n\ninlets = 7;\noutlets = 5;\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1005.0, 480.0, 40.0, 22.0 ],
					"text" : "*~ 0.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2250.0, 480.0, 40.0, 22.0 ],
					"text" : "*~ 0.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2355.0, 30.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1470.0, 180.0, 43.0, 22.0 ],
					"text" : "r reset"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-13",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2145.0, 120.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "effect",
					"id" : "obj-29",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2130.0, 180.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2085.0, 225.0, 124.0, 22.0 ],
					"text" : "abl.dsp.basicshapes~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2475.0, 300.0, 101.0, 22.0 ],
					"text" : "scale -1. 1. 0. 0.7"
				}

			}
, 			{
				"box" : 				{
					"attr" : "resonance",
					"id" : "obj-32",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2340.0, 375.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2250.0, 540.0, 68.0, 22.0 ],
					"text" : "send~ out1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-35",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2295.0, 180.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2250.0, 225.0, 96.0, 22.0 ],
					"text" : "abl.dsp.crackle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2310.0, 300.0, 114.0, 22.0 ],
					"text" : "scale -1. 1. 20 2000"
				}

			}
, 			{
				"box" : 				{
					"attr" : "frequency",
					"id" : "obj-44",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2310.0, 345.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2250.0, 420.0, 78.0, 22.0 ],
					"text" : "abl.dsp.dfm~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2055.0, 555.0, 43.0, 20.0 ],
					"text" : "Phase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2025.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1965.0, 555.0, 43.0, 20.0 ],
					"text" : "Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1935.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1875.0, 555.0, 33.0, 20.0 ],
					"text" : "Amp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1845.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1665.0, 555.0, 29.0, 20.0 ],
					"text" : "Pos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1485.0, 555.0, 45.0, 20.0 ],
					"text" : "Angles"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1740.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 1650.0, 525.0, 61.0, 22.0 ],
					"text" : "unpack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1650.0, 585.0, 75.0, 150.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1560.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ 20.0, 30.0 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 1470.0, 525.0, 61.0, 22.0 ],
					"text" : "unpack f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1470.0, 585.0, 75.0, 150.0 ],
					"setminmax" : [ -2.5, 2.5 ],
					"setstyle" : 3,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1890.0, 90.0, 49.0, 20.0 ],
					"text" : "Gravity"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-77",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1890.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2070.0, 90.0, 49.0, 20.0 ],
					"text" : "Angle 2"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-79",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2070.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1980.0, 90.0, 49.0, 20.0 ],
					"text" : "Angle 1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-81",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1980.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1800.0, 90.0, 72.0, 20.0 ],
					"text" : "Bob 2 mass"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-83",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1800.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1695.0, 90.0, 72.0, 20.0 ],
					"text" : "Bob 1 mass"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-85",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1695.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1590.0, 90.0, 81.0, 20.0 ],
					"text" : "Arm 2 Length"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-87",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1590.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1485.0, 90.0, 81.0, 20.0 ],
					"text" : "Arm 1 Length"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-89",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1485.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-90",
					"maxclass" : "v8ui",
					"numinlets" : 7,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1575.0, 195.0, 465.0, 330.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 691.0, 60.0, 465.0, 330.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar angle1 = Math.PI / 2;\nvar angle2 = Math.PI / 2;\nvar angle1_v = 0;\nvar angle2_v = 0;\n\nvar len1 = 100;\nvar len2 = 100;\nvar m1 = 12;\nvar m2 = 14;\nvar g = 1;\n\nvar trace = [];\nvar max_trace_length = 1000;\n\nvar trace1 = [];\n\n\nvar centerX = 0;\nvar centerY = 0;\nvar lastTime = Date.now();\n\nfunction bang() {\n    var now = Date.now();\n    var dt = (now - lastTime) / 1000;\n    lastTime = now;\n\n    simulate(dt * 10); // Speed factor here\n    refresh();\n}\n\nfunction simulate(dt) {\n    // Physics\n    var num1 = -g * (2 * m1 + m2) * Math.sin(angle1);\n    var num2 = -m2 * g * Math.sin(angle1 - 2 * angle2);\n    var num3 = -2 * Math.sin(angle1 - angle2) * m2;\n    var num4 = angle2_v * angle2_v * len2 + angle1_v * angle1_v * len1 * Math.cos(angle1 - angle2);\n    var den = len1 * (2 * m1 + m2 - m2 * Math.cos(2 * angle1 - 2 * angle2));\n    var angle1_a = (num1 + num2 + num3 * num4) / den;\n\n    num1 = 2 * Math.sin(angle1 - angle2);\n    num2 = (angle1_v * angle1_v * len1 * (m1 + m2));\n    num3 = g * (m1 + m2) * Math.cos(angle1);\n    num4 = angle2_v * angle2_v * len2 * m2 * Math.cos(angle1 - angle2);\n    den = len2 * (2 * m1 + m2 - m2 * Math.cos(2 * angle1 - 2 * angle2));\n    var angle2_a = (num1 * (num2 + num3 + num4)) / den;\n\n    angle1_v += angle1_a * dt;\n    angle2_v += angle2_a * dt;\n    angle1 += angle1_v * dt;\n    angle2 += angle2_v * dt;\n\n    // Coordinates\n    var x1 = centerX + len1 * Math.sin(angle1);\n    var y1 = centerY + len1 * Math.cos(angle1);\n\ttrace1.push([x1, y1]);\n\tif (trace1.length > max_trace_length) trace1.shift();\n    var x2 = x1 + len2 * Math.sin(angle2);\n    var y2 = y1 + len2 * Math.cos(angle2);\n\n    trace.push([x2, y2]);\n    if (trace.length > max_trace_length) trace.shift();\n\n    // LFO outputs\n    var norm = len1 + len2;\n    var lfo_x = (x2 - centerX) / norm;\n    var lfo_y = (y2 - centerY) / norm;\n    var lfo_amp = Math.sqrt((x2 - centerX) ** 2 + (y2 - centerY) ** 2) / norm;\n    var lfo_speed = Math.tanh(angle2_v / 5);\n    var phase = (Math.atan2(y2 - centerY, x2 - centerX) + Math.PI) / (2 * Math.PI);\n\n    // Send to outlets\n    outlet(0, angle1, angle2);\n    outlet(1, lfo_x, lfo_y);\n    outlet(2, lfo_amp);\n    outlet(3, lfo_speed);\n    outlet(4, phase);\n}\n\nfunction paint() {\n    var width = box.rect[2] - box.rect[0];\n    var height = box.rect[3] - box.rect[1];\n    centerX = width / 2;\n    centerY = height / 4;\n\n    var x1 = centerX + len1 * Math.sin(angle1);\n    var y1 = centerY + len1 * Math.cos(angle1);\n    var x2 = x1 + len2 * Math.sin(angle2);\n    var y2 = y1 + len2 * Math.cos(angle2);\n\n    with (mgraphics) {\n\t\tif (trace1.length > 1) {\n    \tset_source_rgba(1, 0.2, 0.2, 0.5);\n    \tmove_to(trace1[0][0], trace1[0][1]);\n    \tfor (var i = 1; i < trace1.length; i++) {\n        \tline_to(trace1[i][0], trace1[i][1]);\n    \t\t}\n    \t\tstroke();\n\t\t}\n        if (trace.length > 1) {\n            set_source_rgba(0, 0.4, 1, 0.5);\n            move_to(trace[0][0], trace[0][1]);\n            for (var i = 1; i < trace.length; i++) {\n                line_to(trace[i][0], trace[i][1]);\n            }\n            stroke();\n        }\n\n        set_line_width(2);\n        set_source_rgba(0.8, 0.8, 0.8, 1);\n        move_to(centerX, centerY);\n        line_to(x1, y1);\n        stroke();\n\n        move_to(x1, y1);\n        line_to(x2, y2);\n        stroke();\n\n        ellipse(x1 - m1, y1 - m1, m1 * 2, m1 * 2);\n        fill();\n\n        ellipse(x2 - m2, y2 - m2, m2 * 2, m2 * 2);\n        fill();\n    }\n}\n\nfunction msg_float(v) {\n    switch (inlet) {\n        case 0: len1 = v; break;\n        case 1: len2 = v; break;\n        case 2: m1 = v; break;\n        case 3: m2 = v; break;\n        case 4: g = v; break;\n        case 5: angle1 = v; angle1_v = 0; break;\n        case 6: angle2 = v; angle2_v = 0; break;\n    }\n    refresh();\n}\n\nfunction reset() {\n    angle1 = Math.PI / 2;\n    angle2 = Math.PI / 2;\n    angle1_v = 0;\n    angle2_v = 0;\n    trace = [];\n\ttrace1 = [];\n    refresh();\n}\n\ninlets = 7;\noutlets = 5;\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 30.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.0, 180.0, 43.0, 22.0 ],
					"text" : "r reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 180.0, 45.0, 22.0 ],
					"text" : "s reset"
				}

			}
, 			{
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
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1005.0, 540.0, 68.0, 22.0 ],
					"text" : "send~ out1"
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
					"patching_rect" : [ 105.0, 135.0, 35.0, 22.0 ],
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
					"patching_rect" : [ 330.0, 195.0, 465.0, 330.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 60.0, 465.0, 330.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar angle1 = Math.PI / 2;\nvar angle2 = Math.PI / 2;\nvar angle1_v = 0;\nvar angle2_v = 0;\n\nvar len1 = 110;\nvar len2 = 110;\nvar m1 = 15;\nvar m2 = 12;\nvar g = 1;\n\nvar trace = [];\nvar max_trace_length = 1000;\n\nvar trace1 = [];\n\n\nvar centerX = 0;\nvar centerY = 0;\nvar lastTime = Date.now();\n\nfunction bang() {\n    var now = Date.now();\n    var dt = (now - lastTime) / 1000;\n    lastTime = now;\n\n    simulate(dt * 10); // Speed factor here\n    refresh();\n}\n\nfunction simulate(dt) {\n    // Physics\n    var num1 = -g * (2 * m1 + m2) * Math.sin(angle1);\n    var num2 = -m2 * g * Math.sin(angle1 - 2 * angle2);\n    var num3 = -2 * Math.sin(angle1 - angle2) * m2;\n    var num4 = angle2_v * angle2_v * len2 + angle1_v * angle1_v * len1 * Math.cos(angle1 - angle2);\n    var den = len1 * (2 * m1 + m2 - m2 * Math.cos(2 * angle1 - 2 * angle2));\n    var angle1_a = (num1 + num2 + num3 * num4) / den;\n\n    num1 = 2 * Math.sin(angle1 - angle2);\n    num2 = (angle1_v * angle1_v * len1 * (m1 + m2));\n    num3 = g * (m1 + m2) * Math.cos(angle1);\n    num4 = angle2_v * angle2_v * len2 * m2 * Math.cos(angle1 - angle2);\n    den = len2 * (2 * m1 + m2 - m2 * Math.cos(2 * angle1 - 2 * angle2));\n    var angle2_a = (num1 * (num2 + num3 + num4)) / den;\n\n    angle1_v += angle1_a * dt;\n    angle2_v += angle2_a * dt;\n    angle1 += angle1_v * dt;\n    angle2 += angle2_v * dt;\n\n    // Coordinates\n    var x1 = centerX + len1 * Math.sin(angle1);\n    var y1 = centerY + len1 * Math.cos(angle1);\n\ttrace1.push([x1, y1]);\n\tif (trace1.length > max_trace_length) trace1.shift();\n    var x2 = x1 + len2 * Math.sin(angle2);\n    var y2 = y1 + len2 * Math.cos(angle2);\n\n    trace.push([x2, y2]);\n    if (trace.length > max_trace_length) trace.shift();\n\n    // LFO outputs\n    var norm = len1 + len2;\n    var lfo_x = (x2 - centerX) / norm;\n    var lfo_y = (y2 - centerY) / norm;\n    var lfo_amp = Math.sqrt((x2 - centerX) ** 2 + (y2 - centerY) ** 2) / norm;\n    var lfo_speed = Math.tanh(angle2_v / 5);\n    var phase = (Math.atan2(y2 - centerY, x2 - centerX) + Math.PI) / (2 * Math.PI);\n\n    // Send to outlets\n    outlet(0, angle1, angle2);\n    outlet(1, lfo_x, lfo_y);\n    outlet(2, lfo_amp);\n    outlet(3, lfo_speed);\n    outlet(4, phase);\n}\n\nfunction paint() {\n    var width = box.rect[2] - box.rect[0];\n    var height = box.rect[3] - box.rect[1];\n    centerX = width / 2;\n    centerY = height / 4;\n\n    var x1 = centerX + len1 * Math.sin(angle1);\n    var y1 = centerY + len1 * Math.cos(angle1);\n    var x2 = x1 + len2 * Math.sin(angle2);\n    var y2 = y1 + len2 * Math.cos(angle2);\n\n    with (mgraphics) {\n\t\tif (trace1.length > 1) {\n    \tset_source_rgba(1, 0.2, 0.2, 0.5);\n    \tmove_to(trace1[0][0], trace1[0][1]);\n    \tfor (var i = 1; i < trace1.length; i++) {\n        \tline_to(trace1[i][0], trace1[i][1]);\n    \t\t}\n    \t\tstroke();\n\t\t}\n        if (trace.length > 1) {\n            set_source_rgba(0, 0.4, 1, 0.5);\n            move_to(trace[0][0], trace[0][1]);\n            for (var i = 1; i < trace.length; i++) {\n                line_to(trace[i][0], trace[i][1]);\n            }\n            stroke();\n        }\n\n        set_line_width(2);\n        set_source_rgba(0.8, 0.8, 0.8, 1);\n        move_to(centerX, centerY);\n        line_to(x1, y1);\n        stroke();\n\n        move_to(x1, y1);\n        line_to(x2, y2);\n        stroke();\n\n        ellipse(x1 - m1, y1 - m1, m1 * 2, m1 * 2);\n        fill();\n\n        ellipse(x2 - m2, y2 - m2, m2 * 2, m2 * 2);\n        fill();\n    }\n}\n\nfunction msg_float(v) {\n    switch (inlet) {\n        case 0: len1 = v; break;\n        case 1: len2 = v; break;\n        case 2: m1 = v; break;\n        case 3: m2 = v; break;\n        case 4: g = v; break;\n        case 5: angle1 = v; angle1_v = 0; break;\n        case 6: angle2 = v; angle2_v = 0; break;\n    }\n    refresh();\n}\n\nfunction reset() {\n    angle1 = Math.PI / 2;\n    angle2 = Math.PI / 2;\n    angle1_v = 0;\n    angle2_v = 0;\n    trace = [];\n\ttrace1 = [];\n    refresh();\n}\n\ninlets = 7;\noutlets = 5;\n",
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
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 249.5, 165.0, 339.5, 165.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"midpoints" : [ 3744.5, 360.0, 3720.0, 360.0, 3720.0, 372.0, 3609.5, 372.0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 3609.5, 399.0, 3519.5, 399.0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 3519.5, 249.0, 3519.5, 249.0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 3579.5, 405.0, 3519.5, 405.0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"midpoints" : [ 3114.5, 738.0, 3090.0, 738.0, 3090.0, 522.0, 3330.0, 522.0, 3330.0, 177.0, 3399.5, 177.0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 3009.5, 747.0, 3495.0, 747.0, 3495.0, 285.0, 3744.5, 285.0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"midpoints" : [ 2961.5, 558.0, 3009.5, 558.0 ],
					"source" : [ "obj-117", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"midpoints" : [ 2919.5, 747.0, 3495.0, 747.0, 3495.0, 297.0, 3579.5, 297.0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"midpoints" : [ 2781.5, 549.0, 2829.5, 549.0 ],
					"source" : [ "obj-120", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 4 ],
					"midpoints" : [ 3159.5, 165.0, 3141.833333333333485, 165.0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 6 ],
					"midpoints" : [ 3339.5, 165.0, 3290.5, 165.0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 5 ],
					"midpoints" : [ 3249.5, 165.0, 3216.166666666666515, 165.0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 3 ],
					"midpoints" : [ 3069.5, 165.0, 3067.5, 165.0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 2 ],
					"midpoints" : [ 2964.5, 165.0, 2993.166666666666515, 165.0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 1 ],
					"midpoints" : [ 2859.5, 165.0, 2918.833333333333485, 165.0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"midpoints" : [ 2754.5, 165.0, 2844.5, 165.0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 3290.5, 540.0, 3294.5, 540.0 ],
					"source" : [ "obj-136", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"midpoints" : [ 3179.0, 540.0, 3204.5, 540.0 ],
					"source" : [ "obj-136", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"midpoints" : [ 3067.5, 522.0, 3114.5, 522.0 ],
					"source" : [ "obj-136", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"midpoints" : [ 2956.0, 522.0, 2919.5, 522.0 ],
					"source" : [ "obj-136", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"order" : 1,
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"order" : 0,
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"midpoints" : [ 4554.5, 405.0, 4719.5, 405.0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"midpoints" : [ 4944.5, 360.0, 4920.0, 360.0, 4920.0, 372.0, 4809.5, 372.0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"midpoints" : [ 4809.5, 399.0, 4719.5, 399.0 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"midpoints" : [ 4719.5, 249.0, 4719.5, 249.0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"midpoints" : [ 4779.5, 405.0, 4719.5, 405.0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"midpoints" : [ 4314.5, 738.0, 4290.0, 738.0, 4290.0, 522.0, 4530.0, 522.0, 4530.0, 177.0, 4599.5, 177.0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 354.5, 165.0, 413.833333333333314, 165.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"midpoints" : [ 4209.5, 747.0, 4695.0, 747.0, 4695.0, 285.0, 4944.5, 285.0 ],
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"midpoints" : [ 4161.5, 558.0, 4209.5, 558.0 ],
					"source" : [ "obj-161", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-162", 0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"midpoints" : [ 4119.5, 747.0, 4695.0, 747.0, 4695.0, 297.0, 4779.5, 297.0 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"midpoints" : [ 3981.5, 549.0, 4029.5, 549.0 ],
					"source" : [ "obj-164", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 4 ],
					"midpoints" : [ 4359.5, 165.0, 4341.83333333333303, 165.0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 6 ],
					"midpoints" : [ 4539.5, 165.0, 4490.5, 165.0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 5 ],
					"midpoints" : [ 4449.5, 165.0, 4416.16666666666697, 165.0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 3 ],
					"midpoints" : [ 4269.5, 165.0, 4267.5, 165.0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 2 ],
					"midpoints" : [ 4164.5, 165.0, 4193.16666666666697, 165.0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 1 ],
					"midpoints" : [ 4059.5, 165.0, 4118.83333333333303, 165.0 ],
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"midpoints" : [ 3954.5, 165.0, 4044.5, 165.0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"midpoints" : [ 459.5, 165.0, 488.166666666666629, 165.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"midpoints" : [ 4490.5, 540.0, 4494.5, 540.0 ],
					"source" : [ "obj-180", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"midpoints" : [ 4379.0, 540.0, 4404.5, 540.0 ],
					"source" : [ "obj-180", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 4267.5, 522.0, 4314.5, 522.0 ],
					"source" : [ "obj-180", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"midpoints" : [ 4156.0, 522.0, 4119.5, 522.0 ],
					"source" : [ "obj-180", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"order" : 1,
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 0,
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-193", 0 ],
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 1 ],
					"order" : 0,
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"order" : 1,
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"midpoints" : [ 564.5, 165.0, 562.5, 165.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 5 ],
					"midpoints" : [ 744.5, 165.0, 711.166666666666742, 165.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 6 ],
					"midpoints" : [ 834.5, 165.0, 785.5, 165.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 4 ],
					"midpoints" : [ 654.5, 165.0, 636.833333333333258, 165.0 ],
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
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-29", 0 ]
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
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 2094.5, 405.0, 2259.5, 405.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 2484.5, 360.0, 2460.0, 360.0, 2460.0, 372.0, 2349.5, 372.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 2349.5, 399.0, 2259.5, 399.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 2259.5, 249.0, 2259.5, 249.0 ],
					"source" : [ "obj-36", 0 ]
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
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-40", 0 ]
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
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 2319.5, 405.0, 2259.5, 405.0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-45", 0 ]
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
					"midpoints" : [ 451.0, 522.0, 414.5, 522.0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 562.5, 522.0, 609.5, 522.0 ],
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 674.0, 540.0, 699.5, 540.0 ],
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 785.5, 540.0, 789.5, 540.0 ],
					"source" : [ "obj-5", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
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
					"destination" : [ "obj-2", 0 ],
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
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 1854.5, 738.0, 1830.0, 738.0, 1830.0, 522.0, 2070.0, 522.0, 2070.0, 177.0, 2139.5, 177.0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 1749.5, 747.0, 2235.0, 747.0, 2235.0, 285.0, 2484.5, 285.0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 1701.5, 558.0, 1749.5, 558.0 ],
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 1659.5, 747.0, 2235.0, 747.0, 2235.0, 297.0, 2319.5, 297.0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 1521.5, 549.0, 1569.5, 549.0 ],
					"source" : [ "obj-74", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 4 ],
					"midpoints" : [ 1899.5, 165.0, 1881.833333333333258, 165.0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 6 ],
					"midpoints" : [ 2079.5, 165.0, 2030.5, 165.0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 5 ],
					"midpoints" : [ 1989.5, 165.0, 1956.166666666666742, 165.0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 3 ],
					"midpoints" : [ 1809.5, 165.0, 1807.5, 165.0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 2 ],
					"midpoints" : [ 1704.5, 165.0, 1733.166666666666742, 165.0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 1 ],
					"midpoints" : [ 1599.5, 165.0, 1658.833333333333258, 165.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"midpoints" : [ 1494.5, 165.0, 1584.5, 165.0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 2030.5, 540.0, 2034.5, 540.0 ],
					"source" : [ "obj-90", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 1919.0, 540.0, 1944.5, 540.0 ],
					"source" : [ "obj-90", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"midpoints" : [ 1807.5, 522.0, 1854.5, 522.0 ],
					"source" : [ "obj-90", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 1696.0, 522.0, 1659.5, 522.0 ],
					"source" : [ "obj-90", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"order" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"order" : 1,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 3354.5, 405.0, 3519.5, 405.0 ],
					"source" : [ "obj-99", 0 ]
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
