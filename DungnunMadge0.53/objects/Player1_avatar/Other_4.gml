/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F4BE6D1
/// @DnDArgument : "var" "global.player_key_count"
global.player_key_count = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 10B94589
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "questdone"
questdone = 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 72E44419
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.player_key_count"
global.player_key_count += 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5A76DF0F
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "levelkeycount"
levelkeycount = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28EBF4B5
/// @DnDArgument : "expr" "maxmana*global.manacapbonus"
/// @DnDArgument : "var" "playermana"
playermana = maxmana*global.manacapbonus;

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 6BD86802
/// @DnDArgument : "var" "levelkeycount"
/// @DnDArgument : "object" "Obj_LevelKey"
/// @DnDSaveInfo : "object" "Obj_LevelKey"
levelkeycount = instance_number(Obj_LevelKey);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C08A061
/// @DnDArgument : "var" "global.xplayer"
global.xplayer = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3F3565B5
/// @DnDArgument : "var" "global.yplayer"
global.yplayer = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 615DD2BF
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.xplayer"
global.xplayer += 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 09523015
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.yplayer"
global.yplayer += 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05E41064
/// @DnDArgument : "var" "global.playerlives_assigned"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(global.playerlives_assigned == 1)){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3F86B5C8
	/// @DnDParent : 05E41064
	/// @DnDArgument : "msg" ""Forced Players lives""
	show_debug_message(string("Forced Players lives"));

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5C008BE9
	/// @DnDInput : 2
	/// @DnDParent : 05E41064
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "value_1" "1"
	/// @DnDArgument : "var" "global.player_Lives"
	/// @DnDArgument : "var_1" "global.playerlives_assigned"
	global.player_Lives = 3;
	global.playerlives_assigned = 1;}

