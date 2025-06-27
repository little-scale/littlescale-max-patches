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
		"rect" : [ 34.0, 99.0, 339.0, 316.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 45.0, 90.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 90.0, 191.0, 20.0 ],
					"text" : "3. Set up Rode Sound Field plugin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 210.0, 35.0, 22.0 ],
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
					"patching_rect" : [ 45.0, 120.0, 24.0, 24.0 ]
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
					"patching_rect" : [ 45.0, 60.0, 24.0, 24.0 ]
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
					"patching_rect" : [ 45.0, 30.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 60.0, 102.0, 20.0 ],
					"text" : "2. Set output File"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 30.0, 158.0, 20.0 ],
					"text" : "1. Select NT-SF1 Recording"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 180.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 120.0, 203.0, 20.0 ],
					"text" : "4. Convert from A-format to B-format"
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
					"patching_rect" : [ 45.0, 210.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 180.0, 35.0, 22.0 ],
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
					"patching_rect" : [ 105.0, 210.0, 61.0, 22.0 ],
					"text" : "sfplay~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 105.0, 270.0, 69.0, 22.0 ],
					"text" : "sfrecord~ 4"
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
					"numoutlets" : 10,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 105.0, 240.0, 212.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 4, 4, "SoundField By RODE", ";" ],
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
						"parameter_mappable" : 0,
						"prefer" : "AudioUnit"
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
							"pluginname" : "SoundField By RODE.auinfo",
							"plugindisplayname" : "SoundField By RODE",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 1937404001,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "2954.hAGaoMGcv.C1AHv.DTfAGfPBJrvDTTgEWvUag4VclE1XzUmbkIGUjEFcgwUYrUVak4Fcs3VXsU1UyUmXzkGbkckckI2bo8laTQWdvU1WP7fZ0MVYPwVcmklaSQWXzUFUtEVakIgTOQTQOEQ.jB..............yDvJHNA.....A3hJYC....P.tf3s+....Dvby44O.B..JHf0l.....fDuO2j.....Hg7VjE.....RHOc27C...vFMAQN+....PBLjn7O....jvF5D9CP...ILeKC9rZgevBqnFH.....r75RGA.....KulZI+....DCS+OE.....w7jnY.....PLO8+89.H..DSoI99O.A..3Phoc8CP..PNCvhn+.D..nysjED.....H0yib9CP..fRompR+....rjIsQvO.A..KY3NL5ypE9QTIp.s.....D0hspG.....RwuAO8C...vT3nbB+.D..LElXF4O....XUJbN.....PWvnF6+.D..7kf1mzO....e8qtC7CP..fYb3G6+.H..f1FxSL.....n4QkJB.....ZSKAG+....j1CUa8O.A..o8Fod8Cf..vZfncG+.D..rFjLimOYlol1oT3tC....fcMQHs.....XWShK4O....28hS8......d8Toh+....fmdYQzO.A..3o8IL+C...Pe8VYm+.D..HMCM3PDQESTxD8CPDELUkjavUGcQ+fDV8TczAWczIwb5AWXP.fDgUmY38TDHn+TuUmajYVZkwFYPElbg01b.DP.C8FauUmbMEFbI4FYkgG.ATP......DvLPEjTA0D.AHPZjAP.JTfTuQWXzk1atAfcgwVckAP.IP.........7+..TAIUPMAP.BjFY.DvBETDakYWXzk1atAfcgwVckAP.IP.............TAIUPMAP.BjFY.DPCEjjavUGcF8lbsEFc.XWXrUWY.DPBD.............UPRETS.Df.oQF.A3PAOUGcvUGcF8lbsEFc.XWXrUWY.DPBD.........+O..UPRETS.Df.oQF.AbQAMk1Xx8Fbn8lak8jboUlazEFco8la.XWXrUWY.DPBD.............UPRETS.Df.oQF.A7PAEQVZzEDarA0arElbyAfcgwVckAP.IP.........7+..TAIUPMAP.BjFY.DvCEHTYg0lQuIWao41YO4F.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.OT.SkYFcRk1YnQWS0QWY.XWXrUWY.DPBD.............UPRETS.Df.oQF.AvPACUlazIWYMUGckAfcgwVckAP.IP.............TAIUPMAP.BjFY.DPBEvjYk0TczUF.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.JT.SyI0bMUGckAfcgwVckAP.IP.............TAIUPMAP.BjFY.D.CEHEayIkby0TczUF.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.LTfQrUmQxUWS0QWY.XWXrUWY.DPBD.............UPRETS.Df.oQF.AvPARwVcRIWcMUGckAfcgwVckAP.IP.............TAIUPMAP.BjFY.DvCEvTYlQmTocFZzM0ar8F.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.LTvPk4FcxU1Tuw1a.XWXrUWY.DPBD.............UPRETS.Df.oQF.AjPALYVYS8FauAfcgwVckAP.IP.............TAIUPMAP.BjFY.DfBEvzbRM2Tuw1a.XWXrUWY.DPBD.............UPRETS.Df.oQF.AvPARw1bRI2bS8FauAfcgwVckAP.IP.............TAIUPMAP.BjFY.D.CEXDa0Yjb0M0ar8F.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.LTfTrUmTxU2Tuw1a.XWXrUWY.DPBD.............UPRETS.Df.oQF.ArPAI4Fb0QGUxkVa.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.A.QALUlYzIUZmgFcLUlckwF.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.MTvPk4FcxUFSkYWYrAfcgwVckAP.IP.............TAIUPMAP.BjFY.DfBEvjYkwTY1UFa.XWXrUWY.DPBD.............UPRETS.Df.oQF.ArPALMmTywTY1UFa.XWXrUWY.DPBD.............UPRETS.Df.oQF.AzPARw1bRI2bLUlckwF.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.MTfQrUmQxUGSkYWYrAfcgwVckAP.IP.............TAIUPMAP.BjFY.DPCEHEa0Ikb0wTY1UFa.XWXrUWY.DPBD.............UPRETS.Df.oQF.A.QALUlYzIUZmgFcWkFYzgF.1EFa0UF.Aj.A........f+C.PEjTA0D.AHPZjAP.KT.SyI0bWkFYzgF.1EFa0UF.Aj.A........v+C.PEjTA0D.AHPZjAP.MTfTrMmTxM2UoQFcnAfcgwVckAP.IP.........3+..TAIUPMAP.BjFY.DPCEXDa0Yjb0cUZjQGZ.XWXrUWY.DPBD.....VUUU8O..UPRETS.Df.oQF.AzPARwVcRIWcWkFYzgF.1EFa0UF.Aj.A....fUUUU+C.PEjTA0D.AHPZjAP.OT.SkYFcRk1YnQGUowFc.XWXrUWY.DPBD.........9O..UPRETS.Df.oQF.AnPALMmTyQUZrQG.1EFa0UF.Aj.A........f+C.PEjTA0D.AHPZjAP.LTfTrMmTxMGUowFc.XWXrUWY.DPBD.........8O..UPRETS.Df.oQF.AvPAFwVcFIWcTkFazAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.D.CEHEa0Ikb0QUZrQG.1EFa0UF.Aj.A........n+C.PEjTA0D.AHPZjAP.PT.SkYFcRk1YnQGTuwVXxAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.DPCELTYtQmbkA0arElb.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.ArPALMmTyA0arElb.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.AzPARw1bRI2bP8FagIG.1EFa0UF.Aj.A........n+C.PEjTA0D.AHPZjAP.MTfQrUmQxUGTuwVXxAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.DPCEHEa0Ikb0A0arElb.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.APQALUlYzIUZmgFcBUVXscUZjQGZ.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.ADQACUlazIWYBUVXscUZjQGZ.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.A7PALMmTyITYg01UoQFcnAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.DPDEHEayIkbyITYg01UoQFcnAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.DPDEXDa0Yjb0ITYg01UoQFcnAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.DPDEHEa0Ikb0ITYg01UoQFcnAfcgwVckAP.IP.........5+..T.f..Y.fI.rB.3..P.fD.MAvW.PF.oIPDBXg.XHfFBzg.eHPIBfh.uH.MBXi.6rPN........BD..........X...................KnC"
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "SoundField By RODE",
									"origin" : "SoundField By RODE.auinfo",
									"type" : "AudioUnit",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "SoundField By RODE.auinfo",
										"plugindisplayname" : "SoundField By RODE",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 1937404001,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "2954.hAGaoMGcv.C1AHv.DTfAGfPBJrvDTTgEWvUag4VclE1XzUmbkIGUjEFcgwUYrUVak4Fcs3VXsU1UyUmXzkGbkckckI2bo8laTQWdvU1WP7fZ0MVYPwVcmklaSQWXzUFUtEVakIgTOQTQOEQ.jB..............yDvJHNA.....A3hJYC....P.tf3s+....Dvby44O.B..JHf0l.....fDuO2j.....Hg7VjE.....RHOc27C...vFMAQN+....PBLjn7O....jvF5D9CP...ILeKC9rZgevBqnFH.....r75RGA.....KulZI+....DCS+OE.....w7jnY.....PLO8+89.H..DSoI99O.A..3Phoc8CP..PNCvhn+.D..nysjED.....H0yib9CP..fRompR+....rjIsQvO.A..KY3NL5ypE9QTIp.s.....D0hspG.....RwuAO8C...vT3nbB+.D..LElXF4O....XUJbN.....PWvnF6+.D..7kf1mzO....e8qtC7CP..fYb3G6+.H..f1FxSL.....n4QkJB.....ZSKAG+....j1CUa8O.A..o8Fod8Cf..vZfncG+.D..rFjLimOYlol1oT3tC....fcMQHs.....XWShK4O....28hS8......d8Toh+....fmdYQzO.A..3o8IL+C...Pe8VYm+.D..HMCM3PDQESTxD8CPDELUkjavUGcQ+fDV8TczAWczIwb5AWXP.fDgUmY38TDHn+TuUmajYVZkwFYPElbg01b.DP.C8FauUmbMEFbI4FYkgG.ATP......DvLPEjTA0D.AHPZjAP.JTfTuQWXzk1atAfcgwVckAP.IP.........7+..TAIUPMAP.BjFY.DvBETDakYWXzk1atAfcgwVckAP.IP.............TAIUPMAP.BjFY.DPCEjjavUGcF8lbsEFc.XWXrUWY.DPBD.............UPRETS.Df.oQF.A3PAOUGcvUGcF8lbsEFc.XWXrUWY.DPBD.........+O..UPRETS.Df.oQF.AbQAMk1Xx8Fbn8lak8jboUlazEFco8la.XWXrUWY.DPBD.............UPRETS.Df.oQF.A7PAEQVZzEDarA0arElbyAfcgwVckAP.IP.........7+..TAIUPMAP.BjFY.DvCEHTYg0lQuIWao41YO4F.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.OT.SkYFcRk1YnQWS0QWY.XWXrUWY.DPBD.............UPRETS.Df.oQF.AvPACUlazIWYMUGckAfcgwVckAP.IP.............TAIUPMAP.BjFY.DPBEvjYk0TczUF.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.JT.SyI0bMUGckAfcgwVckAP.IP.............TAIUPMAP.BjFY.D.CEHEayIkby0TczUF.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.LTfQrUmQxUWS0QWY.XWXrUWY.DPBD.............UPRETS.Df.oQF.AvPARwVcRIWcMUGckAfcgwVckAP.IP.............TAIUPMAP.BjFY.DvCEvTYlQmTocFZzM0ar8F.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.LTvPk4FcxU1Tuw1a.XWXrUWY.DPBD.............UPRETS.Df.oQF.AjPALYVYS8FauAfcgwVckAP.IP.............TAIUPMAP.BjFY.DfBEvzbRM2Tuw1a.XWXrUWY.DPBD.............UPRETS.Df.oQF.AvPARw1bRI2bS8FauAfcgwVckAP.IP.............TAIUPMAP.BjFY.D.CEXDa0Yjb0M0ar8F.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.LTfTrUmTxU2Tuw1a.XWXrUWY.DPBD.............UPRETS.Df.oQF.ArPAI4Fb0QGUxkVa.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.A.QALUlYzIUZmgFcLUlckwF.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.MTvPk4FcxUFSkYWYrAfcgwVckAP.IP.............TAIUPMAP.BjFY.DfBEvjYkwTY1UFa.XWXrUWY.DPBD.............UPRETS.Df.oQF.ArPALMmTywTY1UFa.XWXrUWY.DPBD.............UPRETS.Df.oQF.AzPARw1bRI2bLUlckwF.1EFa0UF.Aj.A............PEjTA0D.AHPZjAP.MTfQrUmQxUGSkYWYrAfcgwVckAP.IP.............TAIUPMAP.BjFY.DPCEHEa0Ikb0wTY1UFa.XWXrUWY.DPBD.............UPRETS.Df.oQF.A.QALUlYzIUZmgFcWkFYzgF.1EFa0UF.Aj.A........f+C.PEjTA0D.AHPZjAP.KT.SyI0bWkFYzgF.1EFa0UF.Aj.A........v+C.PEjTA0D.AHPZjAP.MTfTrMmTxM2UoQFcnAfcgwVckAP.IP.........3+..TAIUPMAP.BjFY.DPCEXDa0Yjb0cUZjQGZ.XWXrUWY.DPBD.....VUUU8O..UPRETS.Df.oQF.AzPARwVcRIWcWkFYzgF.1EFa0UF.Aj.A....fUUUU+C.PEjTA0D.AHPZjAP.OT.SkYFcRk1YnQGUowFc.XWXrUWY.DPBD.........9O..UPRETS.Df.oQF.AnPALMmTyQUZrQG.1EFa0UF.Aj.A........f+C.PEjTA0D.AHPZjAP.LTfTrMmTxMGUowFc.XWXrUWY.DPBD.........8O..UPRETS.Df.oQF.AvPAFwVcFIWcTkFazAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.D.CEHEa0Ikb0QUZrQG.1EFa0UF.Aj.A........n+C.PEjTA0D.AHPZjAP.PT.SkYFcRk1YnQGTuwVXxAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.DPCELTYtQmbkA0arElb.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.ArPALMmTyA0arElb.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.AzPARw1bRI2bP8FagIG.1EFa0UF.Aj.A........n+C.PEjTA0D.AHPZjAP.MTfQrUmQxUGTuwVXxAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.DPCEHEa0Ikb0A0arElb.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.APQALUlYzIUZmgFcBUVXscUZjQGZ.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.ADQACUlazIWYBUVXscUZjQGZ.XWXrUWY.DPBD........f9O..UPRETS.Df.oQF.A7PALMmTyITYg01UoQFcnAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.DPDEHEayIkbyITYg01UoQFcnAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.DPDEXDa0Yjb0ITYg01UoQFcnAfcgwVckAP.IP.........5+..TAIUPMAP.BjFY.DPDEHEa0Ikb0ITYg01UoQFcnAfcgwVckAP.IP.........5+..T.f..Y.fI.rB.3..P.fD.MAvW.PF.oIPDBXg.XHfFBzg.eHPIBfh.uH.MBXi.6rPN........BD..........X...................KnC"
									}
