/// @DnDAction : YoYo Games.Particles.Part_Type_Destroy
/// @DnDVersion : 1
/// @DnDHash : 74BD0BD1
/// @DnDArgument : "type" "global.Lazorball"
part_type_destroy(global.Lazorball);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 706265E6
/// @DnDArgument : "var" "global.player_Lives"
/// @DnDArgument : "op" "3"
if(global.player_Lives <= 0){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 50E29BCF
	/// @DnDParent : 706265E6
	/// @DnDArgument : "room" "MainMenu"
	/// @DnDSaveInfo : "room" "MainMenu"
	room_goto(MainMenu);}