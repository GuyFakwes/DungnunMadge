/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AE1FF45
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.gameispaused > 1){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 21A6CE04
	/// @DnDParent : 4AE1FF45
	exit;}

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 0FA703FC
/// @DnDArgument : "target" "movementspeedx"
/// @DnDArgument : "instvar" "8"
movementspeedx = hspeed;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 46742BE8
/// @DnDArgument : "xscale" "-sign(movementspeedx)"
image_xscale = -sign(movementspeedx);image_yscale = 1;

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
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "90"
if(aggro >= 90){	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 3C0EC579
	/// @DnDParent : 6053DAB6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "7"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FFFFFF00"
	effect_create_below(7, x + 0, y + 0, 1, $FFFFFF00 & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4803C666
	/// @DnDParent : 6053DAB6
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "prj_EnemyLaser"
	/// @DnDSaveInfo : "objectid" "prj_EnemyLaser"
	instance_create_layer(x + 0, y + 0, "Instances", prj_EnemyLaser);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 768B72B0
	/// @DnDParent : 6053DAB6
	/// @DnDArgument : "var" "aggro"
	aggro = 0;}