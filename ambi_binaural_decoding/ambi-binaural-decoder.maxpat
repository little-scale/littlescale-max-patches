{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 769.0, 99.0, 315.0, 316.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 90.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 90.0, 185.0, 20.0 ],
					"text" : "3. Set up binaural decoder plugin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.0, 210.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 120.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 60.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 30.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 60.0, 102.0, 20.0 ],
					"text" : "2. Set output File"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 30.0, 123.0, 20.0 ],
					"text" : "1. Select B-format file"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 180.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 120.0, 200.0, 20.0 ],
					"text" : "4. Convert from B-format to binaural"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 210.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 180.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "signal", "bang" ],
					"patching_rect" : [ 120.0, 210.0, 61.0, 22.0 ],
					"text" : "sfplay~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 120.0, 270.0, 69.0, 22.0 ],
					"text" : "sfrecord~ 2"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 120.0, 240.0, 144.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 4, 2, "BinauralDecoder", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "BinauralDecoder.vst3info",
							"plugindisplayname" : "BinauralDecoder",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 152294126,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "615.VMjLg3k....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9LyM23hUMoFSmA0Tt3hKt7zJlcUXxEDZisVRxH1a3vVX3fjTLQmKogjYTwVXogiQY8FMwjENHIUUTkEUKMCR38TNtHzSBsFagcVUsI1Y2YTTq0TLgoVUrIVN1MDUAkTUP0TPRokZvjFRmEzQhI2ZGI0ZEYTV1cVLgQWUVE0cIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogzazXjXvDkLSgWTVkEdMUUV5E0UZQ2XrgjYXcEVxU0UYgCRnwDctjFR0MyPOAUQpQUPvPDRuEkUOgFUxH1ZMs1T4AkZHYFVWgkbUcUV3fjTLQmKogTcyLzSO0DLPMDNrEFaqESVlgTUYkVUVoULUwlXPgCahoGLogzbDkFRlwTUYQWTVkEdqQDU3fDZHYFSUkEcQYUV3EDLggWTW8DZ5IESn4BdTsFMFk0ZIIyTS0DUPoVTrI1ZMIiX3fDdKIzZrE1YU0lXmcmQQsVSwDlZUwlX0gjPHMUUrElZUwlXIQiQisVRsM1Y2Y0SnQzPLYGR3sTN1k2RBsFagcVUsI1Y2YTTq0TLgoVUrIVNt3hKt3hKt3hKt3hKtQUUCUEQTg2ZrM1YQcUVDUjQicVPP4RPHQEY1UTLhkWPP4RPL4hKi4hKt3hKt3hKtXlTU0DUQAURWoULEYzXqEEUXoWQFwyKIMzasA2atUlaz4COuX0TTMCTrU2Yo41TzEFck4C."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "BinauralDecoder",
									"origin" : "BinauralDecoder.vst3info",
									"type" : "VST3",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "BinauralDecoder.vst3info",
										"plugindisplayname" : "BinauralDecoder",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 152294126,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "615.VMjLg3k....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9LyM23hUMoFSmA0Tt3hKt7zJlcUXxEDZisVRxH1a3vVX3fjTLQmKogjYTwVXogiQY8FMwjENHIUUTkEUKMCR38TNtHzSBsFagcVUsI1Y2YTTq0TLgoVUrIVN1MDUAkTUP0TPRokZvjFRmEzQhI2ZGI0ZEYTV1cVLgQWUVE0cIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogzazXjXvDkLSgWTVkEdMUUV5E0UZQ2XrgjYXcEVxU0UYgCRnwDctjFR0MyPOAUQpQUPvPDRuEkUOgFUxH1ZMs1T4AkZHYFVWgkbUcUV3fjTLQmKogTcyLzSO0DLPMDNrEFaqESVlgTUYkVUVoULUwlXPgCahoGLogzbDkFRlwTUYQWTVkEdqQDU3fDZHYFSUkEcQYUV3EDLggWTW8DZ5IESn4BdTsFMFk0ZIIyTS0DUPoVTrI1ZMIiX3fDdKIzZrE1YU0lXmcmQQsVSwDlZUwlX0gjPHMUUrElZUwlXIQiQisVRsM1Y2Y0SnQzPLYGR3sTN1k2RBsFagcVUsI1Y2YTTq0TLgoVUrIVNt3hKt3hKt3hKt3hKtQUUCUEQTg2ZrM1YQcUVDUjQicVPP4RPHQEY1UTLhkWPP4RPL4hKi4hKt3hKt3hKtXlTU0DUQAURWoULEYzXqEEUXoWQFwyKIMzasA2atUlaz4COuX0TTMCTrU2Yo41TzEFck4C."
									}
,
									"fileref" : 									{
										"name" : "BinauralDecoder",
										"filename" : "BinauralDecoder.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "2554cbd15ef8f93341f37d37d877e2e2"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 4 2 BinauralDecoder",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 147.357142857142861, 264.0, 179.5, 264.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 129.5, 264.0, 129.5, 264.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 69.5, 87.0, 45.0, 87.0, 45.0, 165.0, 69.5, 165.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 69.5, 165.0, 45.0, 165.0, 45.0, 207.0, 69.5, 207.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 129.5, 204.0, 129.5, 204.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 69.5, 267.0, 129.5, 267.0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 69.5, 237.0, 105.0, 237.0, 105.0, 207.0, 129.5, 207.0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 204.5, 236.0, 129.5, 236.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 69.5, 117.0, 84.0, 117.0, 84.0, 165.0, 204.5, 165.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 69.5, 204.0, 105.0, 204.0, 105.0, 267.0, 129.5, 267.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 3 ],
					"midpoints" : [ 161.0, 234.0, 254.5, 234.0 ],
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"midpoints" : [ 150.5, 234.0, 212.833333333333314, 234.0 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"midpoints" : [ 140.0, 234.0, 171.166666666666657, 234.0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 129.5, 234.0, 129.5, 234.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 171.5, 243.0, 96.0, 243.0, 96.0, 207.0, 69.5, 207.0 ],
					"source" : [ "obj-6", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 69.5, 57.0, 45.0, 57.0, 45.0, 165.0, 129.5, 165.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "vst~", "vst~", 0 ],
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
				"name" : "BinauralDecoder.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
