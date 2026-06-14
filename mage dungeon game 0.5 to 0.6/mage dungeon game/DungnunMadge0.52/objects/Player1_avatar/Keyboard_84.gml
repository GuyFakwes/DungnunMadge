/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7D506484
/// @DnDArgument : "value" "+0.1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.manaregenbonus"
global.manaregenbonus += +0.1;

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 0276F508
exit;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0ADAC1C6
/// @DnDArgument : "value" "global.Currentlevel+1"
/// @DnDArgument : "var" "global.Currentlevel"
global.Currentlevel = global.Currentlevel+1;

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 062A5B95
room_goto_next();