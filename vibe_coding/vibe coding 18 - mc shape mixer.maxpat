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
					"id" : "obj-4",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 224.0, 794.0, 1188.0, 127.0 ],
					"text" : "hi chat, i want to create an audio mixing object designed for mc use using v8ui in max 9 with mgraphics. \n\nThe idea here is to have a geometric shape made of nodes that are connected via linesegments. The user can control the number of nodes (from 3 up). In the middle of the shape is a listening position. \n\nEach node represents an audio channel or audio source emitter. Assume each audio source is equally energetic. The nodes can be moved about by the user. The listening position can be moved about by the listener.\n\nThe object should output a list of amplitude values calculated as the volume level representing the distance of each source from the listener. The number of amplitude values should equal the number of audio source nodes. \n\nGive each node a number that is printed next to it. Give the listening position a suitable icon. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 990.0, 390.0, 119.0, 22.0 ],
					"text" : "prepend applyvalues"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 990.0, 420.0, 114.0, 22.0 ],
					"text" : "mc.sig~ @chans 32"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 435.0, 120.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 825.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 825.0, 90.0, 114.0, 20.0 ],
					"text" : "harmonic frequency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 435.0, 90.0, 93.0, 20.0 ],
					"text" : "shape constrain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.0, 90.0, 57.0, 20.0 ],
					"text" : "channels"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 825.0, 705.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 825.0, 555.0, 48.0, 136.0 ],
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
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 825.0, 525.0, 74.0, 22.0 ],
					"text" : "mc.unpack~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"lastchannelcount" : 32,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 345.0, 600.0, 435.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "mc.live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 855.0, 240.0, 119.0, 22.0 ],
					"text" : "prepend applyvalues"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 825.0, 285.0, 40.0, 22.0 ],
					"text" : "mc.*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 825.0, 495.0, 68.0, 22.0 ],
					"text" : "mc.stereo~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 885.0, 285.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 885.0, 375.0, 87.0, 22.0 ],
					"text" : "prepend select"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 885.0, 345.0, 57.0, 22.0 ],
					"text" : "list.group"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 885.0, 315.0, 51.0, 22.0 ],
					"text" : "uzi 32 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 825.0, 420.0, 84.0, 22.0 ],
					"text" : "mc.resize~ 32"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 825.0, 150.0, 95.0, 22.0 ],
					"text" : "increment $1 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 825.0, 180.0, 126.0, 22.0 ],
					"text" : "mc.cycle~ @chans 32"
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
					"patching_rect" : [ 375.0, 120.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 435.0, 150.0, 74.0, 22.0 ],
					"text" : "constrain $1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-3",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 375.0, 195.0, 375.0, 390.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\noutlets = 2; \n\nvar num_nodes = 5;\nvar nodes = [];\nvar radius = 120;\nvar draggingNode = -1;\nvar draggingListener = false;\nvar listener = {x: 200, y: 200};\nvar constrainListener = false;\nvar autoupdate = true;\n\nfunction init_nodes() {\n\tnodes = [];\n\tfor (var i = 0; i < num_nodes; i++) {\n\t\tvar angle = (Math.PI * 2 / num_nodes) * i;\n\t\tnodes.push({\n\t\t\tx: listener.x + radius * Math.cos(angle),\n\t\t\ty: listener.y + radius * Math.sin(angle)\n\t\t});\n\t}\n}\ninit_nodes();\n\nfunction paint() {\n\twith (mgraphics) {\n\t\tset_source_rgba(0.95, 0.95, 0.95, 1);\n\t\trectangle(0, 0, box.rect[2], box.rect[3]);\n\t\tfill();\n\n\t\t// Draw connecting lines: light gray (free) or black (constrained)\n\t\tset_line_width(1.5);\n\t\tif (constrainListener) {\n\t\t\tset_source_rgba(0.0, 0.0, 0.0, 1); // black\n\t\t} else {\n\t\t\tset_source_rgba(0.8, 0.8, 0.8, 1); // light gray\n\t\t}\n\t\tfor (var i = 0; i < nodes.length; i++) {\n\t\t\tvar next = (i + 1) % nodes.length;\n\t\t\tmove_to(nodes[i].x, nodes[i].y);\n\t\t\tline_to(nodes[next].x, nodes[next].y);\n\t\t\tstroke();\n\t\t}\n\n\t\t// Draw nodes and label next to them\n\t\tfor (var i = 0; i < nodes.length; i++) {\n\t\t\tvar n = nodes[i];\n\t\t\tvar r = 8;\n\n\t\t\tset_source_rgba(0.2, 0.6, 1.0, 1);\n\t\t\tarc(n.x, n.y, r, 0, 2 * Math.PI);\n\t\t\tfill();\n\n\t\t\tset_source_rgba(0, 0, 0, 1);\n\t\t\tselect_font_face(\"Arial\");\n\t\t\tset_font_size(12);\n\t\t\tmove_to(n.x + 12, n.y - 6);\n\t\t\tshow_text(\"\" + i);\n\t\t}\n\n\t\t// Draw listener (simple red circle)\n\t\tset_source_rgba(1.0, 0.2, 0.2, 1);\n\t\tarc(listener.x, listener.y, 8, 0, 2 * Math.PI);\n\t\tfill();\n\t}\n}\n\nfunction distance(a, b) {\n\treturn Math.sqrt((a.x - b.x) ** 2 + (a.y - b.y) ** 2);\n}\n\nfunction clamp(v, min, max) {\n\treturn Math.max(min, Math.min(max, v));\n}\n\nfunction bang() {\n\tvar amps = [];\n\tvar pans = [];\n\tvar width = box.rect[2];\n\tvar half_width = width / 2;\n\n\tfor (var i = 0; i < nodes.length; i++) {\n\t\tvar node = nodes[i];\n\t\tvar d = distance(listener, node);\n\t\tvar amp = 1 / Math.max(d, 1);\n\t\tamps.push(amp);\n\n\t\tvar pan = clamp((node.x - listener.x) / half_width + 0.5, 0, 1);\n\t\tpans.push(pan);\n\t}\n\n\toutlet(0, amps);\n\toutlet(1, pans);\n}\n\nfunction onclick(x, y, button, shift, capslock, option, ctrl) {\n\tdraggingNode = -1;\n\tdraggingListener = false;\n\n\tif (shift) {\n\t\tfor (var i = 0; i < nodes.length; i++) {\n\t\t\tif (distance({x: x, y: y}, nodes[i]) < 10) {\n\t\t\t\tdraggingNode = i;\n\t\t\t\treturn;\n\t\t\t}\n\t\t}\n\t} else {\n\t\tif (distance({x: x, y: y}, listener) < 12) {\n\t\t\tdraggingListener = true;\n\t\t}\n\t}\n}\n\nfunction ondrag(x, y, button, shift, capslock, option, ctrl) {\n\tif (draggingNode !== -1) {\n\t\tnodes[draggingNode].x = x;\n\t\tnodes[draggingNode].y = y;\n\t}\n\tif (draggingListener) {\n\t\tvar proposed = {x: x, y: y};\n\t\tif (!constrainListener || pointInPolygon(proposed, nodes)) {\n\t\t\tlistener.x = x;\n\t\t\tlistener.y = y;\n\t\t}\n\t}\n\trefresh();\n\tif (autoupdate) bang();\n}\n\nfunction ondragend(x, y, button, shift, capslock, option, ctrl) {\n\tdraggingNode = -1;\n\tdraggingListener = false;\n}\n\nfunction msg_int(v) {\n\tif (v >= 3) {\n\t\tnum_nodes = v;\n\t\tinit_nodes();\n\t\trefresh();\n\t\tif (autoupdate) bang();\n\t}\n}\n\nfunction constrain(v) {\n\tconstrainListener = (v !== 0);\n\trefresh();\n}\n\nfunction autoupdate(v) {\n\tautoupdate = (v !== 0);\n}\n\nfunction pointInPolygon(pt, poly) {\n\tvar inside = false;\n\tfor (var i = 0, j = poly.length - 1; i < poly.length; j = i++) {\n\t\tvar xi = poly[i].x, yi = poly[i].y;\n\t\tvar xj = poly[j].x, yj = poly[j].y;\n\n\t\tvar intersect = ((yi > pt.y) != (yj > pt.y)) &&\n\t\t                (pt.x < (xj - xi) * (pt.y - yi) / (yj - yi + 0.00001) + xi);\n\t\tif (intersect) inside = !inside;\n\t}\n\treturn inside;\n}\n",
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
					"destination" : [ "obj-35", 0 ],
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
					"destination" : [ "obj-31", 0 ],
					"order" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 834.5, 480.0, 792.0, 480.0, 792.0, 687.0, 330.0, 687.0, 330.0, 582.0, 354.5, 582.0 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 926.5, 341.0, 894.5, 341.0 ],
					"source" : [ "obj-20", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 910.5, 341.0, 894.5, 341.0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 894.5, 416.0, 834.5, 416.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 384.5, 587.421875, 810.0, 587.421875, 810.0, 227.80859375, 864.5, 227.80859375 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 740.5, 588.0, 762.0, 588.0, 762.0, 453.0, 975.0, 453.0, 975.0, 387.0, 999.5, 387.0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"midpoints" : [ 864.5, 273.5, 855.5, 273.5 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"midpoints" : [ 834.5, 551.0, 863.5, 551.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"midpoints" : [ 999.5, 480.0, 883.5, 480.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 384.5, 174.0, 894.5, 174.0 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"originid" : "pat-2",
		"parameters" : 		{
			"obj-39" : [ "mc.live.gain~[1]", "mc.live.gain~", 0 ],
			"obj-43" : [ "live.gain~", "live.gain~", 0 ],
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
