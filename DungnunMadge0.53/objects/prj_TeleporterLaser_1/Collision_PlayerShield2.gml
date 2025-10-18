/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72ECB7FA
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "25"
with(Player1_avatar) var l72ECB7FA_0 = playermana >= 25;
if(l72ECB7FA_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18278661
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 72ECB7FA
	/// @DnDArgument : "expr" "playermana-50"
	/// @DnDArgument : "var" "playermana"
	with(Player1_avatar) {
	playermana = playermana-50;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5CDDF911
	/// @DnDParent : 72ECB7FA
	instance_destroy();
}