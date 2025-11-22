/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7ADD2AC5
/// @DnDArgument : "var" "animationstillgoing"
var animationstillgoing;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 2CD0CD5D
/// @DnDArgument : "x" "Player1_avatar.x"
/// @DnDArgument : "y" "Player1_avatar.y"
direction = point_direction(x, y, Player1_avatar.x, Player1_avatar.y);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 27BF49EF
/// @DnDArgument : "speed" "5"
speed = 5;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 44590D60
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
image_xscale = 0.5;image_yscale = 0.5;