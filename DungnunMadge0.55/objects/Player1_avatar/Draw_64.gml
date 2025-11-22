/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0357D646
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "2"
if(global.gameispaused >= 2){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7453111D
	/// @DnDParent : 0357D646
	/// @DnDArgument : "x" "1920/2"
	/// @DnDArgument : "y" "1080/2"
	/// @DnDArgument : "caption" ""Game Paused""
	draw_text(1920/2, 1080/2, string("Game Paused") + "");}

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 5A49ECD3
/// @DnDArgument : "x1" "50"
/// @DnDArgument : "y1" "20"
/// @DnDArgument : "x2" "350"
/// @DnDArgument : "y2" "35"
/// @DnDArgument : "value" "(100/maxmana)*playermana"
/// @DnDArgument : "backcol" "$FF560800"
/// @DnDArgument : "mincol" "$FF996600"
/// @DnDArgument : "maxcol" "$FFFFBB32"
draw_healthbar(50, 20, 350, 35, (100/maxmana)*playermana, $FF560800 & $FFFFFF, $FF996600 & $FFFFFF, $FFFFBB32 & $FFFFFF, 0, (($FF560800>>24) != 0), (($FFFFFFFF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4AD79409
/// @DnDArgument : "x" "1920-1700"
/// @DnDArgument : "y" "1080-100"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "global.player_points"
draw_text(1920-1700, 1080-100,  + string(global.player_points));

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 64D6E784
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1ADF6384
/// @DnDArgument : "color" "$FF2DC6E5"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF2DC6E5 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 6C4F33EC
draw_set_alpha(1);