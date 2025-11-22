/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 35AD4543
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "Sprite32"
/// @DnDSaveInfo : "spriteind" "Sprite32"
sprite_index = Sprite32;
image_index = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 388B71DF
/// @DnDArgument : "var" "global.targetactive"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.targetactive > 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 49C9C7D8
	/// @DnDParent : 388B71DF
	/// @DnDArgument : "xpos" "500"
	/// @DnDArgument : "ypos" "500"
	/// @DnDArgument : "objectid" "Ene_fFredball_moves"
	/// @DnDSaveInfo : "objectid" "Ene_fFredball_moves"
	instance_create_layer(500, 500, "Instances", Ene_fFredball_moves);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 17D088D0
	/// @DnDParent : 388B71DF
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.targetactive"
	global.targetactive = 1;}