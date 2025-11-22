/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 41848965
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1"
if(global.gameispaused <= 1){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 288CD9AA
	/// @DnDParent : 41848965
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "var" "gameispaused"
	global.gameispaused = 3;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D559DE9
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "3"
if(global.gameispaused >= 3){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1E4C0A26
	/// @DnDParent : 1D559DE9
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "gameispaused"
	global.gameispaused = 1;}