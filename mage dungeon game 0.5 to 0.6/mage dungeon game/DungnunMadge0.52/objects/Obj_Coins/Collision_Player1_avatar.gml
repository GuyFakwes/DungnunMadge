/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1B08D91C
instance_destroy();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 47237F45
/// @DnDApplyTo : other
/// @DnDArgument : "value" "+1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.player_points"
with(other) {
global.player_points += +1;

}

/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 5E2BC4B3
/// @DnDArgument : "filename" ""save1.ini""
ini_open("save1.ini");

/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 30E49220
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""inventory""
/// @DnDArgument : "key" ""tokens""
/// @DnDArgument : "value" "global.player_points"
ini_write_real("inventory", "tokens", global.player_points);

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 0F6A6E6A
ini_close();