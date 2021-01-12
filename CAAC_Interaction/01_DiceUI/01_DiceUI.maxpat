{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 41.0, 84.0, 1213.0, 570.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 632.0, 196.0, 70.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 514.25, 60.0, 105.0, 27.0 ],
					"text" : "Velocity:",
					"textcolor" : [ 0.780392156862745, 0.929411764705882, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1005.0, 45.0, 30.0, 270.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 548.25, 90.0, 37.0, 165.0 ],
					"size" : 70.0
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.168627450980392, 0.168627450980392, 0.168627450980392, 1.0 ],
					"grad2" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"id" : "obj-16",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 516.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 45.0, 143.5, 224.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-41",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 840.0, 285.0, 105.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 671.25, 90.0, 105.0, 30.0 ],
					"text" : "Play",
					"texton" : "Play"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 256.0, 70.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 671.25, 159.0, 105.0, 27.0 ],
					"text" : "Tempo:",
					"textcolor" : [ 0.780392156862745, 0.929411764705882, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-19",
					"maxclass" : "number",
					"maximum" : 350,
					"minimum" : 90,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 390.0, 285.0, 60.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 693.75, 188.0, 60.0, 29.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 285 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "number",
							"parameter_mmax" : 350.0,
							"parameter_mmin" : 90.0,
							"parameter_shortname" : "number",
							"parameter_type" : 3
						}

					}
,
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.168627450980392, 0.168627450980392, 0.168627450980392, 1.0 ],
					"grad2" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 516.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 652.5, 46.0, 142.5, 224.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-26",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 645.0, 285.0, 105.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 270.0, 300.0, 195.0, 30.0 ],
					"text" : "Palm Mute",
					"texton" : "Palm Mute"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-25",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 510.0, 285.0, 105.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 300.0, 195.0, 30.0 ],
					"text" : "Tremolo",
					"texton" : "Tremolo"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 48.0,
					"id" : "obj-12",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 706.0, 45.0, 90.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 270.0, 165.0, 90.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "textbutton[6]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "textbutton[6]",
							"parameter_type" : 2
						}

					}
,
					"text" : "P7",
					"texton" : "P7",
					"varname" : "textbutton[6]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 48.0,
					"id" : "obj-13",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 811.0, 45.0, 90.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 375.0, 165.0, 90.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "textbutton[7]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "textbutton[7]",
							"parameter_type" : 2
						}

					}
,
					"text" : "P8",
					"texton" : "P8",
					"varname" : "textbutton[7]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 48.0,
					"id" : "obj-14",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 601.0, 45.0, 90.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 165.0, 90.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "textbutton[5]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "textbutton[5]",
							"parameter_type" : 2
						}

					}
,
					"text" : "P6",
					"texton" : "P6",
					"varname" : "textbutton[5]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 48.0,
					"id" : "obj-15",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 496.0, 45.0, 90.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 165.0, 90.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "textbutton[4]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "textbutton[4]",
							"parameter_type" : 2
						}

					}
,
					"text" : "P5",
					"texton" : "P5",
					"varname" : "textbutton[4]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 48.0,
					"id" : "obj-11",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 285.0, 45.0, 90.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 270.0, 60.0, 90.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "textbutton[2]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "textbutton[2]",
							"parameter_type" : 2
						}

					}
,
					"text" : "P3",
					"texton" : "P3",
					"varname" : "textbutton[2]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 48.0,
					"id" : "obj-10",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 390.0, 45.0, 90.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 375.0, 60.0, 90.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "textbutton[3]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "textbutton[3]",
							"parameter_type" : 2
						}

					}
,
					"text" : "P4",
					"texton" : "P4",
					"varname" : "textbutton[3]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 48.0,
					"id" : "obj-8",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 180.0, 45.0, 90.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 60.0, 90.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "textbutton[1]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "textbutton[1]",
							"parameter_type" : 2
						}

					}
,
					"text" : "P2",
					"texton" : "P2",
					"varname" : "textbutton[1]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 48.0,
					"id" : "obj-5",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 75.0, 45.0, 90.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 60.0, 90.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "textbutton",
							"parameter_mmax" : 1,
							"parameter_shortname" : "textbutton",
							"parameter_type" : 2
						}

					}
,
					"text" : "P1",
					"texton" : "P1",
					"varname" : "textbutton"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.168627450980392, 0.168627450980392, 0.168627450980392, 1.0 ],
					"grad2" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 516.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 44.5, 46.0, 435.5, 224.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1005.0, 405.0, 37.0, 22.0 ],
					"text" : "s osc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1005.0, 345.0, 75.0, 22.0 ],
					"text" : "prepend /vel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 405.0, 37.0, 22.0 ],
					"text" : "s osc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 345.0, 81.0, 22.0 ],
					"text" : "prepend /play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 645.0, 343.0, 93.0, 22.0 ],
					"text" : "prepend /pmute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 510.0, 343.0, 99.0, 22.0 ],
					"text" : "prepend /tremolo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 405.0, 37.0, 22.0 ],
					"text" : "s osc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 343.0, 93.0, 22.0 ],
					"text" : "prepend /tempo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 375.0, 35.0, 22.0 ],
					"text" : "r osc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 303.0, 37.0, 22.0 ],
					"text" : "s osc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 263.0, 103.0, 22.0 ],
					"text" : "prepend /patterns"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 414.0, 142.0, 22.0 ],
					"text" : "udpsend localhost 18000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 225.0, 108.0, 22.0 ],
					"text" : "pak 0 0 0 0 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"grad2" : [ 0.168627450980392, 0.168627450980392, 0.168627450980392, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 510.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 30.0, 780.0, 334.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 3 ],
					"midpoints" : [ 399.5, 210.0, 122.642857142857139, 210.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 2 ],
					"midpoints" : [ 294.5, 210.0, 109.928571428571431, 210.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 6 ],
					"midpoints" : [ 715.5, 210.0, 160.785714285714278, 210.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 7 ],
					"midpoints" : [ 820.5, 210.0, 173.5, 210.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 5 ],
					"midpoints" : [ 610.5, 210.0, 148.071428571428555, 210.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 4 ],
					"midpoints" : [ 505.5, 210.0, 135.357142857142861, 210.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 399.5, 366.0, 399.5, 366.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 519.5, 390.0, 399.5, 390.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 654.5, 390.0, 399.5, 390.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 84.5, 138.0, 84.5, 138.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"midpoints" : [ 189.5, 210.0, 97.214285714285722, 210.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10" : [ "textbutton[3]", "textbutton[3]", 0 ],
			"obj-11" : [ "textbutton[2]", "textbutton[2]", 0 ],
			"obj-12" : [ "textbutton[6]", "textbutton[6]", 0 ],
			"obj-13" : [ "textbutton[7]", "textbutton[7]", 0 ],
			"obj-14" : [ "textbutton[5]", "textbutton[5]", 0 ],
			"obj-15" : [ "textbutton[4]", "textbutton[4]", 0 ],
			"obj-19" : [ "number", "number", 0 ],
			"obj-5" : [ "textbutton", "textbutton", 0 ],
			"obj-8" : [ "textbutton[1]", "textbutton[1]", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
