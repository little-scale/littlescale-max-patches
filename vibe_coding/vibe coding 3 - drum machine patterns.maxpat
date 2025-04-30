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
		"rect" : [ 34.0, 99.0, 1099.0, 778.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-21",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 814.0, 100.0 ],
					"text" : "Initial Prompt: \n\nHi chat, can you create the following in v8 codebox for Max 9? A drum rhythm generator that will generate predefined rhythms in the style of classic 808 rhythms from the 80s - 90s. Generate output values for kick drum, snare, hi hat closed, hi hat open, cowbell, hi tom, mid tom, low tom. The first outlet should simply output the correct GM drum map MIDI note for the correct step and drum sound. the next 8 outlets should each output the current pattern as a list. Each pattern should be 16 steps long corresponding to 16th notes. The user should be able to select from a set of 8 predefined patters using the second inlet. The first inlet should take a number from 0 - 15 to indicate the current step. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 135.0, 32.0, 20.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 645.0, 165.0, 20.0 ],
					"text" : "note out to Ableton drum rack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 195.0, 46.0, 20.0 ],
					"text" : "pattern"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 510.0, 225.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 615.0, 49.0, 22.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 15.0, 570.0, 108.0, 22.0 ],
					"text" : "makenote 100 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 165.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 15.0, 225.0, 85.0, 22.0 ],
					"text" : "counter 0 0 15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 15.0, 195.0, 63.0, 22.0 ],
					"text" : "metro 125"
				}

			}
, 			{
				"box" : 				{
					"code" : "// Max v8 codebox for classic 808-style drum rhythm generator\n\n// Drum MIDI notes (General MIDI standard)\nvar KICK = 36;\nvar SNARE = 38;\nvar HH_CLOSED = 42;\nvar HH_OPEN = 46;\nvar COWBELL = 56;\nvar HI_TOM = 50;\nvar MID_TOM = 47;\nvar LOW_TOM = 43;\n\n// Predefined 8 patterns (each pattern: 8 instruments * 16 steps)\nvar patterns = [\n    // Pattern 0: Simple four on the floor\n    [\n        [1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0], // Kick\n        [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0], // Snare\n        [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], // HH Closed\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // HH Open\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Cowbell\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Hi Tom\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Mid Tom\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]  // Low Tom\n    ],\n    // Pattern 1: Offbeat open hats\n    [\n        [1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0],\n        [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0],\n        [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],\n        [0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1],\n        [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0],\n        [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0],\n        [0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0],\n        [0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0]\n    ],\n    // Pattern 2: Funk shuffle with mid tom fill\n    [\n        [1,0,0,1,0,0,1,0,1,0,0,1,0,0,1,0],\n        [0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0],\n        [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],\n        [0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0],\n        [0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0],\n        [0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0],\n        [0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0],\n        [0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0]\n    ],\n    // Pattern 3: Funky shuffle + open hats\n    [\n        [1,0,0,1,0,0,1,0,1,0,0,1,0,0,1,0], // Kick\n        [0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0], // Snare\n        [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], // HH Closed\n        [0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0], // HH Open\n        [0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0], // Cowbell\n        [0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0], // Hi Tom\n        [0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0], // Mid Tom\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0]  // Low Tom\n    ],\n    // Pattern 4: Electro cowbell focus\n    [\n        [1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0], // Kick\n        [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0], // Snare\n        [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], // HH Closed\n        [0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1], // HH Open\n        [0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1], // Cowbell\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Hi Tom\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Mid Tom\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]  // Low Tom\n    ],\n    // Pattern 5: Miami bass tom focus\n    [\n        [1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0], // Kick\n        [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0], // Snare\n        [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], // HH Closed\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // HH Open\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Cowbell\n        [0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0], // Hi Tom\n        [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0], // Mid Tom\n        [0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0]  // Low Tom\n    ],\n    // Pattern 6: Sparse hip hop\n    [\n        [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0], // Kick\n        [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0], // Snare\n        [1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1], // HH Closed\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // HH Open\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Cowbell\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Hi Tom\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Mid Tom\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]  // Low Tom\n    ],\n    // Pattern 7: Hi hat focus, slight triplet feel\n    [\n        [1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0], // Kick\n        [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0], // Snare\n        [1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0], // HH Closed\n        [0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1], // HH Open\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Cowbell\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Hi Tom\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // Mid Tom\n        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]  // Low Tom\n    ]\n];\n\n\ninlets = 2;\noutlets = 9; // 1 for MIDI note, 8 for each drum pattern\n\nvar current_step = 0;\nvar selected_pattern = 0;\n\nfunction msg_int(v) {\n    if (inlet == 0) {\n        current_step = v % 16;\n        trigger_outputs();\n    } else if (inlet == 1) {\n        selected_pattern = Math.max(0, Math.min(v, 7));\n    }\n}\n\nfunction trigger_outputs() {\n    var midi_note = -1;\n    var triggers = [];\n\n    for (var i = 0; i < 8; i++) {\n        triggers[i] = patterns[selected_pattern][i][current_step];\n    }\n\n    if (triggers[0]) midi_note = KICK;\n    else if (triggers[1]) midi_note = SNARE;\n    else if (triggers[2]) midi_note = HH_CLOSED;\n    else if (triggers[3]) midi_note = HH_OPEN;\n    else if (triggers[4]) midi_note = COWBELL;\n    else if (triggers[5]) midi_note = HI_TOM;\n    else if (triggers[6]) midi_note = MID_TOM;\n    else if (triggers[7]) midi_note = LOW_TOM;\n\n    outlet(0, midi_note);\n\n    for (var i = 0; i < 8; i++) {\n        outlet(i + 1, patterns[selected_pattern][i]);\n    }\n}\n",
					"filename" : "none",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "v8.codebox",
					"numinlets" : 2,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 15.0, 270.0, 510.0, 285.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
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
					"destination" : [ "obj-11", 1 ],
					"midpoints" : [ 113.5, 603.5, 39.5, 603.5 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 24.5, 603.5, 24.5, 603.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"midpoints" : [ 519.5, 258.5, 515.5, 258.5 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 0 ]
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
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"originid" : "pat-18",
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
