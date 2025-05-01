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
		"rect" : [ 34.0, 87.0, 1980.0, 974.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 22,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 660.0, 495.0, 301.0 ],
					"text" : "hey chat, can we create the following in max 9 v8ui codebox using mgraphics? \n\na system where the user can specify the number of nodes. the minimum number of nodes is 3. a given node is initially placed randomly with x y co-ordinates. all nodes are connected to all other nodes with line segments. \n\nthe user can move above the nodes by clicking and dragging. each node should represent a musical note and velocity, as derived from the x y position. \n\nthe instrument is played by the user by clicking on a node. A musical note is produced. A visual indicator plays along a line segment until we reach the next node, where it is then played as well. and then on to a next node and so on. \n\nObviously each node will have multiple paths it can choose from when being played. The proability of a given pathway to be chosen should be determined by the angle between a pathway and the next one along the same node - a larger angle implies a lower probabiltity whilst a smaller angle implies a greater probability. \n\nas the user moves the nodes around in 2D space, this changes the weighting of the probability across the whole network of nodes. \n\nDoes this make sense to you? "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 30.0, 41.0, 20.0 ],
					"text" : "nodes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 30.0, 47.0, 20.0 ],
					"text" : "pitches"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 60.0, 122.0, 22.0 ],
					"text" : "60 62 64 65 67 74 76"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 60.0, 645.0, 63.0, 22.0 ],
					"text" : "route note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 705.0, 49.0, 22.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 15.0, 24.0, 24.0 ],
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
					"patching_rect" : [ 60.0, 60.0, 49.0, 22.0 ],
					"text" : "metro 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 60.0, 675.0, 108.0, 22.0 ],
					"text" : "makenote 100 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 60.0, 74.0, 22.0 ],
					"text" : "set_nodes 5"
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
					"patching_rect" : [ 60.0, 105.0, 723.0, 531.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar num_nodes = 5;\nvar nodes = [];\nvar radius = 10;\nvar drag_index = -1;\n\nvar baseChord = [60, 64, 67]; // Default: C major\nvar noteNames = [\"C\", \"C#\", \"D\", \"D#\", \"E\", \"F\", \"F#\", \"G\", \"G#\", \"A\", \"A#\", \"B\"];\nvar lastNode = -1;\n\n\n// Traversal\nvar isPlaying = false;\nvar currentNode = -1;\nvar nextNode = -1;\nvar t = 0;\nvar stepSize = 4.0;\nvar segmentLength = 1;\nvar animPos = {x: 0, y: 0};\nvar lastDir = {x: 0, y: 0};\n\n// Initialize nodes with wrapped pitches\nfunction init_nodes(n) {\n    // Reset traversal state\n    isPlaying = false;\n    currentNode = -1;\n    nextNode = -1;\nlastNode = -1; // ✅ Add this\n    t = 0;\n\n    nodes = [];\n\n    var width = box.rect[2] - box.rect[0];\n    var height = box.rect[3] - box.rect[1];\n    var cx = width / 2;\n    var cy = height / 2;\n    var r = Math.min(width, height) * 0.35;\n\n    for (var i = 0; i < n; i++) {\n        var angle = (2 * Math.PI * i) / n - Math.PI / 2; // start at top\n        var x = cx + r * Math.cos(angle);\n        var y = cy + r * Math.sin(angle);\n        var pitch = baseChord[i % baseChord.length] + 12 * Math.floor(i / baseChord.length);\n\n        nodes.push({\n            x: x,\n            y: y,\n            pitch: pitch,\n            velocity: 100\n        });\n    }\n}\n\n\ninit_nodes(num_nodes);\n\n// Set number of nodes externally\nfunction set_nodes(n) {\n    if (n < 3) n = 3;\n    num_nodes = n;\n    init_nodes(n);\n    mgraphics.redraw();\n}\n\n// Replace chord (inlet 1)\nfunction list() {\n    baseChord = arrayfromargs(arguments);\n    init_nodes(num_nodes);\n    mgraphics.redraw();\n}\n\n// Weighted path selection based on angle\nfunction choose_next_node(fromIdx, fromDir) {\n    var choices = [];\n    var n0 = nodes[fromIdx];\n\n    for (var i = 0; i < nodes.length; i++) {\n        if (i === fromIdx || i === lastNode) continue;\n        var n1 = nodes[i];\n        var dx = n1.x - n0.x;\n        var dy = n1.y - n0.y;\n        var mag = Math.sqrt(dx * dx + dy * dy);\n        var dir = {x: dx / mag, y: dy / mag};\n\n        var angleWeight = 1;\n        if (fromDir !== null) {\n            var dot = fromDir.x * dir.x + fromDir.y * dir.y;\n            var angle = Math.acos(dot);\n            angleWeight = Math.pow(1 - angle / Math.PI, 2);\n        }\n\n        choices.push({index: i, weight: angleWeight});\n    }\n\n    var total = choices.reduce((acc, c) => acc + c.weight, 0);\n    var r = Math.random() * total;\n    var sum = 0;\n    for (var i = 0; i < choices.length; i++) {\n        sum += choices[i].weight;\n        if (r <= sum) return choices[i].index;\n    }\n\n    return choices[0].index;\n}\n\n// Animation step (triggered by bang)\nfunction bang() {\n    if (!isPlaying || currentNode === -1 || nextNode === -1) return;\n\n    var n0 = nodes[currentNode];\n    var n1 = nodes[nextNode];\n\n    if (t === 0) {\n        var dx = n1.x - n0.x;\n        var dy = n1.y - n0.y;\n        segmentLength = Math.sqrt(dx * dx + dy * dy);\n    }\n\n    t += stepSize / segmentLength;\n    t = Math.min(t, 1.0);\n\n    animPos.x = n0.x + (n1.x - n0.x) * t;\n    animPos.y = n0.y + (n1.y - n0.y) * t;\n\nif (t >= 1.0) {\n    var dx = n1.x - n0.x;\n    var dy = n1.y - n0.y;\n    var dist = Math.sqrt(dx * dx + dy * dy);\n\n    // Velocity mapping: shorter = louder\n    var width = box.rect[2] - box.rect[0];\n    var maxDist = width; // assume max meaningful distance\n    var vel = Math.floor(127 - (dist / maxDist) * 100); // range: ~40 to 127\n    vel = Math.max(40, Math.min(127, vel));\n\n    outlet(0, \"note\", n1.pitch, vel);\n\n    var mag = dist;\n    lastDir = {x: dx / mag, y: dy / mag};\n\n    lastNode = currentNode;\n    currentNode = nextNode;\n    nextNode = choose_next_node(currentNode, lastDir);\n    t = 0;\n}\n\n    mgraphics.redraw();\n}\n\n// Paint\nfunction paint() {\n    with (mgraphics) {\n        set_line_width(1);\n        set_source_rgba(1, 1, 1, 1); // white lines\n\n        for (var i = 0; i < nodes.length; i++) {\n            for (var j = i + 1; j < nodes.length; j++) {\n                move_to(nodes[i].x, nodes[i].y);\n                line_to(nodes[j].x, nodes[j].y);\n                stroke();\n            }\n        }\n\n        for (var i = 0; i < nodes.length; i++) {\n            var n = nodes[i];\n            set_source_rgba(0.8, 0.2, 0.2, 1);\n            ellipse(n.x - radius, n.y - radius, radius * 2, radius * 2);\n            fill();\n\n            // Draw note name\n            set_source_rgba(1, 1, 1, 1);\n            select_font_face(\"Arial\");\n            set_font_size(10);\n            move_to(n.x + radius + 2, n.y);\n            var label = midi_to_note_name(n.pitch);\n            show_text(label);\n        }\n\n        if (isPlaying) {\n    set_source_rgba(1, 1, 0, 1);\n    ellipse(animPos.x - radius, animPos.y - radius, radius * 2, radius * 2);\n    fill();\n}\n\n    }\n}\n\n// Click = start traversal\nfunction onclick(x, y, but, cmd, shift, capslock, option, ctrl) {\n    if (shift) return; // don't trigger playback during Shift-drag\n\n    for (var i = 0; i < nodes.length; i++) {\n        var n = nodes[i];\n        var dx = x - n.x;\n        var dy = y - n.y;\n        if (dx * dx + dy * dy < radius * radius) {\n            outlet(0, \"note\", n.pitch, n.velocity);\n            currentNode = i;\n            nextNode = choose_next_node(i, null);\n            t = 0;\n            isPlaying = true;\n            break;\n        }\n    }\n}\n\n\n// Cmd+drag = move\nfunction ondrag(x, y, but, cmd, shift, capslock, option, ctrl) {\n    if (!shift) return;\n\n    // Always check which node is under cursor during Shift-drag\n    drag_index = -1;\n    for (var i = 0; i < nodes.length; i++) {\n        var n = nodes[i];\n        var dx = x - n.x;\n        var dy = y - n.y;\n        if (dx * dx + dy * dy < radius * radius) {\n            drag_index = i;\n            break;\n        }\n    }\n\n    if (drag_index >= 0) {\n        var width = box.rect[2] - box.rect[0];\n        var height = box.rect[3] - box.rect[1];\n        nodes[drag_index].x = Math.max(0, Math.min(width, x));\n        nodes[drag_index].y = Math.max(0, Math.min(height, y));\n        mgraphics.redraw();\n    }\n}\n\n\n\n\n// Utility\nfunction midi_to_note_name(pitch) {\n    var name = noteNames[pitch % 12];\n    var octave = Math.floor(pitch / 12) - 1;\n    return name + octave;\n}\n\nfunction set_speed(pixels) {\n    stepSize = Math.max(0.1, pixels);\n}\n",
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
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-1", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-4", 1 ]
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
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"originid" : "pat-4",
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
