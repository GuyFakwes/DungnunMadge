/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 256CCD36
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.gameispaused > 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1170077E
	/// @DnDParent : 256CCD36
	speed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 407D799D
	/// @DnDParent : 256CCD36
	/// @DnDArgument : "var" "global.gameispaused"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "1"
	if(global.gameispaused <= 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 152F583F
		/// @DnDParent : 407D799D
		/// @DnDArgument : "speed" "5"
		speed = 5;}

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 50600B1D
	/// @DnDParent : 256CCD36
	exit;}