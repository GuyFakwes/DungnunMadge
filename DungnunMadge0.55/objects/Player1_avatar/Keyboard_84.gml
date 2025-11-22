/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 50A9109E
exit;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 650D08D9
/// @DnDApplyTo : all
with(all) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5CC07B97
instance_destroy();

/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 4664290B
/// @DnDArgument : "filename" ""save01.ini""
ini_open("save01.ini");

/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 46168430
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""inventory""
/// @DnDArgument : "key" ""tokens""
/// @DnDArgument : "value" "global.player_points"
ini_write_real("inventory", "tokens", global.player_points);

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 48C08E76
ini_close();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0DC7C3F0
/// @DnDArgument : "value" "global.Currentlevel+1"
/// @DnDArgument : "var" "global.Currentlevel"
global.Currentlevel = global.Currentlevel+1;

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 5BC38EB4
if(room == room_last){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 64336BC6
	/// @DnDParent : 5BC38EB4
	/// @DnDArgument : "room" "MainMenu"
	/// @DnDSaveInfo : "room" "MainMenu"
	room_goto(MainMenu);}

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 63261AD2
/// @DnDArgument : "not" "1"
if(room != room_last){	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1F8DA681
	/// @DnDParent : 63261AD2
	room_goto_next();}