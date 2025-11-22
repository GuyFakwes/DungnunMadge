/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 4C4FC0F0
/// @DnDArgument : "msg" ""debuging""
show_debug_message(string("debuging"));

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 767E314B
/// @DnDApplyTo : {Player1_avatar}
with(Player1_avatar) {
x = xstart;y = ystart;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02DD083B
/// @DnDArgument : "expr" "maxmana"
/// @DnDArgument : "var" "playermana"
playermana = maxmana;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3D8F6577
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "value" "global.player_Lives-1"
/// @DnDArgument : "var" "global.player_Lives"
with(Player1_avatar) {
global.player_Lives = global.player_Lives-1;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5BC54F56
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDArgument : "op" "3"
if(global.player_Lives <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6738D9B2
	/// @DnDDisabled : 1
	/// @DnDApplyTo : life_1
	/// @DnDParent : 5BC54F56


	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4FB95F59
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 5BC54F56
	with(Player1_avatar) instance_destroy();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 702AD947
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 099A959A
/// @DnDDisabled : 1
/// @DnDParent : 702AD947
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 019F000F
/// @DnDDisabled : 1
/// @DnDApplyTo : life_2
/// @DnDParent : 099A959A

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3E7D0EB9
/// @DnDDisabled : 1
/// @DnDParent : 702AD947
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E59F7E5
/// @DnDDisabled : 1
/// @DnDParent : 3E7D0EB9
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDArgument : "value" "2"
/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 398DB89F
/// @DnDDisabled : 1
/// @DnDApplyTo : life_3
/// @DnDParent : 6E59F7E5