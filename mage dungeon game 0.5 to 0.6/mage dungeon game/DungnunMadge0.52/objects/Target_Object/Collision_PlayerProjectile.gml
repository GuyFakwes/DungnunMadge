/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 37B02FC7
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "Sprite32"
/// @DnDSaveInfo : "spriteind" "Sprite32"
sprite_index = Sprite32;
image_index = 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 003BD832
/// @DnDApplyTo : {woodwall_object}
with(woodwall_object) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 6E238F87
/// @DnDArgument : "var" "global.keycount"
/// @DnDArgument : "object" "LevelKey"
/// @DnDSaveInfo : "object" "LevelKey"
global.keycount = instance_number(Obj_LevelKey);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B032424
/// @DnDArgument : "var" "global.keycount"
/// @DnDArgument : "op" "3"
if(global.keycount <= 0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 61D07C6C
	/// @DnDParent : 0B032424
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.player_key_count"
	global.player_key_count = 1;
}