/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 58B187A2
/// @DnDApplyTo : {Player1_avatar}
with(Player1_avatar) {
x = xstart;y = ystart;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 436C30BA
/// @DnDArgument : "expr" "maxmana"
/// @DnDArgument : "var" "playermana"
playermana = maxmana;

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 7CCA9488
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(!(__dnd_lives <= 0)){	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 1C7A68DB
	/// @DnDParent : 7CCA9488
	game_restart();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 024EFDBE
else{	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 1B3C8FCB
	/// @DnDParent : 024EFDBE
	/// @DnDArgument : "lives" "lives-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;__dnd_lives += real(lives-1);}