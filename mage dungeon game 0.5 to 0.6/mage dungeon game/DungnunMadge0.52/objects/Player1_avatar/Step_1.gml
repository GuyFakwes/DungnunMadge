/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 7CDCAEE1
/// @DnDInput : 2
/// @DnDArgument : "target" "global.avatarpositiony"
/// @DnDArgument : "target_1" "global.avatarpositionx"
/// @DnDArgument : "instvar" "1"
global.avatarpositiony = y;
global.avatarpositionx = x;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 61654AB7
/// @DnDArgument : "key" "ord("T")"
var l61654AB7_0;l61654AB7_0 = keyboard_check_pressed(ord("T"));if (l61654AB7_0){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 5479B04E
	/// @DnDParent : 61654AB7
	/// @DnDArgument : "msg" "global.avatar_move_x"
	show_debug_message(string(global.avatar_move_x));}