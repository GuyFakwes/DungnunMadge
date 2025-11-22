/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 62AB1AD2
/// @DnDArgument : "msg" ""debuging""
show_debug_message(string("debuging"));

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 6D02C404
/// @DnDApplyTo : {Player1_avatar}
with(Player1_avatar) {
x = xstart;y = ystart;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 466F4211
/// @DnDArgument : "expr" "maxmana"
/// @DnDArgument : "var" "playermana"
playermana = maxmana;

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 28A841EC
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(!(__dnd_lives <= 0)){	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 7EB655D2
	/// @DnDParent : 28A841EC
	game_restart();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4A0719E6
else{	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 24969905
	/// @DnDParent : 4A0719E6
	/// @DnDArgument : "lives" "lives-1"
	__dnd_lives = real(lives-1);}