/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 726E128B
/// @DnDArgument : "expr" "irandom_range(50,500)"
/// @DnDArgument : "var" "teledistancex"
teledistancex = irandom_range(50,500);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13B64E8B
/// @DnDArgument : "expr" "irandom_range(50,500)"
/// @DnDArgument : "var" "teledistancey"
teledistancey = irandom_range(50,500);

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 1D7C168D
/// @DnDInput : 2
/// @DnDArgument : "target" "lastlocationx"
/// @DnDArgument : "target_1" "lastlocationy"
/// @DnDArgument : "instvar_1" "1"
lastlocationx = x;
lastlocationy = y;

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 2486A6B8
/// @DnDArgument : "var" "teletimer"
/// @DnDArgument : "op" "3"
while ((teletimer <= 0)) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35906E23
	/// @DnDParent : 2486A6B8
	/// @DnDArgument : "var" "teleportste"
	/// @DnDArgument : "value" "2"
	if(teleportste == 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5E6F8DB4
		/// @DnDParent : 35906E23
		/// @DnDArgument : "xpos" "-16"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "laser1"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "prj_TeleporterLaser_1"
		/// @DnDSaveInfo : "objectid" "prj_TeleporterLaser_1"
		var laser1 = instance_create_layer(x + -16, y + 0, "Instances", prj_TeleporterLaser_1);
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 5FBCCAA7
		/// @DnDApplyTo : laser1
		/// @DnDParent : 35906E23
		/// @DnDArgument : "x" "-100"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		with(laser1) direction = point_direction(x, y, x + -100, y + 0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 714CEC38
		/// @DnDParent : 35906E23
		/// @DnDArgument : "xpos" "16"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "laser2"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "prj_TeleporterLaser_1"
		/// @DnDSaveInfo : "objectid" "prj_TeleporterLaser_1"
		var laser2 = instance_create_layer(x + 16, y + 0, "Instances", prj_TeleporterLaser_1);
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 05AF5D73
		/// @DnDApplyTo : laser2
		/// @DnDParent : 35906E23
		/// @DnDArgument : "x" "100"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		with(laser2) direction = point_direction(x, y, x + 100, y + 0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3D12CD93
		/// @DnDParent : 35906E23
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "16"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "laser3"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "prj_TeleporterLaser_1"
		/// @DnDSaveInfo : "objectid" "prj_TeleporterLaser_1"
		var laser3 = instance_create_layer(x + 0, y + 16, "Instances", prj_TeleporterLaser_1);
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 0E0A1B9E
		/// @DnDApplyTo : laser3
		/// @DnDParent : 35906E23
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "y_relative" "1"
		with(laser3) direction = point_direction(x, y, x + 0, y + 100);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3F52344D
		/// @DnDParent : 35906E23
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-16"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "laser4"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "prj_TeleporterLaser_1"
		/// @DnDSaveInfo : "objectid" "prj_TeleporterLaser_1"
		var laser4 = instance_create_layer(x + 0, y + -16, "Instances", prj_TeleporterLaser_1);
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2B5AEE83
		/// @DnDApplyTo : laser4
		/// @DnDParent : 35906E23
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-100"
		/// @DnDArgument : "y_relative" "1"
		with(laser4) direction = point_direction(x, y, x + 0, y + -100);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 632B0230
		/// @DnDInput : 2
		/// @DnDParent : 35906E23
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "countdowntime"
		/// @DnDArgument : "var" "teleportste"
		/// @DnDArgument : "var_1" "teletimer"
		teleportste = 1;
		teletimer = countdowntime;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 71AE24C6
		/// @DnDParent : 35906E23
		exit;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A8AEFC5
	/// @DnDParent : 2486A6B8
	/// @DnDArgument : "var" "teleportste"
	/// @DnDArgument : "value" "1"
	if(teleportste == 1){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 5C1F21A6
		/// @DnDParent : 0A8AEFC5
		/// @DnDArgument : "msg" "teleportste"
		show_debug_message(string(teleportste));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5119C357
		/// @DnDParent : 0A8AEFC5
		/// @DnDArgument : "var" "rollformovement"
		/// @DnDArgument : "value" "1"
		if(rollformovement == 1){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 40A8B11B
			/// @DnDParent : 5119C357
			/// @DnDArgument : "x" "teledistancex"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "teledistancey"
			/// @DnDArgument : "y_relative" "1"
			x += teledistancex;y += teledistancey;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34EA4D09
		/// @DnDParent : 0A8AEFC5
		/// @DnDArgument : "var" "rollformovement"
		/// @DnDArgument : "value" "2"
		if(rollformovement == 2){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 10976B09
			/// @DnDParent : 34EA4D09
			/// @DnDArgument : "x" "-teledistancex"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "teledistancey"
			/// @DnDArgument : "y_relative" "1"
			x += -teledistancex;y += teledistancey;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 673A4854
		/// @DnDParent : 0A8AEFC5
		/// @DnDArgument : "var" "rollformovement"
		/// @DnDArgument : "value" "3"
		if(rollformovement == 3){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 4B88A0CB
			/// @DnDParent : 673A4854
			/// @DnDArgument : "x" "teledistancex"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-teledistancey"
			/// @DnDArgument : "y_relative" "1"
			x += teledistancex;y += -teledistancey;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E7C2EED
		/// @DnDParent : 0A8AEFC5
		/// @DnDArgument : "var" "rollformovement"
		if(rollformovement == 0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 0C1A0872
			/// @DnDParent : 6E7C2EED
			/// @DnDArgument : "x" "-teledistancex"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-teledistancey"
			/// @DnDArgument : "y_relative" "1"
			x += -teledistancex;y += -teledistancey;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3BBE03C3
		/// @DnDParent : 0A8AEFC5
		/// @DnDArgument : "expr" "countdowntime"
		/// @DnDArgument : "var" "teletimer"
		teletimer = countdowntime;}

	/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 5405AD15
	/// @DnDParent : 2486A6B8
	/// @DnDArgument : "x" "-75"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-75"
	/// @DnDArgument : "y_relative" "1"
	var l5405AD15_0 = place_empty(x + -75, y + -75);if (!l5405AD15_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 59160C60
		/// @DnDParent : 5405AD15
		/// @DnDArgument : "x" "lastlocationx"
		/// @DnDArgument : "y" "lastlocationy"
		x = lastlocationx;y = lastlocationy;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 76FACAF7
		/// @DnDInput : 3
		/// @DnDParent : 5405AD15
		/// @DnDArgument : "expr_1" "irandom(3)"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "var" "teletimer"
		/// @DnDArgument : "var_1" "rollformovement"
		/// @DnDArgument : "var_2" "teleportste"
		teletimer = 0;
		rollformovement = irandom(3);
		teleportste = 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 2385B710
		/// @DnDParent : 5405AD15
		exit;}

	/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 5CA1579C
	/// @DnDParent : 2486A6B8
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	var l5CA1579C_0 = place_empty(x + 0, y + 0);if (!l5CA1579C_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 58134C6F
		/// @DnDParent : 5CA1579C
		/// @DnDArgument : "x" "lastlocationx"
		/// @DnDArgument : "y" "lastlocationy"
		x = lastlocationx;y = lastlocationy;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48291192
		/// @DnDInput : 3
		/// @DnDParent : 5CA1579C
		/// @DnDArgument : "expr_1" "irandom(3)"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "var" "teletimer"
		/// @DnDArgument : "var_1" "rollformovement"
		/// @DnDArgument : "var_2" "teleportste"
		teletimer = 0;
		rollformovement = irandom(3);
		teleportste = 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 0C757653
		/// @DnDParent : 5CA1579C
		exit;}

	/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 06EAD16C
	/// @DnDParent : 2486A6B8
	/// @DnDArgument : "x" "75"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "75"
	/// @DnDArgument : "y_relative" "1"
	var l06EAD16C_0 = place_empty(x + 75, y + 75);if (!l06EAD16C_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4930392D
		/// @DnDParent : 06EAD16C
		/// @DnDArgument : "x" "lastlocationx"
		/// @DnDArgument : "y" "lastlocationy"
		x = lastlocationx;y = lastlocationy;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19956E15
		/// @DnDInput : 3
		/// @DnDParent : 06EAD16C
		/// @DnDArgument : "expr_1" "irandom(3)"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "var" "teletimer"
		/// @DnDArgument : "var_1" "rollformovement"
		/// @DnDArgument : "var_2" "teleportste"
		teletimer = 0;
		rollformovement = irandom(3);
		teleportste = 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 46004414
		/// @DnDParent : 06EAD16C
		exit;}

	/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 4253AFFC
	/// @DnDParent : 2486A6B8
	/// @DnDArgument : "x" "-75"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "75"
	/// @DnDArgument : "y_relative" "1"
	var l4253AFFC_0 = place_empty(x + -75, y + 75);if (!l4253AFFC_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 0B0FBB52
		/// @DnDParent : 4253AFFC
		/// @DnDArgument : "x" "lastlocationx"
		/// @DnDArgument : "y" "lastlocationy"
		x = lastlocationx;y = lastlocationy;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 712E53F8
		/// @DnDInput : 3
		/// @DnDParent : 4253AFFC
		/// @DnDArgument : "expr_1" "irandom(3)"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "var" "teletimer"
		/// @DnDArgument : "var_1" "rollformovement"
		/// @DnDArgument : "var_2" "teleportste"
		teletimer = 0;
		rollformovement = irandom(3);
		teleportste = 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 7A7D0476
		/// @DnDParent : 4253AFFC
		exit;}

	/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 2784D0EA
	/// @DnDParent : 2486A6B8
	/// @DnDArgument : "x" "-75"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-75"
	/// @DnDArgument : "y_relative" "1"
	var l2784D0EA_0 = place_empty(x + -75, y + -75);if (!l2784D0EA_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 01E874AA
		/// @DnDParent : 2784D0EA
		/// @DnDArgument : "x" "lastlocationx"
		/// @DnDArgument : "y" "lastlocationy"
		x = lastlocationx;y = lastlocationy;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22A8C233
		/// @DnDInput : 3
		/// @DnDParent : 2784D0EA
		/// @DnDArgument : "expr_1" "irandom(3)"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "var" "teletimer"
		/// @DnDArgument : "var_1" "rollformovement"
		/// @DnDArgument : "var_2" "teleportste"
		teletimer = 0;
		rollformovement = irandom(3);
		teleportste = 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 5E492844
		/// @DnDParent : 2784D0EA
		exit;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AEA8827
	/// @DnDParent : 2486A6B8
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "teleportste"
	teleportste = 2;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7211F4B8
	/// @DnDParent : 2486A6B8
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0334FF1F
/// @DnDInput : 2
/// @DnDArgument : "expr" "teletimer-1/60"
/// @DnDArgument : "expr_1" "irandom(3)"
/// @DnDArgument : "var" "teletimer"
/// @DnDArgument : "var_1" "rollformovement"
teletimer = teletimer-1/60;
rollformovement = irandom(3);