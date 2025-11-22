/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 65B44612
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "Sprite32"
/// @DnDSaveInfo : "spriteind" "Sprite32"
sprite_index = Sprite32;
image_index = 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1214E1C1
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "global.targetactive"
global.targetactive = 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 292D6328
/// @DnDArgument : "objectid" "Ene_fFredball_moves"
/// @DnDSaveInfo : "objectid" "Ene_fFredball_moves"
instance_create_layer(0, 0, "Instances", Ene_fFredball_moves);