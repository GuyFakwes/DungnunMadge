/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 13A95143
/// @DnDArgument : "msg" ""contact confirmed""
show_debug_message(string("contact confirmed"));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2177F780
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.gameispaused > 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 537CEB41
	/// @DnDParent : 2177F780
	speed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 711E343B
	/// @DnDParent : 2177F780
	/// @DnDArgument : "var" "global.gameispaused"
	/// @DnDArgument : "op" "2"
	if(global.gameispaused > 0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 665435C4
		/// @DnDParent : 711E343B
		/// @DnDArgument : "speed" "5"
		speed = 5;}

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 73DBF5A2
	/// @DnDParent : 2177F780
	exit;}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 53509B59
/// @DnDArgument : "speed" "1/60"
/// @DnDArgument : "speed_relative" "1"
speed += 1/60;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 55DEDABE
/// @DnDArgument : "target" "mydirection"
/// @DnDArgument : "instvar" "6"
mydirection = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1F9868BF
/// @DnDArgument : "var" "mydirection"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "272"
if(mydirection < 272){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B87F807
	/// @DnDParent : 1F9868BF
	/// @DnDArgument : "var" "mydirection"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "268"
	if(mydirection > 268){	/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 53D2D962
		/// @DnDParent : 5B87F807
		exit;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E7437C7
/// @DnDArgument : "var" "myx"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "mousex"
if(myx > mousex){	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 657F3D44
	/// @DnDParent : 1E7437C7
	/// @DnDArgument : "angle" "0.5"
	/// @DnDArgument : "angle_relative" "1"
	image_angle += 0.5;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 16D83DE4
	/// @DnDParent : 1E7437C7
	/// @DnDArgument : "direction" "0.5"
	/// @DnDArgument : "direction_relative" "1"
	direction += 0.5;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37BB479C
/// @DnDArgument : "var" "myx"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "mousex"
if(myx < mousex){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 6C73F124
	/// @DnDParent : 37BB479C
	/// @DnDArgument : "direction" "-0.5"
	/// @DnDArgument : "direction_relative" "1"
	direction += -0.5;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 7173A487
	/// @DnDParent : 37BB479C
	/// @DnDArgument : "angle" "-0.5"
	/// @DnDArgument : "angle_relative" "1"
	image_angle += -0.5;}