/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 109D99C6
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.gameispaused > 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4EFFD79C
	/// @DnDParent : 109D99C6
	speed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C0E9772
	/// @DnDParent : 109D99C6
	/// @DnDArgument : "var" "global.gameispaused"
	/// @DnDArgument : "op" "2"
	if(global.gameispaused > 0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 257951D2
		/// @DnDParent : 5C0E9772
		/// @DnDArgument : "speed" "20"
		speed = 20;}

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2B9D6F58
	/// @DnDParent : 109D99C6
	exit;}

/// @DnDAction : YoYo Games.Particles.Part_Emit_Region
/// @DnDVersion : 1
/// @DnDHash : 77DD969D
/// @DnDArgument : "left_relative" "1"
/// @DnDArgument : "top_relative" "1"
/// @DnDArgument : "right" "0"
/// @DnDArgument : "right_relative" "1"
/// @DnDArgument : "bottom" "0"
/// @DnDArgument : "bottom_relative" "1"
/// @DnDArgument : "system" "global.P_system2"
/// @DnDArgument : "emitter" "playerprojectileemitter"
/// @DnDArgument : "shape" "1"
part_emitter_region(global.P_system2, playerprojectileemitter, x + 0, x + 0, y + 0, y + 0, ps_shape_ellipse, ps_distr_linear);