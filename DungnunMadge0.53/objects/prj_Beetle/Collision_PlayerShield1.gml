/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 784C3353
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "25"
with(Player1_avatar) var l784C3353_0 = playermana >= 25;
if(l784C3353_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C183EC0
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 784C3353
	/// @DnDArgument : "expr" "playermana-25"
	/// @DnDArgument : "var" "playermana"
	with(Player1_avatar) {
	playermana = playermana-25;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7B9ECC0D
	/// @DnDParent : 784C3353
	instance_destroy();
}