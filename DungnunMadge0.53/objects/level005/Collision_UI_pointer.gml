/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 60BDC689
var l60BDC689_0;
l60BDC689_0 = mouse_check_button_released(mb_left);
if (l60BDC689_0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 46015958
	/// @DnDParent : 60BDC689
	/// @DnDArgument : "value" "5"
	/// @DnDArgument : "var" "global.Currentlevel"
	global.Currentlevel = 5;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 026908DF
	/// @DnDParent : 60BDC689
	/// @DnDArgument : "room" "global.Currentlevel"
	room_goto(global.Currentlevel);
}