/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4FBF270B
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.player_key_count"
global.player_key_count += 1;

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 74D77385
exit;

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 7581BFDF
/// @DnDArgument : "var" "global.keycount"
/// @DnDArgument : "object" "LevelKey"
global.keycount = instance_number(LevelKey);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 503E776B
/// @DnDArgument : "var" "global.keycount"
/// @DnDArgument : "op" "3"
if(global.keycount <= 0){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2B8F421B
	/// @DnDParent : 503E776B
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.player_key_count"
	global.player_key_count = 1;}