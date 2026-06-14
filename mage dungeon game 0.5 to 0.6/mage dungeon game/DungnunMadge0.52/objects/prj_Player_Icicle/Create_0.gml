/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 146823D6
/// @DnDArgument : "var" "myx"
myx = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1A262133
/// @DnDArgument : "var" "myy"
myy = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5998CB7B
/// @DnDArgument : "expr" "UI_pointer.x"
/// @DnDArgument : "var" "mousex"
mousex = UI_pointer.x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0BFBC1CC
/// @DnDArgument : "expr" "UI_pointer.y"
/// @DnDArgument : "var" "mousey"
mousey = UI_pointer.y;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 694A87F8
/// @DnDArgument : "target" "myx"
myx = x;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 3204AAF9
/// @DnDArgument : "target" "myy"
/// @DnDArgument : "instvar" "1"
myy = y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 21DEBC6C
/// @DnDArgument : "x" "mousex"
/// @DnDArgument : "y" "mousey"
direction = point_direction(x, y, mousex, mousey);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 58D5B397
/// @DnDArgument : "colour" "$FFEFEFEF"
/// @DnDArgument : "alpha" "false"
image_blend = $FFEFEFEF & $ffffff;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 34288B90
/// @DnDArgument : "speed" "10"
speed = 10;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 44590D60
/// @DnDArgument : "xscale" "1.5"
/// @DnDArgument : "yscale" "1.5"
image_xscale = 1.5;image_yscale = 1.5;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 116858C7
/// @DnDArgument : "var" "temprotation"
/// @DnDArgument : "value" "darctan2((mousey-myy),-(mousex-myx))"
var temprotation = darctan2((mousey-myy),-(mousex-myx));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 294025E9
/// @DnDArgument : "msg" ""darctan2 determines the rotation of projectile""
show_debug_message(string("darctan2 determines the rotation of projectile"));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 532212E0
/// @DnDArgument : "angle" "temprotation"
image_angle = temprotation;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7F6E5FB3
/// @DnDArgument : "soundid" "WAV_Fireball_Launch_1"
/// @DnDArgument : "gain" "0.5"
/// @DnDArgument : "pitch" "7"
/// @DnDSaveInfo : "soundid" "WAV_Fireball_Launch_1"
audio_play_sound(WAV_Fireball_Launch_1, 0, 0, 0.5, undefined, 7);

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 238064F7
exit;

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 6C7D066D
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