/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 1A9178DF
/// @DnDArgument : "var" "roomis"
roomis = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BC632B4
/// @DnDArgument : "var" "roomis"
/// @DnDArgument : "value" "Arena_Mode"
if(roomis == Arena_Mode){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7163EFF8
	/// @DnDParent : 1BC632B4
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Wave: ""
	/// @DnDArgument : "var" "global.waveno"
	draw_text(x + 0, y + 0, string("Wave: ") + string(global.waveno));}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1725A3C5
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 72C43D43
/// @DnDArgument : "color" "$FF00BAE0"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF00BAE0 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 2025880A
draw_set_alpha(1);