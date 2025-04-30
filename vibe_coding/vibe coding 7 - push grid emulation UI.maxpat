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
					"id" : "obj-5",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 39.0, 467.0, 74.0 ],
					"text" : "Dear chat, can you do the following in v8ui in Max 9? Create a grid of 8 x 8 notes. Each note represents a pitch. The user can click on a note and the object will output a pitch and velocity pair. The user can click again to turn the note off. The notes should be mapped to pitch in the same way the the scale keyboard note mode is when using an ableton push. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 558.0, 49.0, 22.0 ],
					"text" : "noteout"
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
					"patching_rect" : [ 51.0, 119.0, 405.0, 407.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar grid_size = 8;\nvar cell_size = 50; // size in pixels\nvar grid = new Array(grid_size * grid_size).fill(0); // 0 = off, 1 = on\n\n// Set base pitch mapping (bottom left = 36 like Ableton Push default)\nvar base_pitch = 36;\n\n// Paint function\nfunction paint() {\n    for (var y = 0; y < grid_size; y++) {\n        for (var x = 0; x < grid_size; x++) {\n            var idx = x + (grid_size - 1 - y) * grid_size;\n            var active = grid[idx];\n\n            if (active) {\n                mgraphics.set_source_rgba(0.2, 0.6, 1, 1); // Active: blue\n            } else {\n                mgraphics.set_source_rgba(0.8, 0.8, 0.8, 1); // Inactive: light grey\n            }\n            mgraphics.rectangle(cell_size * x, cell_size * y, cell_size - 2, cell_size - 2);\n            mgraphics.fill();\n        }\n    }\n}\n\n// Handle mouse click\nfunction onclick(x, y, button, shift, capslock, option, ctrl) {\n    var gx = Math.floor(x / cell_size);\n    var gy = Math.floor(y / cell_size);\n    if (gx >= 0 && gx < grid_size && gy >= 0 && gy < grid_size) {\n        var idx = gx + (grid_size - 1 - gy) * grid_size; // invert y\n        grid[idx] = 1 - grid[idx]; // toggle\n\n        var pitch = base_pitch + gx + (grid_size - 1 - gy) * 5; // Push mapping: rows move by 5 semitones up\n        var velocity = grid[idx] ? 127 : 0;\n\n        outlet(0, pitch, velocity);\n        mgraphics.redraw();\n    }\n}\n",
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
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
 ],
		"originid" : "pat-9",
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
