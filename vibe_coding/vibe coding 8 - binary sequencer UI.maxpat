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
		"rect" : [ 59.0, 118.0, 1000.0, 698.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-42",
					"linecount" : 14,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 45.0, 358.0, 194.0 ],
					"text" : "Hi chat! Can you please code the following using v8ui in Max 9? A binary counter sequencer, where by the binary counting is represented as a series of concentric circles. Each circle is divided up by a power of two and there are four circles in total. Each circle represents a rhythm with a particular note output. The input for the v8ui can take a number in ticks. The tick value is the finest time resolution of the sequencer as represented by the largest circle. So for four circles, we expect to see divisions of 2, followed by 4, followed by 8, followed by 16. The sequencer should allow the user to click on a segment of a concentric circle to either place a hit at that segment or remove the hit currently existing at the segment. There should be a visual indication about which tick we are currently at - this should be a fifth concentric circle with sixteen divisions. Does this make sense to you?"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"clipheight" : 29.0,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Macintosh HD:/Users/a1106632/Desktop/Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Hats/Lofi Sounds - HiHat Cute.wav",
								"filename" : "Lofi Sounds - HiHat Cute.wav",
								"filekind" : "audiofile",
								"id" : "u952004334",
								"loop" : 0,
								"content_state" : 								{

								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-40",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 375.0, 585.0, 90.0, 30.0 ],
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
					"basictuning" : 440,
					"clipheight" : 29.0,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Macintosh HD:/Users/a1106632/Desktop/Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Percs/Lofi Sounds - Clap 2 - Percs One Shot.wav",
								"filename" : "Lofi Sounds - Clap 2 - Percs One Shot.wav",
								"filekind" : "audiofile",
								"id" : "u277004226",
								"loop" : 0,
								"content_state" : 								{

								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-38",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 270.0, 585.0, 90.0, 30.0 ],
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
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 660.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"clipheight" : 29.0,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Macintosh HD:/Users/a1106632/Desktop/Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Percs/Lofi Sounds - Bongo Slow - Percs One Shot.wav",
								"filename" : "Lofi Sounds - Bongo Slow - Percs One Shot.wav",
								"filekind" : "audiofile",
								"id" : "u629003479",
								"loop" : 0,
								"content_state" : 								{

								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-32",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 165.0, 585.0, 90.0, 30.0 ],
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
					"basictuning" : 440,
					"clipheight" : 29.0,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Macintosh HD:/Users/a1106632/Desktop/Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Kick/Lofi Sounds - Kick 1.wav",
								"filename" : "Lofi Sounds - Kick 1.wav",
								"filekind" : "audiofile",
								"id" : "u864003461",
								"loop" : 0,
								"content_state" : 								{

								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-30",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 585.0, 90.0, 30.0 ],
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
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 514.0, 390.0, 78.0, 22.0 ],
					"text" : "bgcolor 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 165.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 60.0, 195.0, 63.0, 22.0 ],
					"text" : "metro 125"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 60.0, 225.0, 85.0, 22.0 ],
					"text" : "counter 0 0 15"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-7",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 255.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-3",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 285.0, 331.0, 287.0 ],
					"textfile" : 					{
						"text" : "// Binary Counter Sequencer with Concentric Rhythmic Layers\n// Works in Max 9's v8ui object\n\nmgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\noutlets = 4;\n\n// Config\nconst num_layers = 4;\nconst divisions = [2, 4, 8, 16];\nconst outer_divisions = 16; // tick indicator\nconst total_ticks = 16;\n\n// UI State\nvar width = 300;\nvar height = 300;\nvar tick = 0;\nvar patterns = divisions.map(n => new Array(n).fill(0));\nvar prev_step = [ -1, -1, -1, -1 ]; // per-layer previous step index\n\n\nfunction paint() {\n    var center_x = width / 2;\n    var center_y = height / 2;\n    var max_radius = Math.min(width, height) / 2 - 10;\n\n    var ctx = mgraphics;\n    ctx.set_line_width(2);\n\n    for (var i = 0; i < num_layers; i++) {\n        var n_divs = divisions[i];\n        var radius_outer = max_radius * (i + 1) / (num_layers + 0.5);  // More spacing\n        var radius_inner = max_radius * (i) / (num_layers + 0.5);      // Start from 0\n        var angle_per_slice = (2 * Math.PI) / n_divs;\n\n        for (var j = 0; j < n_divs; j++) {\n            var start_angle = j * angle_per_slice;\n            var end_angle = (j + 1) * angle_per_slice;\n\n            if (patterns[i][j]) {\n                ctx.set_source_rgba(0.2 + 0.2*i, 0.7, 0.4 + 0.1*i, 0.9);\n                ctx.move_to(\n                    center_x + radius_inner * Math.cos(start_angle),\n                    center_y + radius_inner * Math.sin(start_angle)\n                );\n                ctx.arc(center_x, center_y, radius_outer, start_angle, end_angle);\n                ctx.line_to(\n                    center_x + radius_inner * Math.cos(end_angle),\n                    center_y + radius_inner * Math.sin(end_angle)\n                );\n                ctx.arc_negative(center_x, center_y, radius_inner, end_angle, start_angle);\n                ctx.close_path();\n                ctx.fill();\n            }\n        }\n\n        // Draw outer circle for each ring\n        ctx.set_source_rgba(1, 1, 1, 0.2);\n        ctx.arc(center_x, center_y, radius_outer, 0, 2 * Math.PI);\n        ctx.stroke();\n    }\n\n    // Draw tick indicator line (closer to outer ring now)\n    var radius_tick = max_radius * (num_layers) / (num_layers + 0.5);  // Closer to last layer\n    var tick_angle = (tick % outer_divisions) * ((2 * Math.PI) / outer_divisions);\n    ctx.set_source_rgba(1, 1, 0, 0.9);\n    ctx.move_to(\n        center_x + radius_tick * Math.cos(tick_angle),\n        center_y + radius_tick * Math.sin(tick_angle)\n    );\n    ctx.line_to(\n        center_x + (radius_tick + 5) * Math.cos(tick_angle),\n        center_y + (radius_tick + 5) * Math.sin(tick_angle)\n    );\n    ctx.stroke();\n}\n\n\nfunction onclick(x, y, but, cmd, shift, capslock, option, ctrl) {\n    var cx = width / 2;\n    var cy = height / 2;\n    var dx = x - cx;\n    var dy = y - cy;\n    var dist = Math.sqrt(dx*dx + dy*dy);\n    var angle = Math.atan2(dy, dx);\n    if (angle < 0) angle += 2 * Math.PI;\n\n    var max_radius = Math.min(width, height) / 2 - 10;\n    var layer_height = max_radius / (num_layers + 1);\n\n    for (var i = 0; i < num_layers; i++) {\n        var inner_r = layer_height * (i + 0.5);\n        var outer_r = layer_height * (i + 1);\n\n        if (dist >= inner_r && dist <= outer_r) {\n            var n = divisions[i];\n            var slice = Math.floor(angle / (2 * Math.PI / n));\n            patterns[i][slice] = 1 - patterns[i][slice]; // toggle\n            mgraphics.redraw();\n            return;\n        }\n    }\n}\n\nfunction msg_float(v) {\n    tick = v;\n    bang();\n}\n\nfunction bang() {\n    for (var i = 0; i < num_layers; i++) {\n        var n_divs = divisions[i];\n        var step = Math.floor((tick % total_ticks) / (total_ticks / n_divs));\n        \n        if (step !== prev_step[i]) {\n            prev_step[i] = step;\n\n            if (patterns[i][step]) {\n                outlet(i, 1);\n            } else {\n                outlet(i, 0);\n            }\n        }\n    }\n\n    mgraphics.redraw();\n}\n\n\nfunction onresize(w, h) {\n    width = w;\n    height = h;\n    mgraphics.redraw();\n}\n",
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
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"source" : [ "obj-32", 1 ]
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
					"destination" : [ "obj-33", 1 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-19",
		"dependency_cache" : [ 			{
				"name" : "Lofi Sounds - Bongo Slow - Percs One Shot.wav",
				"bootpath" : "~/Desktop/Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Percs",
				"patcherrelativepath" : "../Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Percs",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "Lofi Sounds - Clap 2 - Percs One Shot.wav",
				"bootpath" : "~/Desktop/Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Percs",
				"patcherrelativepath" : "../Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Percs",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "Lofi Sounds - HiHat Cute.wav",
				"bootpath" : "~/Desktop/Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Hats",
				"patcherrelativepath" : "../Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Hats",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "Lofi Sounds - Kick 1.wav",
				"bootpath" : "~/Desktop/Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Kick",
				"patcherrelativepath" : "../Lofi Sounds - Blue Hour Lofi Jazz Drum Kit/Kick",
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
		"autosave" : 0,
		"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
	}

}
