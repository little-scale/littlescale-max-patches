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
		"rect" : [ 34.0, 99.0, 1145.0, 778.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 705.0, 71.0, 20.0 ],
					"text" : "output pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 180.0, 63.0, 20.0 ],
					"text" : "input pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 180.0, 39.0, 20.0 ],
					"text" : "mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 180.0, 56.0, 20.0 ],
					"text" : "root note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 337.0, 127.0 ],
					"text" : "Initial Prompt: \n\nHi chat, can you create the following in v8 codebox for Max 9? A scale / mode quantiser that takes a chromatic MIDI pitch number as an input and outputs a MIDI pitch number that belongs to a specific scale / mode. The user should be able to define what the root note is and what the scale / mode is. Incorporate all scales and modes into the code and make them selectable via a symbol that goes into an inlet. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 645.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 210.0, 70.0, 22.0 ],
					"text" : "whole_tone"
				}

			}
, 			{
				"box" : 				{
					"format" : 4,
					"id" : "obj-6",
					"maxclass" : "number",
					"maximum" : 11,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 210.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 210.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"code" : "// Max v8 codebox: Full MIDI Scale Quantizer with cold root note inlet (corrected)\n\ninlets = 3;\noutlets = 1;\n\n// Variables\nvar root = 0; // root note (0-11)\nvar scaleName = \"major\";\nvar scale = [1,0,1,0,1,1,0,1,0,1,0,1]; // default major scale\nvar last_pitch = 60; // default last received pitch (optional if needed for future)\n\n// Predefined scales and modes\nvar scales = {\n    \"major\":        [1,0,1,0,1,1,0,1,0,1,0,1], // Ionian\n    \"ionian\":       [1,0,1,0,1,1,0,1,0,1,0,1],\n    \"dorian\":       [1,0,1,1,0,1,0,1,0,1,1,0],\n    \"phrygian\":     [1,1,0,1,0,1,0,1,1,0,1,0],\n    \"lydian\":       [1,0,1,0,1,0,1,1,0,1,0,1],\n    \"mixolydian\":   [1,0,1,0,1,1,0,1,0,1,1,0],\n    \"aeolian\":      [1,0,1,1,0,1,0,1,1,0,1,0], // natural minor\n    \"minor\":        [1,0,1,1,0,1,0,1,1,0,1,0],\n    \"locrian\":      [1,1,0,1,0,1,1,0,1,0,1,0],\n    \"harmonic_minor\": [1,0,1,1,0,1,0,1,1,0,0,1],\n    \"melodic_minor\":  [1,0,1,1,0,1,0,1,0,1,0,1],\n    \"pentatonic_major\": [1,0,1,0,1,0,0,1,0,1,0,0],\n    \"pentatonic_minor\": [1,0,0,1,0,1,0,1,0,0,1,0],\n    \"whole_tone\":   [1,0,1,0,1,0,1,0,1,0,1,0],\n    \"chromatic\":    [1,1,1,1,1,1,1,1,1,1,1,1]\n};\n\n// Helper: wrap to 0-11\nfunction mod12(x) {\n    return (x % 12 + 12) % 12;\n}\n\n// Handle MIDI pitch input (hot inlet)\nfunction msg_int(pitch) {\n    if (inlet == 0) {\n        var octave = Math.floor(pitch / 12);\n        var note = mod12(pitch - root);\n        \n        // Search downward for nearest scale note\n        for (var i = 0; i <= 12; i++) {\n            var candidate = mod12(note - i);\n            if (scale[candidate] == 1) {\n                var quantized_pitch = (octave * 12) + root + note - i;\n                outlet(0, quantized_pitch);\n                return;\n            }\n        }\n        // fallback: output original pitch\n        outlet(0, pitch);\n    }\n}\n\n// Handle root note input (cold inlet)\nfunction inlet1_int(new_root) {\n    if (inlet == 1) {\n        root = mod12(new_root);\n    }\n}\n\n// Handle scale/mode name input (cold inlet)\nfunction anything() {\n    if (inlet == 2) {\n        var name = messagename;\n        if (scales.hasOwnProperty(name)) {\n            scaleName = name;\n            scale = scales[name];\n        }\n    }\n}\n",
					"filename" : "none",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "v8.codebox",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 270.0, 705.0, 360.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"originid" : "pat-2",
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
