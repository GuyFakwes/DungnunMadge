/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 60BDC689
var l60BDC689_0;l60BDC689_0 = mouse_check_button_released(mb_left);if (l60BDC689_0){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3C25F8C2
	/// @DnDParent : 60BDC689
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "var" "global.player_Lives"
	global.player_Lives = 3;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 46015958
	/// @DnDParent : 60BDC689
	/// @DnDArgument : "var" "global.Currentlevel"
	global.Currentlevel = 0;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7751B3E0
	/// @DnDParent : 60BDC689
	/// @DnDArgument : "room" "Arena_Mode"
	/// @DnDSaveInfo : "room" "Arena_Mode"
	room_goto(Arena_Mode);}