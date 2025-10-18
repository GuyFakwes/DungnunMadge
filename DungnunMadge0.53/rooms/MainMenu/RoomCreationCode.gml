/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 28C544E5
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "global.Currentlevel"
global.Currentlevel = 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 118D8711
/// @DnDArgument : "var" "global.player_points"
global.player_points = 0;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 693E8293
/// @DnDArgument : "obj" "Player1_avatar"
/// @DnDSaveInfo : "obj" "Player1_avatar"
var l693E8293_0 = false;l693E8293_0 = instance_exists(Player1_avatar);if(l693E8293_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 197D9FCD
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 693E8293
	with(Player1_avatar) instance_destroy();}

/// @DnDAction : YoYo Games.Files.If_File_Exists
/// @DnDVersion : 1
/// @DnDHash : 63D89F82
/// @DnDArgument : "file" ""save01.ini""
/// @DnDArgument : "not" "1"
var l63D89F82_0 = file_exists("save01.ini");if(!l63D89F82_0){	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 1B6A0325
	/// @DnDParent : 63D89F82
	/// @DnDArgument : "filename" ""save01.ini""
	ini_open("save01.ini");

	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 166710EC
	/// @DnDParent : 63D89F82
	/// @DnDArgument : "var" "global.player_points"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""inventory""
	/// @DnDArgument : "key" ""tokens""
	/// @DnDArgument : "default" "0"
	global.player_points = ini_read_real("inventory", "tokens", 0);

	/// @DnDAction : YoYo Games.Files.Close_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 36BA9A5A
	/// @DnDParent : 63D89F82
	ini_close();}

/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 522ADF95
/// @DnDArgument : "filename" ""save01.ini""
ini_open("save01.ini");

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 3A579251
/// @DnDArgument : "var" "global.player_points"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""inventory""
/// @DnDArgument : "key" ""tokens""
/// @DnDArgument : "default" "0"
global.player_points = ini_read_real("inventory", "tokens", 0);

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 0D6ADE32
ini_close();