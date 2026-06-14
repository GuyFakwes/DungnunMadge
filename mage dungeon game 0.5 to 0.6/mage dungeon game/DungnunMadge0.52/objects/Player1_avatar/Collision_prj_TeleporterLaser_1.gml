/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2932E309
/// @DnDArgument : "msg" ""debuging""
show_debug_message(string("debuging"));

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 39F50F3F
/// @DnDApplyTo : {Player1_avatar}
with(Player1_avatar) {
x = xstart;y = ystart;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3616212C
/// @DnDArgument : "expr" "maxmana"
/// @DnDArgument : "var" "playermana"
playermana = maxmana;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7C0A55FC
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "value" "global.player_Lives-1"
/// @DnDArgument : "var" "global.player_Lives"
with(Player1_avatar) {
global.player_Lives = global.player_Lives-1;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 63573EDA
/// @DnDArgument : "var" "global.player_Lives"
if(global.player_Lives == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 68FF4055
	/// @DnDApplyTo : {UI_life_1}
	/// @DnDParent : 63573EDA
	with(UI_life_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BFD1F86
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 63573EDA
	with(Player1_avatar) instance_destroy();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4995DADA
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48CBC35B
	/// @DnDParent : 4995DADA
	/// @DnDArgument : "var" "global.player_Lives"
	/// @DnDArgument : "value" "1"
	if(global.player_Lives == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7E9EE5C9
		/// @DnDApplyTo : {UI_life_2}
		/// @DnDParent : 48CBC35B
		with(UI_life_2) instance_destroy();}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6DEABD5E
	/// @DnDParent : 4995DADA
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36B4E5B1
		/// @DnDParent : 6DEABD5E
		/// @DnDArgument : "var" "global.player_Lives"
		/// @DnDArgument : "value" "2"
		if(global.player_Lives == 2){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5FEDC9E0
			/// @DnDApplyTo : {UI_life_3}
			/// @DnDParent : 36B4E5B1
			with(UI_life_3) instance_destroy();}}}