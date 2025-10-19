/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 28C544E5
/// @DnDInput : 3
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_2" "3"
/// @DnDArgument : "var" "global.Currentlevel"
/// @DnDArgument : "var_1" "global.playerlives_assigned"
/// @DnDArgument : "var_2" "global.player_Lives"
global.Currentlevel = 1;
global.playerlives_assigned = 0;
global.player_Lives = 3;

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