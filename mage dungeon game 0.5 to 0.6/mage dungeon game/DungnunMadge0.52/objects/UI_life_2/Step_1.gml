/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A07FB2B
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "2"
if(global.player_Lives < 2){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0D3936E6
	/// @DnDParent : 5A07FB2B
	instance_destroy();}