/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 0DB19D43
/// @DnDArgument : "var" "isroomnumber"
/// @DnDArgument : "var_temp" "1"
var isroomnumber = room;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 505AEC48
/// @DnDInput : 2
/// @DnDArgument : "msg" ""Room Number is ""
/// @DnDArgument : "msg_1" "isroomnumber"
show_debug_message(string("Room Number is ") + @"
" + string(isroomnumber));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 03D5919D
/// @DnDArgument : "var" "isroomnumber"
/// @DnDArgument : "value" "Room001"
if(isroomnumber == Room001){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 30F50D7F
	/// @DnDInput : 2
	/// @DnDParent : 03D5919D
	/// @DnDArgument : "msg" ""Room Number is ""
	/// @DnDArgument : "msg_1" "isroomnumber"
	show_debug_message(string("Room Number is ") + @"
	" + string(isroomnumber));

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 09369465
	/// @DnDParent : 03D5919D
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "var" "global.player_Lives"
	global.player_Lives = 3;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 4FDBD940
	/// @DnDInput : 2
	/// @DnDParent : 03D5919D
	/// @DnDArgument : "msg" ""Set Lives to  ""
	/// @DnDArgument : "msg_1" "global.player_Lives"
	show_debug_message(string("Set Lives to  ") + @"
	" + string(global.player_Lives));}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5322F8EA
/// @DnDInput : 6
/// @DnDArgument : "value" "10"
/// @DnDArgument : "value_3" "1"
/// @DnDArgument : "value_5" "global.player_Lives"
/// @DnDArgument : "var" "avatar_movementspeed"
/// @DnDArgument : "var_1" "avatar_move_x"
/// @DnDArgument : "var_2" "avatar_move_y"
/// @DnDArgument : "var_3" "isAlive"
/// @DnDArgument : "var_4" "global.player_location"
/// @DnDArgument : "var_5" "player_Lives"
global.avatar_movementspeed = 10;
global.avatar_move_x = 0;
global.avatar_move_y = 0;
global.isAlive = 1;
global.player_location = 0;
global.player_Lives = global.player_Lives;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27322298
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "3"
if(global.player_Lives >= 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 308335B3
	/// @DnDParent : 27322298
	/// @DnDArgument : "xpos" "1920-100"
	/// @DnDArgument : "ypos" "1080-100"
	/// @DnDArgument : "var" "playerlife3"
	/// @DnDArgument : "objectid" "UI_life_3"
	/// @DnDArgument : "layer" ""GUI""
	/// @DnDSaveInfo : "objectid" "UI_life_3"
	playerlife3 = instance_create_layer(1920-100, 1080-100, "GUI", UI_life_3);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 72F938C5
	/// @DnDApplyTo : playerlife3
	/// @DnDParent : 27322298
	/// @DnDArgument : "colour" "$FF513B00"
	with(playerlife3) {
	image_blend = $FF513B00 & $ffffff;
	image_alpha = ($FF513B00 >> 24) / $ff;
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1646E58A
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "2"
if(global.player_Lives >= 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 23820D8F
	/// @DnDParent : 1646E58A
	/// @DnDArgument : "xpos" "1920-200"
	/// @DnDArgument : "ypos" "1080-100"
	/// @DnDArgument : "var" "playerlife2"
	/// @DnDArgument : "objectid" "UI_life_2"
	/// @DnDArgument : "layer" ""GUI""
	/// @DnDSaveInfo : "objectid" "UI_life_2"
	playerlife2 = instance_create_layer(1920-200, 1080-100, "GUI", UI_life_2);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 44FF7827
	/// @DnDApplyTo : playerlife2
	/// @DnDParent : 1646E58A
	/// @DnDArgument : "colour" "$FF6B4E00"
	with(playerlife2) {
	image_blend = $FF6B4E00 & $ffffff;
	image_alpha = ($FF6B4E00 >> 24) / $ff;
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00F95479
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(global.player_Lives >= 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 00BD97ED
	/// @DnDParent : 00F95479
	/// @DnDArgument : "xpos" "1920-300"
	/// @DnDArgument : "ypos" "1080-100"
	/// @DnDArgument : "var" "playerlife1"
	/// @DnDArgument : "objectid" "UI_life_1"
	/// @DnDArgument : "layer" ""GUI""
	/// @DnDSaveInfo : "objectid" "UI_life_1"
	playerlife1 = instance_create_layer(1920-300, 1080-100, "GUI", UI_life_1);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7F087356
	/// @DnDApplyTo : playerlife1
	/// @DnDParent : 00F95479
	/// @DnDArgument : "colour" "$FF896400"
	with(playerlife1) {
	image_blend = $FF896400 & $ffffff;
	image_alpha = ($FF896400 >> 24) / $ff;
	}}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 094CE85B
/// @DnDArgument : "xpos" "1920-1740"
/// @DnDArgument : "ypos" "1080-80"
/// @DnDArgument : "objectid" "Obj_Coins"
/// @DnDArgument : "layer" ""GUI""
/// @DnDSaveInfo : "objectid" "Obj_Coins"
instance_create_layer(1920-1740, 1080-80, "GUI", Obj_Coins);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 579ED0E8
/// @DnDArgument : "var" "player_key_count"
global.player_key_count = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 360598A8
/// @DnDArgument : "expr" "maxmana"
/// @DnDArgument : "var" "playermana"
playermana = maxmana;

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 2493B2EA
/// @DnDArgument : "var" "global.P_system1"
/// @DnDArgument : "persist" "1"
/// @DnDArgument : "partsys" "ParticleSystem4"
/// @DnDSaveInfo : "partsys" "ParticleSystem4"
global.P_system1 = part_system_create_layer("Instances", 1, ParticleSystem4);

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 10DB9989
/// @DnDArgument : "var" "global.P_system2"
/// @DnDArgument : "persist" "1"
/// @DnDArgument : "partsys" "ParticleSystem5"
/// @DnDSaveInfo : "partsys" "ParticleSystem5"
global.P_system2 = part_system_create_layer("Instances", 1, ParticleSystem5);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 3A82A3AE
/// @DnDArgument : "var" "global.Lazorball"
/// @DnDArgument : "blend" "1"
global.Lazorball = part_type_create();part_type_blend(global.Lazorball, true);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 60A235D2
/// @DnDArgument : "expr" "maxmana"
/// @DnDArgument : "var" "playermana"
playermana = maxmana;

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 544C0506
exit;

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 66698616
/// @DnDArgument : "var" "eyesglow"
/// @DnDArgument : "partsys" "glowsystem"
eyesglow = part_system_create_layer("Instances", 0, glowsystem);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 5545A1BE
/// @DnDArgument : "var" "eyesglowing"
/// @DnDArgument : "blend" "1"
eyesglowing = part_type_create();part_type_blend(eyesglowing, true);

/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 15A1105A
/// @DnDArgument : "type" "eyesglowing"
/// @DnDArgument : "sprite" "Eyes"
/// @DnDSaveInfo : "sprite" "Eyes"
part_type_sprite(eyesglowing, Eyes, true, false, false);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 4B585402
/// @DnDArgument : "type" "eyesglowing"
/// @DnDArgument : "maxsize" "0.2"
part_type_size(eyesglowing, 0.1, 0.2, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 061BE673
/// @DnDArgument : "type" "eyesglowing"
/// @DnDArgument : "startcol" "$FFFF7200"
/// @DnDArgument : "midcol" "$FFFFD60A"
/// @DnDArgument : "endcol" "$FFFFCC02"
part_type_colour3(eyesglowing, $FFFF7200 & $FFFFFF, $FFFFD60A & $FFFFFF, $FFFFCC02 & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Emit_Create
/// @DnDVersion : 1
/// @DnDHash : 66016993
/// @DnDArgument : "var" "glowemitter"
/// @DnDArgument : "system" "eyesglow"
glowemitter = part_emitter_create(eyesglow);