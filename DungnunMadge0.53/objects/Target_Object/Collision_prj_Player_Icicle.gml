/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6F814665
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "Sprite32"
/// @DnDSaveInfo : "spriteind" "Sprite32"
sprite_index = Sprite32;
image_index = 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 43A67C4A
/// @DnDArgument : "var" "gate_1"
global.gate_1 = 0;

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 0FAC5F37
exit;

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 258FA9B2
/// @DnDArgument : "var" "global.keycount"
/// @DnDArgument : "object" "Obj_LevelKey"
/// @DnDSaveInfo : "object" "Obj_LevelKey"
global.keycount = instance_number(Obj_LevelKey);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01C6E252
/// @DnDArgument : "var" "global.keycount"
/// @DnDArgument : "op" "3"
if(global.keycount <= 0){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6088EB97
	/// @DnDParent : 01C6E252
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.player_key_count"
	global.player_key_count = 1;}