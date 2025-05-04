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
		"rect" : [ 34.0, 99.0, 1336.0, 779.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-30",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 435.0, 615.0, 929.0, 127.0 ],
					"text" : "hi chat, can we create the following in v8 in Max 9? \n\nCode that will generate interesting noise spectra using a linear feedback shift register. \n\nThe code should have interesting presets for combinations of number of taps, tap positions and length of feedback that will generate an interesting (complex periodic) output. \n\nYou can base the LFSR on the Pokey chip by Atari if you like, but welcome to use other \n\nThe output should be a list of amplitude values derived from the feedback shift register. I will be loading up this list into a buffer and using it for playback"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 330.0, 435.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 330.0, 465.0, 63.0, 22.0 ],
					"text" : "metro 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 330.0, 495.0, 85.0, 22.0 ],
					"text" : "counter 1 1 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 765.0, 60.0, 110.0, 22.0 ],
					"presentation_linecount" : 2,
					"text" : "preset maximal_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 645.0, 60.0, 103.0, 22.0 ],
					"text" : "preset pokey_9bit"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 495.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 525.0, 44.0, 22.0 ],
					"text" : "set lfsr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 525.0, 60.0, 103.0, 22.0 ],
					"text" : "preset pokey_4bit"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 330.0, 585.0, 40.0, 22.0 ],
					"text" : "*~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 615.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-15",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 330.0, 525.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 330.0, 555.0, 233.0, 22.0 ],
					"text" : "cycle~ 110 lfsr @buffer_sizeinsamps 1024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 885.0, 480.0, 95.0, 22.0 ],
					"text" : "buffer~ lfsr 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 780.0, 510.0, 43.0, 22.0 ],
					"text" : "list.rev"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 780.0, 540.0, 47.0, 22.0 ],
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 780.0, 480.0, 66.0, 22.0 ],
					"text" : "listfunnel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 780.0, 570.0, 61.0, 22.0 ],
					"text" : "poke~ lfsr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.0, 60.0, 103.0, 22.0 ],
					"text" : "preset pokey_5bit"
				}

			}
, 			{
				"box" : 				{
					"code" : "inlets = 1;\noutlets = 1;\n\n// Default LFSR config\nvar length = 15; // Register size\nvar taps = [14, 13]; // Tap positions (zero-indexed)\nvar seed = 1; // Initial state (non-zero)\nvar scale = 1.0; // Output amplitude scaling\nvar count = 1024; // Number of samples to generate\n\n// Presets for interesting spectra\nvar presets = {\n  \"pokey_4bit\": { length: 4, taps: [3, 2], seed: 1 },\n  \"pokey_5bit\": { length: 5, taps: [4, 2], seed: 1 },\n  \"pokey_9bit\": { length: 9, taps: [5], seed: 1 },\n  \"maximal_15\": { length: 15, taps: [14, 13], seed: 1 },\n  \"short_reverb\": { length: 7, taps: [6, 5], seed: 1 },\n  \"buzzy_11\": { length: 11, taps: [10, 8], seed: 1 }\n};\n\nfunction generate() {\n  var reg = seed;\n  var output = [];\n\n  for (var i = 0; i < count; i++) {\n    var bit = 0;\n    for (var j = 0; j < taps.length; j++) {\n      bit ^= (reg >> taps[j]) & 1;\n    }\n    reg = ((reg << 1) | bit) & ((1 << length) - 1);\n\n    // Prevent zero-lock (if reg becomes 0, reset to seed)\n    if (reg === 0) reg = seed;\n\n    // Output bit as scaled float amplitude\n    output.push((reg & 1) * scale);\n  }\n\n  outlet(0, output);\n}\n\nfunction bang() {\n  generate();\n}\n\nfunction setlength(l) {\n  length = Math.max(2, Math.min(31, l));\n}\n\nfunction settaps() {\n  taps = arrayfromargs(arguments);\n}\n\nfunction setseed(s) {\n  seed = Math.max(1, s);\n}\n\nfunction setcount(n) {\n  count = n;\n}\n\nfunction setscale(v) {\n  scale = v;\n}\n\nfunction preset(name) {\n  if (presets[name]) {\n    length = presets[name].length;\n    taps = presets[name].taps;\n    seed = presets[name].seed;\n    post(\"Preset loaded:\", name, \"\\n\");\n  } else {\n    post(\"Unknown preset:\", name, \"\\n\");\n  }\n  generate();\n}\n",
					"filename" : "none",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "v8.codebox",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.0, 105.0, 579.0, 355.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 414.5, 473.53125, 504.5, 473.53125 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 414.5, 470.0, 789.5, 470.0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 534.5, 93.5, 414.5, 93.5 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 504.5, 551.0, 339.5, 551.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 654.5, 93.5, 414.5, 93.5 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 774.5, 93.5, 414.5, 93.5 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 414.5, 93.5, 414.5, 93.5 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-61",
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
