/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 211447EE
/// @DnDArgument : "var" "roomnumber"
/// @DnDArgument : "var_temp" "1"
var roomnumber = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 356E8067
/// @DnDArgument : "var" "roomnumber"
if(roomnumber == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 4184391D
	/// @DnDParent : 356E8067
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "var" "global.player_Lives"
	global.player_Lives = 3;}