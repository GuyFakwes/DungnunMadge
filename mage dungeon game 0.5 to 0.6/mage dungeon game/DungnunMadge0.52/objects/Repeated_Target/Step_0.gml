/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6989B873
/// @DnDArgument : "var" "global.targetactive"
/// @DnDArgument : "value" "1"
if(global.targetactive == 1){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 192E4EF6
	/// @DnDParent : 6989B873
	/// @DnDArgument : "var" "global.targetactive"
	global.targetactive = 0;}

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 2A25E16A
/// @DnDArgument : "var" "global.timer5"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "600"
while ((global.timer5 < 600)) {
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1CD9B5F5
	/// @DnDParent : 2A25E16A
	/// @DnDArgument : "value" "global.timer5+(1/delta_time)"
	/// @DnDArgument : "var" "global.timer5"
	global.timer5 = global.timer5+(1/delta_time);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36B2382E
/// @DnDArgument : "var" "global.timer5"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "600"
if(global.timer5 >= 600){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0B8DD3FA
	/// @DnDParent : 36B2382E
	/// @DnDArgument : "spriteind" "Sprite32"
	/// @DnDSaveInfo : "spriteind" "Sprite32"
	sprite_index = Sprite32;
	image_index = 0;}