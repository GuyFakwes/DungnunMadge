/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5F491C72
/// @DnDArgument : "msg" ""debuging""
show_debug_message(string("debuging"));

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 61ACB991
/// @DnDApplyTo : {Player1_avatar}
with(Player1_avatar) {
x = xstart;y = ystart;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 61213B7A
/// @DnDArgument : "expr" "maxmana"
/// @DnDArgument : "var" "playermana"
playermana = maxmana;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 56A93C6A
/// @DnDArgument : "value" "global.player_Lives-1"
/// @DnDArgument : "var" "global.player_Lives"
global.player_Lives = global.player_Lives-1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07DD374E
/// @DnDDisabled : 1
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 23191941
/// @DnDDisabled : 1
/// @DnDApplyTo : {UI_life_1}
/// @DnDParent : 07DD374E


/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 36C7B218
/// @DnDDisabled : 1
/// @DnDApplyTo : {Player1_avatar}
/// @DnDParent : 07DD374E

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3D84BA3E
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 695246AA
/// @DnDDisabled : 1
/// @DnDParent : 3D84BA3E
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0315B70E
/// @DnDDisabled : 1
/// @DnDApplyTo : {UI_life_2}
/// @DnDParent : 695246AA

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2B55212F
/// @DnDDisabled : 1
/// @DnDParent : 3D84BA3E
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E0BD9E1
/// @DnDDisabled : 1
/// @DnDParent : 2B55212F
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDArgument : "value" "2"
/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 77BDFC5A
/// @DnDDisabled : 1
/// @DnDApplyTo : {UI_life_3}
/// @DnDParent : 7E0BD9E1