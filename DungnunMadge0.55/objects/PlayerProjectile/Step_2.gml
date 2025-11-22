/// @DnDAction : YoYo Games.Particles.Part_Emit_Region
/// @DnDVersion : 1
/// @DnDHash : 7C2BDE33
/// @DnDArgument : "left_relative" "1"
/// @DnDArgument : "top_relative" "1"
/// @DnDArgument : "right" "0"
/// @DnDArgument : "right_relative" "1"
/// @DnDArgument : "bottom" "0"
/// @DnDArgument : "bottom_relative" "1"
/// @DnDArgument : "system" "global.P_system2"
/// @DnDArgument : "emitter" "playerprojectileemitter"
/// @DnDArgument : "shape" "1"
part_emitter_region(global.P_system2, playerprojectileemitter, x + 0, x + 0, y + 0, y + 0, ps_shape_ellipse, ps_distr_linear);