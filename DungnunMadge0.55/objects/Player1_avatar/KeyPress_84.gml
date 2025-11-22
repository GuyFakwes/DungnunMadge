/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 4DF63EFA
/// @DnDDisabled : 1


/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 32E92A8B
/// @DnDApplyTo : all
with(all) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7F42CCA2
instance_destroy();

/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 25E65178
/// @DnDArgument : "filename" ""save01.ini""
ini_open("save01.ini");

/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 57F7F217
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""inventory""
/// @DnDArgument : "key" ""tokens""
/// @DnDArgument : "value" "global.player_points"
ini_write_real("inventory", "tokens", global.player_points);

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 165FAECC
ini_close();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4C99E3D4
/// @DnDArgument : "value" "global.Currentlevel+1"
/// @DnDArgument : "var" "global.Currentlevel"
global.Currentlevel = global.Currentlevel+1;

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 067A017A
if(room == room_last){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5D234DAC
	/// @DnDParent : 067A017A
	/// @DnDArgument : "room" "MainMenu"
	/// @DnDSaveInfo : "room" "MainMenu"
	room_goto(MainMenu);}

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 30FAE191
/// @DnDArgument : "not" "1"
if(room != room_last){	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3390FB3C
	/// @DnDParent : 30FAE191
	room_goto_next();}