,
									"fileref" : 									{
										"name" : "SoundField By RODE",
										"filename" : "SoundField By RODE.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "6fad38416c0db4a3a3a19630f842fe4e"
									}

								}
 ]
						}

					}
,
					"text" : "audiounit~ 4 4 \"SoundField By RODE\"",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"midpoints" : [ 178.833333333333314, 264.0, 164.5, 264.0 ],
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"midpoints" : [ 157.388888888888886, 264.0, 147.833333333333343, 264.0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 135.944444444444457, 264.0, 131.166666666666686, 264.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 114.5, 264.0, 114.5, 264.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 54.5, 87.0, 30.0, 87.0, 30.0, 165.0, 54.5, 165.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 54.5, 165.0, 30.0, 165.0, 30.0, 207.0, 54.5, 207.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 114.5, 204.0, 114.5, 204.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 54.5, 267.0, 114.5, 267.0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 54.5, 237.0, 90.0, 237.0, 90.0, 207.0, 114.5, 207.0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 189.5, 236.0, 114.5, 236.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 54.5, 117.0, 69.0, 117.0, 69.0, 165.0, 189.5, 165.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 54.5, 204.0, 90.0, 204.0, 90.0, 267.0, 114.5, 267.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 3 ],
					"midpoints" : [ 146.0, 234.0, 307.5, 234.0 ],
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"midpoints" : [ 135.5, 234.0, 243.166666666666657, 234.0 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"midpoints" : [ 125.0, 234.0, 178.833333333333314, 234.0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 114.5, 234.0, 114.5, 234.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 156.5, 243.0, 81.0, 243.0, 81.0, 207.0, 54.5, 207.0 ],
					"source" : [ "obj-6", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 54.5, 57.0, 30.0, 57.0, 30.0, 165.0, 114.5, 165.0 ],
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
				"name" : "SoundField By RODE.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
