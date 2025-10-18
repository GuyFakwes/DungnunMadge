/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2A2599EE
/// @DnDArgument : "msg" ""debuging""
show_debug_message(string("debuging"));

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 3C29C2B2
/// @DnDApplyTo : {Player1_avatar}
with(Player1_avatar) {
x = xstart;y = ystart;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1DF34A94
/// @DnDArgument : "expr" "maxmana"
/// @DnDArgument : "var" "playermana"
playermana = maxmana;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2B9C60AB
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "value" "global.player_Lives-1"
/// @DnDArgument : "var" "global.player_Lives"
with(Player1_avatar) {
global.player_Lives = global.player_Lives-1;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0300F556
/// @DnDArgument : "var" "global.player_Lives"
if(global.player_Lives == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 06B739CE
	/// @DnDApplyTo : {UI_life_1}
	/// @DnDParent : 0300F556
	with(UI_life_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7727A5BC
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 0300F556
	with(Player1_avatar) instance_destroy();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 32922286
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76A92335
	/// @DnDParent : 32922286
	/// @DnDArgument : "var" "global.player_Lives"
	/// @DnDArgument : "value" "1"
	if(global.player_Lives == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5791756A
		/// @DnDApplyTo : {UI_life_2}
		/// @DnDParent : 76A92335
		with(UI_life_2) instance_destroy();}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 11374120
	/// @DnDParent : 32922286
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 023720EE
		/// @DnDParent : 11374120
		/// @DnDArgument : "var" "global.player_Lives"
		/// @DnDArgument : "value" "2"
		if(global.player_Lives == 2){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0BDB024C
			/// @DnDApplyTo : {UI_life_3}
			/// @DnDParent : 023720EE
			with(UI_life_3) instance_destroy();}}}