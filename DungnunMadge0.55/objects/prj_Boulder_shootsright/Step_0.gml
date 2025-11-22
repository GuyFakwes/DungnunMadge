/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C79FC22
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.gameispaused > 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 61C3D835
	/// @DnDParent : 7C79FC22
	speed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D72863A
	/// @DnDParent : 7C79FC22
	/// @DnDArgument : "var" "global.gameispaused"
	/// @DnDArgument : "op" "2"
	if(global.gameispaused > 0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 25E6C3C3
		/// @DnDParent : 1D72863A
		/// @DnDArgument : "speed" "20"
		speed = 20;}

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1A3E2326
	/// @DnDParent : 7C79FC22
	exit;}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 53509B59
/// @DnDArgument : "speed" "0.05"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "2"
vspeed += 0.05;

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 1CDDB5AF
exit;