/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 01038552
/// @DnDArgument : "msg" ""debuging""
show_debug_message(string("debuging"));

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 6C01A724
/// @DnDApplyTo : {Player1_avatar}
with(Player1_avatar) {
x = xstart;y = ystart;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 382C7E83
/// @DnDArgument : "expr" "maxmana"
/// @DnDArgument : "var" "playermana"
playermana = maxmana;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 21755FBB
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "value" "global.player_Lives-1"
/// @DnDArgument : "var" "global.player_Lives"
with(Player1_avatar) {
global.player_Lives = global.player_Lives-1;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 654FDCED
/// @DnDArgument : "var" "global.player_Lives"
if(global.player_Lives == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 41D29A76
	/// @DnDApplyTo : {life_1}
	/// @DnDParent : 654FDCED
	with(UI_life_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4A2918A9
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 654FDCED
	with(Player1_avatar) instance_destroy();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2F740CCB
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66D84859
	/// @DnDParent : 2F740CCB
	/// @DnDArgument : "var" "global.player_Lives"
	/// @DnDArgument : "value" "1"
	if(global.player_Lives == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 36AC494F
		/// @DnDApplyTo : {life_2}
		/// @DnDParent : 66D84859
		with(UI_life_2) instance_destroy();}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 63B53D2D
	/// @DnDParent : 2F740CCB
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BCA99FA
		/// @DnDParent : 63B53D2D
		/// @DnDArgument : "var" "global.player_Lives"
		/// @DnDArgument : "value" "2"
		if(global.player_Lives == 2){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1190B3AF
			/// @DnDApplyTo : {life_3}
			/// @DnDParent : 7BCA99FA
			with(UI_life_3) instance_destroy();}}}