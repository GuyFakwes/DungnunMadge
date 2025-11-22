/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 294BCD70
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.gameispaused > 1){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 002C2D28
	/// @DnDParent : 294BCD70
	exit;}

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 04980045
/// @DnDArgument : "var" "aggro"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "6000"
while ((aggro < 6000)) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53F8E237
	/// @DnDParent : 04980045
	/// @DnDArgument : "expr" "aggro+1"
	/// @DnDArgument : "var" "aggro"
	aggro = aggro+1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4EDC3C18
	/// @DnDParent : 04980045
	/// @DnDArgument : "var" "aggro"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "90"
	if(!(aggro < 90)){	/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 588249D1
		/// @DnDParent : 4EDC3C18
		/// @DnDArgument : "x" "-10"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "7"
		/// @DnDArgument : "color" "$FF0278FF"
		effect_create_below(7, x + -10, y + 0, 0, $FF0278FF & $ffffff);}

	/// @DnDAction : YoYo Games.Loops.Break
	/// @DnDVersion : 1
	/// @DnDHash : 1ED9F37A
	/// @DnDParent : 04980045
	break;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6053DAB6
/// @DnDArgument : "var" "aggro"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "120+random_range(1,60)"
if(!(aggro < 120+random_range(1,60))){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4803C666
	/// @DnDParent : 6053DAB6
	/// @DnDArgument : "xpos" "-10"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Faceprojectile_left"
	/// @DnDSaveInfo : "objectid" "Faceprojectile_left"
	instance_create_layer(x + -10, y + 0, "Instances", Faceprojectile_left);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 768B72B0
	/// @DnDParent : 6053DAB6
	/// @DnDArgument : "var" "aggro"
	aggro = 0;}