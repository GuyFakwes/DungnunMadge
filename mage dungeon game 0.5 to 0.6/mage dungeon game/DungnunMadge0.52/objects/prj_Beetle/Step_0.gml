/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 53E85BD8
/// @DnDArgument : "angle" "-135"
image_angle = -135;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 6ABED4CA
/// @DnDArgument : "direction" "ButtBeetle.direction-180"
direction = ButtBeetle.direction-180;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 126F52DD
/// @DnDArgument : "speed" "20"
/// @DnDArgument : "speed_relative" "1"
speed += 20;

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 38C46B8F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "size" "2"
effect_create_below(8, x + 0, y + 0, 2, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 3F2CE938
exit;