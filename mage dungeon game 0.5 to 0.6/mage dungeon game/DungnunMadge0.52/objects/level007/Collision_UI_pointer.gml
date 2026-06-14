/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 60BDC689
var l60BDC689_0;l60BDC689_0 = mouse_check_button_released(mb_left);if (l60BDC689_0){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 46015958
	/// @DnDParent : 60BDC689
	/// @DnDArgument : "value" "8"
	/// @DnDArgument : "var" "global.Currentlevel"
	global.Currentlevel = 8;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 77E94053
	/// @DnDParent : 60BDC689
	/// @DnDArgument : "room" "global.Currentlevel"
	room_goto(global.Currentlevel);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 74703762
	/// @DnDParent : 60BDC689
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "var" "global.player_Lives"
	global.player_Lives = 3;}