/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 55276684
var l55276684_0;l55276684_0 = mouse_check_button_pressed(mb_left);if (l55276684_0){	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 1178F992
	/// @DnDParent : 55276684
	/// @DnDArgument : "filename" ""save1.ini""
	ini_open("save1.ini");

	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 6BE1E315
	/// @DnDParent : 55276684
	/// @DnDArgument : "var" "global.player_points"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""inventory""
	/// @DnDArgument : "key" ""tokens""
	/// @DnDArgument : "default" ""0""
	global.player_points = ini_read_real("inventory", "tokens", "0");

	/// @DnDAction : YoYo Games.Files.Close_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 3B02FA86
	/// @DnDParent : 55276684
	ini_close();}