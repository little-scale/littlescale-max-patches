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
		"rect" : [ 59.0, 118.0, 981.0, 758.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 45.0, 105.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 74.0, -52.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.0, 180.0, 46.0, 22.0 ],
					"text" : "pack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 195.0, 150.0, 29.5, 22.0 ],
					"text" : "% 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 10,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 450.0, 180.0, 22.0 ],
					"text" : "pack f f f f f f f f f f"
				}

			}
, 			{
				"box" : 				{
					"decay_time" : 511.53035114988063,
					"id" : "obj-23",
					"maxclass" : "live.adsrui",
					"numinlets" : 10,
					"numoutlets" : 10,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 540.0, 360.0, 184.0, 68.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 540.0, 360.0, 184.0, 68.0 ],
					"release_time" : 7263.093198975594532,
					"sustain" : 0.323529411764706
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 615.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 210.0, 101.0, 22.0 ],
					"text" : "prepend midinote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 180.0, 46.0, 22.0 ],
					"text" : "pack i i"
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
					"patching_rect" : [ 315.0, 345.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 405.0, 465.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 225.0, 555.0, 276.0, 22.0 ],
					"text" : "poly~ tuning-inside @voices 8 @steal 1 @target 0"
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
					"patching_rect" : [ 30.0, 135.0, 50.0, 22.0 ]
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
					"patching_rect" : [ 30.0, 240.0, 510.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, -75.0, 525.0, 105.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\noutlets = 2;\n\nvar nodeCount = 5;\nvar draggingIndex = -1;\nvar margin = 20;\nvar radius = 6;\nvar ratios = [];\nvar width, height;\nvar playing = [];\n\nfunction init_ratios() {\n    ratios = [];\n    playing = [];\n    for (var i = 0; i < nodeCount; i++) {\n        ratios.push(i / (nodeCount - 1));\n        playing.push(0); // all off\n    }\n}\n\ninit_ratios();\n\nfunction paint() {\n    width = box.rect[2] - box.rect[0];\n    height = box.rect[3] - box.rect[1];\n    var y = height / 2;\n\n    // Draw main horizontal line\n    mgraphics.set_line_width(2);\n    mgraphics.set_source_rgba(0, 0, 0, 1);\n    mgraphics.move_to(margin, y);\n    mgraphics.line_to(width - margin, y);\n    mgraphics.stroke();\n\n    for (var i = 0; i < ratios.length; i++) {\n        var x = margin + ratios[i] * (width - 2 * margin);\n\n        // Draw node\n        if (i === draggingIndex && i !== 0 && i !== ratios.length - 1) {\n            mgraphics.set_source_rgba(1, 0.3, 0.3, 1);\n        } else {\n            mgraphics.set_source_rgba(0, 0.6, 1, 1);\n        }\n\n        mgraphics.arc(x, y, radius, 0, Math.PI * 2);\n        mgraphics.fill();\n\n        // Highlight if active\n        if (playing[i] > 0) {\n            var alpha = playing[i] / 127;\n            mgraphics.set_line_width(2);\n            mgraphics.set_source_rgba(1, 1, 1, alpha);\n            mgraphics.arc(x, y, radius + 4, 0, Math.PI * 2);\n            mgraphics.stroke();\n        }\n\n        // Draw cent label\n        var cents = Math.round(ratios[i] * 1200);\n        var label = cents.toString() + \"c\";\n        mgraphics.select_font_face(\"Arial\");\n        mgraphics.set_font_size(10);\n        mgraphics.set_source_rgba(0, 0, 0, 1);\n        mgraphics.move_to(x - 8, y + radius + 12); // below the node\n        mgraphics.show_text(label);\n    }\n}\n\n\nfunction onclick(x, y, but, cmd, shift, capslock, option, ctrl) {\n    var centerY = height / 2;\n\n    for (var i = 1; i < ratios.length - 1; i++) {\n        var px = margin + ratios[i] * (width - 2 * margin);\n\n        if (Math.abs(x - px) < radius * 2 && Math.abs(y - centerY) < radius * 2) {\n            if (cmd) {\n                ratios[i] = i / (ratios.length - 1); // reset\n                mgraphics.redraw();\n                output_ratios();\n                draggingIndex = -1;\n                return;\n            } else {\n                draggingIndex = i;\n                break;\n            }\n        }\n    }\n}\n\n\n\nfunction ondrag(x, y) {\n    if (draggingIndex > 0 && draggingIndex < ratios.length - 1) {\n        var x_clamped = Math.max(margin, Math.min(x, width - margin));\n        var relX = (x_clamped - margin) / (width - 2 * margin);\n        ratios[draggingIndex] = relX;\n        mgraphics.redraw();\n        output_ratios();\n    }\n}\n\n\n\nfunction ondragend(x, y, but, cmd, shift, capslock, option, ctrl) {\n    if (draggingIndex !== -1) {\n        draggingIndex = -1;\n        mgraphics.redraw();\n        \n    }\n}\n\nfunction list() {\n    if (arguments.length < 2) return;\n\n    var index = arguments[0];\n    var velocity = arguments[1];\n\n    if (index >= 0 && index < playing.length) {\n        playing[index] = velocity;\n        mgraphics.redraw();\n    }\n}\n\nfunction output_ratios() {\n    var out = [];\n    for (var i = 0; i < ratios.length; i++) {\n        var ratio = Math.pow(2, ratios[i]);\n        out.push(parseFloat(ratio.toFixed(6)));\n    }\n    outlet(0, out);\n}\n\nfunction msg_int(val) {\n    if (val < 2) val = 2;\n    nodeCount = val;\n    init_ratios();\n    mgraphics.redraw();\n    output_ratios();\n}\n",
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
					"destination" : [ "obj-12", 2 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 3 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 9 ],
					"source" : [ "obj-23", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 8 ],
					"source" : [ "obj-23", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 7 ],
					"source" : [ "obj-23", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 6 ],
					"source" : [ "obj-23", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 5 ],
					"source" : [ "obj-23", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 4 ],
					"source" : [ "obj-23", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 3 ],
					"source" : [ "obj-23", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"source" : [ "obj-23", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 4 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 2,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"originid" : "pat-376",
		"dependency_cache" : [ 			{
				"name" : "tuning-inside.maxpat",
				"bootpath" : "~/Desktop",
				"patcherrelativepath" : ".",
				"type" : "JSON",
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
