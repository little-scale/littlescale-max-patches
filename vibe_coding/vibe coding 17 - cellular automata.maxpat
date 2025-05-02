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
		"rect" : [ 0.0, 0.0, 1000.0, 699.200000000000045 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-13",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 270.0, 150.0, 114.0 ],
					"text" : "can you create a cellular automata setup in v8ui using mgraphics in Max 9? Include as the base rules the conway game of life but also allow the user to change the rules via list input. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 750.0, 49.0, 22.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 450.0, 690.0, 116.0, 22.0 ],
					"text" : "route noteon noteoff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 525.0, 105.0, 49.0, 22.0 ],
					"text" : "random"
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
					"patching_rect" : [ 450.0, 60.0, 24.0, 24.0 ],
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
					"patching_rect" : [ 450.0, 105.0, 56.0, 22.0 ],
					"text" : "metro 50"
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
					"patching_rect" : [ 450.0, 150.0, 510.0, 510.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar cellSize = 16;\nvar cols = 32;\nvar rows = 32;\n\nvar grid = [];\nvar prevGrid = [];\nvar next = [];\n\nvar birthRules = [3];\nvar survivalRules = [2, 3];\n\nvar dragging = false;\nvar paintState = 1;\n\nfunction initGrid() {\n    grid = new Array(rows);\n    prevGrid = new Array(rows);\n    next = new Array(rows);\n    for (var y = 0; y < rows; y++) {\n        grid[y] = new Array(cols).fill(0);\n        prevGrid[y] = new Array(cols).fill(0);\n        next[y] = new Array(cols).fill(0);\n    }\n}\ninitGrid();\n\nfunction paint() {\n    with (mgraphics) {\n        set_source_rgba(0, 0, 0, 1);\n        rectangle(0, 0, cols * cellSize, rows * cellSize);\n        fill();\n\n        for (var y = 0; y < rows; y++) {\n            for (var x = 0; x < cols; x++) {\n                if (grid[y][x]) {\n                    set_source_rgba(1, 1, 1, 1);\n                } else {\n                    set_source_rgba(0.15, 0.15, 0.15, 1);\n                }\n                rectangle(x * cellSize, y * cellSize, cellSize, cellSize);\n                fill();\n            }\n        }\n    }\n}\n\nfunction bang() {\n    for (var y = 0; y < rows; y++) {\n        for (var x = 0; x < cols; x++) {\n            var neighbors = countNeighbors(x, y);\n            if (grid[y][x] === 1) {\n                next[y][x] = survivalRules.indexOf(neighbors) !== -1 ? 1 : 0;\n            } else {\n                next[y][x] = birthRules.indexOf(neighbors) !== -1 ? 1 : 0;\n            }\n\n            // Detect changes for note events\n            if (grid[y][x] !== next[y][x]) {\n                var pitch = Math.floor((x / (cols - 1)) * 127);\n                var velocity = Math.floor((y / (rows - 1)) * 127);\n                if (next[y][x] === 1) {\n                    outlet(0, [\"noteon\", pitch, velocity]);\n                } else {\n                    outlet(0, [\"noteoff\", pitch]);\n                }\n            }\n        }\n    }\n\n    // Update prevGrid and swap states\n    for (var y = 0; y < rows; y++) {\n        for (var x = 0; x < cols; x++) {\n            prevGrid[y][x] = grid[y][x];\n        }\n    }\n\n    var temp = grid;\n    grid = next;\n    next = temp;\n\n    refresh();\n}\n\nfunction countNeighbors(x, y) {\n    var total = 0;\n    for (var dy = -1; dy <= 1; dy++) {\n        for (var dx = -1; dx <= 1; dx++) {\n            if (dx === 0 && dy === 0) continue;\n            var nx = (x + dx + cols) % cols;\n            var ny = (y + dy + rows) % rows;\n            total += grid[ny][nx];\n        }\n    }\n    return total;\n}\n\nfunction onclick(x, y) {\n    var cx = Math.floor(x / cellSize);\n    var cy = Math.floor(y / cellSize);\n    if (cx >= 0 && cx < cols && cy >= 0 && cy < rows) {\n        grid[cy][cx] = 1 - grid[cy][cx];\n        paintState = grid[cy][cx];\n        dragging = true;\n        refresh();\n    }\n}\n\nfunction ondrag(x, y, button, mod) {\n    if (!dragging) return;\n    var cx = Math.floor(x / cellSize);\n    var cy = Math.floor(y / cellSize);\n    if (cx >= 0 && cx < cols && cy >= 0 && cy < rows) {\n        grid[cy][cx] = paintState;\n        refresh();\n    }\n}\n\nfunction ondragend(x, y, button, mod) {\n    dragging = false;\n}\n\nfunction list() {\n    var args = arrayfromargs(arguments);\n    var mode = 0;\n    birthRules = [];\n    survivalRules = [];\n\n    for (var i = 0; i < args.length; i++) {\n        var val = args[i];\n        if (typeof val === \"string\") {\n            if (val.charAt(0).toLowerCase() === \"b\") {\n                mode = 1;\n                val = val.slice(1);\n            } else if (val.charAt(0).toLowerCase() === \"s\") {\n                mode = 2;\n                val = val.slice(1);\n            }\n        }\n        var digits = val.toString().split(\"\");\n        for (var j = 0; j < digits.length; j++) {\n            var n = parseInt(digits[j]);\n            if (!isNaN(n)) {\n                if (mode === 1) birthRules.push(n);\n                else if (mode === 2) survivalRules.push(n);\n            }\n        }\n    }\n    post(\"New rules - Birth: \" + birthRules + \" | Survival: \" + survivalRules + \"\\n\");\n}\n\nfunction anything() {\n    var msg = messagename.toLowerCase();\n    if (msg === \"random\") {\n        for (var y = 0; y < rows; y++) {\n            for (var x = 0; x < cols; x++) {\n                grid[y][x] = Math.random() < 0.2 ? 1 : 0;\n            }\n        }\n        refresh();\n    }\n}\n",
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
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"originid" : "pat-25",
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
