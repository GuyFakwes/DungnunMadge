/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 28C544E5
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "global.Currentlevel"
global.Currentlevel = 1;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 693E8293
/// @DnDArgument : "obj" "Player1_avatar"
/// @DnDSaveInfo : "obj" "Player1_avatar"
var l693E8293_0 = false;
l693E8293_0 = instance_exists(Player1_avatar);
if(l693E8293_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 197D9FCD
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 693E8293
	with(Player1_avatar) instance_destroy();
}