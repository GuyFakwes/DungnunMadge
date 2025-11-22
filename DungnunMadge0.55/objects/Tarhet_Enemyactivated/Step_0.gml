/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7AD8BFD4
/// @DnDArgument : "var" "istriggered"
/// @DnDArgument : "value" "1"
if(istriggered == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12E38D2C
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 7AD8BFD4
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "questdone"
	with(Player1_avatar) {
	questdone = 1;
	
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5033DE9C
/// @DnDArgument : "var" "istriggered"
if(istriggered == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6316AF1B
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 5033DE9C
	/// @DnDArgument : "var" "questdone"
	with(Player1_avatar) {
	questdone = 0;
	
	}}