/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E0D4CAF
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.gameispaused > 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 583A8F25
	/// @DnDParent : 1E0D4CAF
	speed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78522EF2
	/// @DnDParent : 1E0D4CAF
	/// @DnDArgument : "var" "global.gameispaused"
	/// @DnDArgument : "op" "2"
	if(global.gameispaused > 0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3F53B034
		/// @DnDParent : 78522EF2
		/// @DnDArgument : "speed" "20"
		speed = 20;}

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2CCCCE74
	/// @DnDParent : 1E0D4CAF
	exit;}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 53509B59
/// @DnDArgument : "speed" "0.05"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "2"
vspeed += 0.05;