/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 469CB956
/// @DnDArgument : "target" "xmovement"
/// @DnDArgument : "instvar" "8"
xmovement = hspeed;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 2FEF8D3E
/// @DnDArgument : "target" "ymovement"
/// @DnDArgument : "instvar" "9"
ymovement = vspeed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7A496CCE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-5"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
var l7A496CCE_0 = instance_place(x + 0, y + -5, [obj_wall_Blue]);if ((l7A496CCE_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6E8535DB
	/// @DnDParent : 7A496CCE
	/// @DnDArgument : "speed" "-(ymovement*2)"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "2"
	vspeed += -(ymovement*2);

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7BFC3FCF
	/// @DnDParent : 7A496CCE
	exit;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 07C53F8D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "5"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
var l07C53F8D_0 = instance_place(x + 0, y + 5, [obj_wall_Blue]);if ((l07C53F8D_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 000CED91
	/// @DnDParent : 07C53F8D
	/// @DnDArgument : "speed" "-(ymovement*2)"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "2"
	vspeed += -(ymovement*2);

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 72B2D17E
	/// @DnDParent : 07C53F8D
	exit;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2DC1122E
/// @DnDArgument : "x" "-5"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
var l2DC1122E_0 = instance_place(x + -5, y + 0, [obj_wall_Blue]);if ((l2DC1122E_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7C31441E
	/// @DnDParent : 2DC1122E
	/// @DnDArgument : "speed" "-(xmovement*2)"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "1"
	hspeed += -(xmovement*2);

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 413F4047
	/// @DnDParent : 2DC1122E
	exit;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 53713C47
/// @DnDArgument : "x" "5"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
var l53713C47_0 = instance_place(x + 5, y + 0, [obj_wall_Blue]);if ((l53713C47_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 543FE61A
	/// @DnDParent : 53713C47
	/// @DnDArgument : "speed" "-(xmovement*2)"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "1"
	hspeed += -(xmovement*2);

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3BC29C06
	/// @DnDParent : 53713C47
	exit;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77ED7EDE
/// @DnDArgument : "var" "phy_linear_velocity_x"
if(phy_linear_velocity_x == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79E63479
	/// @DnDParent : 77ED7EDE
	/// @DnDArgument : "var" "phy_linear_velocity_y"
	if(phy_linear_velocity_y == 0){	/// @DnDAction : YoYo Games.Movement.Add_Motion
		/// @DnDVersion : 1
		/// @DnDHash : 7E4840B1
		/// @DnDParent : 79E63479
		/// @DnDArgument : "dir" "selecteddirection"
		/// @DnDArgument : "speed" "movement_speed"
		motion_add(selecteddirection, movement_speed);}}