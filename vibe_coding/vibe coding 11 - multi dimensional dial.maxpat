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
		"rect" : [ 34.0, 99.0, 1402.0, 778.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 745.0, 592.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"attr" : "size",
					"id" : "obj-10",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 572.0, 518.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 745.0, 524.0, 87.0, 22.0 ],
					"text" : "abl.dsp.prism~"
				}

			}
, 			{
				"box" : 				{
					"attr" : "resonance",
					"id" : "obj-8",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 572.0, 470.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "morph",
					"id" : "obj-6",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 572.0, 426.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 745.0, 470.0, 112.0, 22.0 ],
					"text" : "abl.dsp.vowel~ 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 745.0, 426.0, 52.0, 22.0 ],
					"text" : "rect~ 50"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-1",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 150.0, 207.0, 202.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\noutlets = 4;\n\nvar numDials = 4;\nvar values = new Array(numDials).fill(0.5);\nvar colors = [\n    [0.2, 0.6, 1.0, 1.0],\n    [0.0, 0.8, 0.4, 1.0],\n    [1.0, 0.5, 0.0, 1.0],\n    [0.9, 0.1, 0.5, 1.0]\n];\nvar activeDial = -1;\nvar lastY = 0;\nvar maxAngle = 270;\n\nfunction paint() {\n    var [w, h] = mgraphics.size;\n    var cx = w / 2;\n    var cy = h / 2;\n    var thickness = 20;\n    var spacing = 1;\n\n    for (var i = 0; i < numDials; i++) {\n        var radius = (i + 1) * (thickness + spacing);\n        var startAngle = (360 - maxAngle) / 2 + 90;\n        var endAngle = startAngle + values[i] * maxAngle;\n\n        // Background track\n        mgraphics.set_source_rgba(0.2, 0.2, 0.2, 0.2);\n        mgraphics.set_line_width(thickness);\n        mgraphics.arc(cx, cy, radius, deg2rad(startAngle), deg2rad(startAngle + maxAngle));\n        mgraphics.stroke();\n\n        // Active arc\n        mgraphics.set_source_rgba.apply(mgraphics, colors[i % colors.length]);\n        mgraphics.arc(cx, cy, radius, deg2rad(startAngle), deg2rad(endAngle));\n        mgraphics.stroke();\n    }\n}\n\nfunction onclick(x, y, button, shift, capslock, option, ctrl) {\n    var [w, h] = mgraphics.size;\n    var cx = w / 2;\n    var cy = h / 2;\n    var dx = x - cx;\n    var dy = y - cy;\n    var dist = Math.sqrt(dx*dx + dy*dy);\n\n    var thickness = 10;\n    var spacing = 4;\n\n    activeDial = -1;\n\n    // Check arcs from outermost to innermost\n    for (var i = numDials - 1; i >= 0; i--) {\n        var outerRadius = (i + 1) * (thickness + spacing);\n        var innerRadius = outerRadius - thickness;\n\n        if (dist >= innerRadius && dist <= outerRadius) {\n            activeDial = i;\n            lastY = y;\n            break;\n        }\n    }\n}\n\n\nfunction ondrag(x, y, button, shift, capslock, option, ctrl) {\n    if (activeDial >= 0) {\n        var dy = lastY - y;\n        lastY = y;\n        values[activeDial] += dy * 0.005;\n        values[activeDial] = Math.max(0, Math.min(1, values[activeDial]));\n        outlet(activeDial, values[activeDial]);\n        mgraphics.redraw();\n    }\n}\n\nfunction onmouseup(x, y, button, shift, capslock, option, ctrl) {\n    activeDial = -1;\n}\n\nfunction deg2rad(d) {\n    return d * Math.PI / 180;\n}\n",
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
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 767.5, 411.0, 732.0, 411.0, 732.0, 504.0, 581.5, 504.0 ],
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"midpoints" : [ 579.5, 411.0, 771.0, 411.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 642.166666666666629, 411.0, 581.5, 411.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 704.833333333333258, 411.0, 558.0, 411.0, 558.0, 465.0, 581.5, 465.0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 581.5, 552.0, 732.0, 552.0, 732.0, 519.0, 754.5, 519.0 ],
					"source" : [ "obj-10", 0 ]
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
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 581.5, 450.0, 558.0, 450.0, 558.0, 504.0, 732.0, 504.0, 732.0, 465.0, 754.5, 465.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 581.5, 504.0, 732.0, 504.0, 732.0, 465.0, 754.5, 465.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-114",
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
