/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 2B8AA2E0
var l2B8AA2E0_0;
l2B8AA2E0_0 = mouse_check_button_released(mb_left);
if (l2B8AA2E0_0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6253E6C7
	/// @DnDParent : 2B8AA2E0
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.Currentlevel"
	global.Currentlevel = 1;
}