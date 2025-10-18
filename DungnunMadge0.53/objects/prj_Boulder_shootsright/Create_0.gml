/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7ADD2AC5
/// @DnDArgument : "var" "animationstillgoing"
var animationstillgoing;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 58D5B397
/// @DnDArgument : "colour" "$FFEFEFEF"
/// @DnDArgument : "alpha" "false"
image_blend = $FFEFEFEF & $ffffff;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 2CD0CD5D
/// @DnDArgument : "x" "45"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "35"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + 45, y + 35);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 27BF49EF
/// @DnDArgument : "speed" "5"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "1"
hspeed += 5;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 06AAB17D
/// @DnDArgument : "speed" "-3"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "2"
vspeed += -3;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 44590D60
/// @DnDArgument : "xscale" "3"
/// @DnDArgument : "yscale" "3"
image_xscale = 3;image_yscale = 3;

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 1ACDBEFB
exit;

/// @DnDAction : YoYo Games.Particles.Part_Emit_Create
/// @DnDVersion : 1
/// @DnDHash : 536C9EF8
/// @DnDArgument : "var" "lazoremitter"
/// @DnDArgument : "system" "global.P_system1"
lazoremitter = part_emitter_create(global.P_system1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 70128AB2
/// @DnDArgument : "type" "global.Lazorball"
/// @DnDArgument : "minsize" "0.5"
/// @DnDArgument : "maxsize" "0.7"
part_type_size(global.Lazorball, 0.5, 0.7, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 2EC4E49B
/// @DnDArgument : "typ" "global.Lazorball"
/// @DnDArgument : "minlife" "1"
/// @DnDArgument : "maxlife" "1"
part_type_life(global.Lazorball, 1, 1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 5449ACCA
/// @DnDArgument : "type" "global.Lazorball"
/// @DnDArgument : "startcol" "$FFFFFF00"
/// @DnDArgument : "midcol" "$FFFF2600"
/// @DnDArgument : "endcol" "$FFFFFFFF"
part_type_colour3(global.Lazorball, $FFFFFF00 & $FFFFFF, $FFFF2600 & $FFFFFF, $FFFFFFFF & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 54B7AA8C
/// @DnDArgument : "type" "global.Lazorball"
/// @DnDArgument : "start" "255"
/// @DnDArgument : "middle" "102"
/// @DnDArgument : "end" "0"
part_type_alpha3(global.Lazorball, 255, 102, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 431A0E9B
/// @DnDArgument : "type" "global.Lazorball"
/// @DnDArgument : "minspeed" "0"
/// @DnDArgument : "maxspeed" "0"
part_type_speed(global.Lazorball, 0, 0, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 67C6BD07
/// @DnDArgument : "type" "global.Lazorball"
/// @DnDArgument : "shape" "pt_shape_flare"
part_type_shape(global.Lazorball, pt_shape_flare);

/// @DnDAction : YoYo Games.Particles.Part_Type_Gravity
/// @DnDVersion : 1
/// @DnDHash : 7B8788AD
/// @DnDArgument : "type" "global.Lazorball"
/// @DnDArgument : "direction" "270"
part_type_gravity(global.Lazorball, 0, 270);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 2753AAF4
/// @DnDArgument : "type" "global.Lazorball"
part_type_direction(global.Lazorball, 0, 360, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Orientation
/// @DnDVersion : 1
/// @DnDHash : 0659D251
/// @DnDArgument : "type" "global.Lazorball"
/// @DnDArgument : "incr" "5"
part_type_orientation(global.Lazorball, 0, 360, 5, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Emit_Emit
/// @DnDVersion : 1
/// @DnDHash : 212C986E
/// @DnDArgument : "system" "global.P_system1"
/// @DnDArgument : "emitter" "lazoremitter"
/// @DnDArgument : "type" "global.Lazorball"
/// @DnDArgument : "event" "1"
/// @DnDArgument : "number" "3"
part_emitter_stream(global.P_system1, lazoremitter, global.Lazorball, 3);