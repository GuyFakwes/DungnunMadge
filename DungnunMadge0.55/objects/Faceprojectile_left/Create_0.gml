/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 308E6B31
/// @DnDArgument : "colour" "$C92DD5FF"
image_blend = $C92DD5FF & $ffffff;
image_alpha = ($C92DD5FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 0C8C65E9
/// @DnDArgument : "x" "-30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + -30, y + 0);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 13159DFE
/// @DnDArgument : "speed" "20"
speed = 20;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 778AC1BE
image_xscale = 1;image_yscale = 1;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 65F90BCE
/// @DnDArgument : "var" "animationstillgoing"
var animationstillgoing;

/// @DnDAction : YoYo Games.Particles.Part_Emit_Create
/// @DnDVersion : 1
/// @DnDHash : 5B14E8B7
/// @DnDArgument : "var" "playerprojectileemitter"
/// @DnDArgument : "system" "global.P_system2"
playerprojectileemitter = part_emitter_create(global.P_system2);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 4D7C6EBF
/// @DnDArgument : "var" "Fireball"
/// @DnDArgument : "blend" "1"
Fireball = part_type_create();part_type_blend(Fireball, true);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 00E5F8A2
/// @DnDArgument : "type" "Fireball"
/// @DnDArgument : "minsize" "1"
part_type_size(Fireball, 1, 1, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 7FED6AC6
/// @DnDArgument : "typ" "Fireball"
/// @DnDArgument : "minlife" "1"
/// @DnDArgument : "maxlife" "1"
part_type_life(Fireball, 1, 1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 3F6E1FE0
/// @DnDArgument : "type" "Fireball"
/// @DnDArgument : "startcol" "$FF000CFF"
/// @DnDArgument : "midcol" "$FF00FFF2"
/// @DnDArgument : "endcol" "$FF00A1FF"
part_type_colour3(Fireball, $FF000CFF & $FFFFFF, $FF00FFF2 & $FFFFFF, $FF00A1FF & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 154740FE
/// @DnDArgument : "type" "Fireball"
/// @DnDArgument : "start" "255"
/// @DnDArgument : "middle" "102"
/// @DnDArgument : "end" "0"
part_type_alpha3(Fireball, 255, 102, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 77A7CA7C
/// @DnDArgument : "type" "Fireball"
/// @DnDArgument : "minspeed" "0"
/// @DnDArgument : "maxspeed" "0"
part_type_speed(Fireball, 0, 0, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 36D404A6
/// @DnDArgument : "type" "Fireball"
/// @DnDArgument : "shape" "pt_shape_flare"
part_type_shape(Fireball, pt_shape_flare);

/// @DnDAction : YoYo Games.Particles.Part_Type_Gravity
/// @DnDVersion : 1
/// @DnDHash : 5A7AF788
/// @DnDArgument : "type" "Fireball"
/// @DnDArgument : "direction" "270"
part_type_gravity(Fireball, 0, 270);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 404F5ABD
/// @DnDArgument : "type" "Fireball"
part_type_direction(Fireball, 0, 360, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Orientation
/// @DnDVersion : 1
/// @DnDHash : 2FD7414A
/// @DnDArgument : "type" "Fireball"
/// @DnDArgument : "incr" "5"
part_type_orientation(Fireball, 0, 360, 5, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Emit_Emit
/// @DnDVersion : 1
/// @DnDHash : 603A51A1
/// @DnDArgument : "system" "global.P_system2"
/// @DnDArgument : "emitter" "playerprojectileemitter"
/// @DnDArgument : "type" "Fireball"
/// @DnDArgument : "event" "1"
/// @DnDArgument : "number" "3"
part_emitter_stream(global.P_system2, playerprojectileemitter, Fireball, 3);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 6A7BDC05
/// @DnDArgument : "soundid" "WAV_Fireball_Launch_1"
/// @DnDArgument : "gain" "0.5"
/// @DnDArgument : "pitch" "1.3"
/// @DnDSaveInfo : "soundid" "WAV_Fireball_Launch_1"
audio_play_sound(WAV_Fireball_Launch_1, 0, 0, 0.5, undefined, 1.3);