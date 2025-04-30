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
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 525.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 555.0, 300.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 60.0, 525.0, 88.0, 22.0 ],
					"text" : "abl.dsp.vowel~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 60.0, 498.0, 52.0, 22.0 ],
					"text" : "rect~ 40"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 465.0, 94.0, 22.0 ],
					"text" : "scale -1. 3. 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 465.0, 91.0, 22.0 ],
					"text" : "scale -1. 3. 0. 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 435.0, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 435.0, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 405.0, 29.5, 22.0 ],
					"text" : "$3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 405.0, 29.5, 22.0 ],
					"text" : "$2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.0, 90.0, 363.0, 74.0 ],
					"text" : "Hi chat, can you create the following in v8ui in Max 9 using mgraphics? Please make an isometric polyhedron - the shape and type can be your choice. One vertex of the polyhedron should be filled in red. I want to be able to grab the red segment and rotate the polyhedron. the object should output rotation values in x y z. "
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-1",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 90.0, 301.0, 294.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar rotX = 0;\nvar rotY = 0;\nvar rotZ = 0;\nvar dragging = false;\nvar prev_x = 0;\nvar prev_y = 0;\n\n// Simple regular tetrahedron (4 vertices)\nvar vertices = [\n    [1, 1, 1],\n    [-1, -1, 1],\n    [-1, 1, -1],\n    [1, -1, -1]\n];\n\n// Faces of the tetrahedron (each with 3 vertices)\nvar faces = [\n    [0, 1, 2],\n    [0, 1, 3],\n    [0, 2, 3],\n    [1, 2, 3]\n];\n\nvar redVertex = 0;\n\nfunction paint() {\n    with (mgraphics) {\n        set_source_rgba(0.1, 0.1, 0.1, 1); // background\n        paint();\n\n        translate(150, 150); // center\n        scale(60, 60);       // zoom\n\n        set_line_width(0.02);\n        set_source_rgba(1, 1, 1, 1); // white lines\n\n        for (var i = 0; i < faces.length; i++) {\n            var f = faces[i];\n            var p0 = rotate3D(vertices[f[0]]);\n            move_to(p0[0], p0[1]);\n            for (var j = 1; j < f.length; j++) {\n                var pj = rotate3D(vertices[f[j]]);\n                line_to(pj[0], pj[1]);\n            }\n            line_to(p0[0], p0[1]); // close triangle\n            stroke();\n        }\n\n        // Highlight one vertex in red\n        var rv = rotate3D(vertices[redVertex]);\n        arc(rv[0], rv[1], 0.05, 0, 2 * Math.PI);\n        set_source_rgba(1, 0, 0, 1);\n        fill();\n    }\n}\n\nfunction rotate3D(v) {\n    var [x, y, z] = v;\n\n    var cx = Math.cos(rotX), sx = Math.sin(rotX);\n    var cy = Math.cos(rotY), sy = Math.sin(rotY);\n    var cz = Math.cos(rotZ), sz = Math.sin(rotZ);\n\n    var y1 = y * cx - z * sx;\n    var z1 = y * sx + z * cx;\n\n    var x2 = x * cy + z1 * sy;\n    var z2 = -x * sy + z1 * cy;\n\n    var x3 = x2 * cz - y1 * sz;\n    var y3 = x2 * sz + y1 * cz;\n\n    return [x3, y3, z2];\n}\n\nfunction ondrag(x, y, but, cmd, shift, capslock, option, ctrl) {\n    if (but) {\n        if (!dragging) {\n            dragging = true;\n            prev_x = x;\n            prev_y = y;\n        } else {\n            rotY += (x - prev_x) * 0.01;\n            rotX -= (y - prev_y) * 0.01;\n            prev_x = x;\n            prev_y = y;\n            outlet(0, \"rotation\", rotX.toFixed(3), rotY.toFixed(3), rotZ.toFixed(3));\n            mgraphics.redraw();\n        }\n    } else {\n        dragging = false;\n    }\n}\n",
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
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 69.5, 394.5, 69.5, 394.5 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 69.5, 394.5, 219.5, 394.5 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"midpoints" : [ 69.5, 506.0, 115.5, 506.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 3 ],
					"midpoints" : [ 219.5, 506.0, 138.5, 506.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 2,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"midpoints" : [ 69.5, 557.0, 137.5, 557.0, 137.5, 515.0, 205.5, 515.0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 69.5, 557.0, 129.5, 557.0, 129.5, 515.0, 189.5, 515.0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"originid" : "pat-41",
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
