/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 6B74DDC0
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
x = mouse_x;y = mouse_y;

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 6AA56EDA
/// @DnDArgument : "var" "fireball_cooldown"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "120"
while ((fireball_cooldown < 120)) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 351BC944
	/// @DnDParent : 6AA56EDA
	/// @DnDArgument : "expr" "fireball_cooldown+1"
	/// @DnDArgument : "var" "fireball_cooldown"
	fireball_cooldown = fireball_cooldown+1;

	/// @DnDAction : YoYo Games.Loops.Break
	/// @DnDVersion : 1
	/// @DnDHash : 349CDF8E
	/// @DnDParent : 6AA56EDA
	break;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4EFEFACD
var l4EFEFACD_0;l4EFEFACD_0 = mouse_check_button(mb_left);if (l4EFEFACD_0){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 19BFB9ED
	/// @DnDParent : 4EFEFACD
	/// @DnDArgument : "msg" ""firing""
	show_debug_message(string("firing"));

	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 32289527
	/// @DnDParent : 4EFEFACD
	/// @DnDArgument : "var" "playercount"
	/// @DnDArgument : "object" "Player1_avatar"
	/// @DnDSaveInfo : "object" "Player1_avatar"
	playercount = instance_number(Player1_avatar);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13B960A9
	/// @DnDParent : 4EFEFACD
	/// @DnDArgument : "var" "playercount"
	/// @DnDArgument : "op" "2"
	if(playercount > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 487B089A
		/// @DnDParent : 13B960A9
		/// @DnDArgument : "var" "fireball_cooldown"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "90"
		if(fireball_cooldown >= 90){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5170540B
			/// @DnDApplyTo : {Player1_avatar}
			/// @DnDParent : 487B089A
			/// @DnDArgument : "var" "playermana"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "20"
			with(Player1_avatar) var l5170540B_0 = playermana > 20;
			if(l5170540B_0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 151B3D2C
				/// @DnDParent : 5170540B
				/// @DnDArgument : "var" "fireball_cooldown"
				fireball_cooldown = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 002A4FD6
				/// @DnDApplyTo : {Player1_avatar}
				/// @DnDParent : 5170540B
				/// @DnDArgument : "expr" "playermana-20"
				/// @DnDArgument : "var" "playermana"
				with(Player1_avatar) {
				playermana = playermana-20;
				
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 180CB4C9
				/// @DnDApplyTo : {Player1_avatar}
				/// @DnDParent : 5170540B
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "PlayerProjectile"
				/// @DnDSaveInfo : "objectid" "PlayerProjectile"
				with(Player1_avatar) {
					instance_create_layer(x + 0, y + 0, "Instances", PlayerProjectile); 
				}}}}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 0B196355
/// @DnDArgument : "button" "mb_right"
var l0B196355_0;l0B196355_0 = mouse_check_button(mb_right);if (l0B196355_0){	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3E464AA4
	/// @DnDApplyTo : {UI_pointer}
	/// @DnDParent : 0B196355
	/// @DnDArgument : "target" "mousex"
	with(UI_pointer) {
	mousex = x;
	}

	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 190FF160
	/// @DnDApplyTo : {UI_pointer}
	/// @DnDParent : 0B196355
	/// @DnDArgument : "target" "mousey"
	/// @DnDArgument : "instvar" "1"
	with(UI_pointer) {
	mousey = y;
	}

	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5261EFA3
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 0B196355
	/// @DnDArgument : "target" "myx"
	/// @DnDArgument : "instvar" "1"
	with(Player1_avatar) {
	myx = y;
	}

	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 361EFB1D
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 0B196355
	/// @DnDArgument : "target" "myy"
	/// @DnDArgument : "instvar" "1"
	with(Player1_avatar) {
	myy = y;
	}

	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 42019A24
	/// @DnDParent : 0B196355
	/// @DnDArgument : "var" "playercount"
	/// @DnDArgument : "object" "Player1_avatar"
	/// @DnDSaveInfo : "object" "Player1_avatar"
	playercount = instance_number(Player1_avatar);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E674F5C
	/// @DnDParent : 0B196355
	/// @DnDArgument : "var" "playercount"
	/// @DnDArgument : "op" "2"
	if(playercount > 0){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 469786ED
		/// @DnDParent : 5E674F5C
		/// @DnDArgument : "msg" ""playercount""
		show_debug_message(string("playercount"));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0AEB2828
		/// @DnDParent : 5E674F5C
		/// @DnDArgument : "var" "fireball_cooldown"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "30"
		if(fireball_cooldown >= 30){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C149F1E
			/// @DnDApplyTo : {Player1_avatar}
			/// @DnDParent : 0AEB2828
			/// @DnDArgument : "var" "playermana"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "10"
			with(Player1_avatar) var l0C149F1E_0 = playermana > 10;
			if(l0C149F1E_0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1CF6D984
				/// @DnDParent : 0C149F1E
				/// @DnDArgument : "var" "fireball_cooldown"
				fireball_cooldown = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7D63D1D1
				/// @DnDApplyTo : {Player1_avatar}
				/// @DnDParent : 0C149F1E
				/// @DnDArgument : "expr" "playermana-10"
				/// @DnDArgument : "var" "playermana"
				with(Player1_avatar) {
				playermana = playermana-10;
				
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2335551A
				/// @DnDParent : 0C149F1E
				/// @DnDArgument : "var" "myx"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "mousex"
				if(myx > mousex){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
					/// @DnDVersion : 1
					/// @DnDHash : 7DA2493C
					/// @DnDParent : 2335551A
					/// @DnDArgument : "direction" "-1"
					direction = -1;
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
					/// @DnDVersion : 1
					/// @DnDHash : 03A6C2B7
					/// @DnDParent : 2335551A
					/// @DnDArgument : "angle" "180"
					image_angle = 180;
				
					/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
					/// @DnDVersion : 1
					/// @DnDHash : 5310BFF7
					/// @DnDParent : 2335551A
					/// @DnDArgument : "msg" ""myx is greater""
					show_debug_message(string("myx is greater"));
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 603E3C67
					/// @DnDApplyTo : {Player1_avatar}
					/// @DnDParent : 2335551A
					/// @DnDArgument : "xpos" "1"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "prj_Player_Icicle"
					/// @DnDSaveInfo : "objectid" "prj_Player_Icicle"
					with(Player1_avatar) {
						instance_create_layer(x + 1, y + 0, "Instances", prj_Player_Icicle); 
					}}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7382F3F9
				/// @DnDParent : 0C149F1E
				/// @DnDArgument : "var" "myx"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "mousex"
				if(myx < mousex){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
					/// @DnDVersion : 1
					/// @DnDHash : 4783AB12
					/// @DnDParent : 7382F3F9
					/// @DnDArgument : "direction" "1"
					direction = 1;
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
					/// @DnDVersion : 1
					/// @DnDHash : 1B2096AF
					/// @DnDParent : 7382F3F9
					image_angle = 0;
				
					/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
					/// @DnDVersion : 1
					/// @DnDHash : 13C6941B
					/// @DnDParent : 7382F3F9
					/// @DnDArgument : "msg" ""myx is greater""
					show_debug_message(string("myx is greater"));
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 0429B8BC
					/// @DnDApplyTo : {Player1_avatar}
					/// @DnDParent : 7382F3F9
					/// @DnDArgument : "xpos" "-1"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "prj_Player_Icicle"
					/// @DnDSaveInfo : "objectid" "prj_Player_Icicle"
					with(Player1_avatar) {
						instance_create_layer(x + -1, y + 0, "Instances", prj_Player_Icicle); 
					}}}}}}