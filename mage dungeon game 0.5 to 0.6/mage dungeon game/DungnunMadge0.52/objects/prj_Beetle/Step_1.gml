/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 3B06953E
exit;

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 38C46B8F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "size" "1"
effect_create_below(8, x + 0, y + 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 126F52DD
/// @DnDArgument : "speed" "20"
/// @DnDArgument : "speed_relative" "1"
speed += 20;

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 3F2CE938
exit;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 6ABED4CA
/// @DnDApplyTo : {ButtBeetle}
/// @DnDArgument : "direction" "180-(projectileno/2)"
with(ButtBeetle) direction = 180-(projectileno/2);