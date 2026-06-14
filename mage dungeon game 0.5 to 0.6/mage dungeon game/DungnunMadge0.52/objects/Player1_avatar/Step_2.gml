/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 394ABEE5
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.gameispaused > 1){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 39B3FDC0
	/// @DnDParent : 394ABEE5
	exit;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 60ADF169
/// @DnDArgument : "key" "vk_backspace"
var l60ADF169_0;l60ADF169_0 = keyboard_check_pressed(vk_backspace);if (l60ADF169_0){	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 1237B938
	/// @DnDParent : 60ADF169
	__dnd_lives = real(0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6138E4CF
	/// @DnDParent : 60ADF169
	/// @DnDArgument : "var" "playermana"
	playermana = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AC6ED4A
	/// @DnDParent : 60ADF169
	/// @DnDArgument : "var" "global.player_Lives"
	global.player_Lives = 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 78CFEB75
	/// @DnDApplyTo : {UI_life_1}
	/// @DnDParent : 60ADF169
	with(UI_life_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 106BBF16
	/// @DnDApplyTo : {UI_life_2}
	/// @DnDParent : 60ADF169
	with(UI_life_2) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 73217325
	/// @DnDApplyTo : {UI_life_3}
	/// @DnDParent : 60ADF169
	with(UI_life_3) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 100E7886
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 60ADF169
	with(Player1_avatar) instance_destroy();}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 315CB3AF
/// @DnDArgument : "expr" "timetilregen+(1/fps)"
/// @DnDArgument : "var" "timetilregen"
timetilregen = timetilregen+(1/fps);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 093E5214
/// @DnDArgument : "x" "2"
/// @DnDArgument : "object" "woodwall_object"
/// @DnDSaveInfo : "object" "woodwall_object"
var l093E5214_0 = instance_place(2, 0, [woodwall_object]);if ((l093E5214_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 709B6F7A
	/// @DnDParent : 093E5214
	/// @DnDArgument : "var" "global.avatar_move_x"
	global.avatar_move_x = 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 11B18837
/// @DnDArgument : "y" "2"
/// @DnDArgument : "object" "woodwall_object"
/// @DnDSaveInfo : "object" "woodwall_object"
var l11B18837_0 = instance_place(0, 2, [woodwall_object]);if ((l11B18837_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AE77F45
	/// @DnDParent : 11B18837
	/// @DnDArgument : "var" "global.avatar_move_y"
	global.avatar_move_y = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56CB1F83
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "maxmana"
if(!(playermana >= maxmana)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DEEB3FD
	/// @DnDParent : 56CB1F83
	/// @DnDArgument : "var" "timetilregen"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "manaregendelay"
	if(timetilregen > manaregendelay){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7279FD78
		/// @DnDParent : 4DEEB3FD
		/// @DnDArgument : "expr" "playermana+(manaregen*global.manaregenbonus)"
		/// @DnDArgument : "var" "playermana"
		playermana = playermana+(manaregen*global.manaregenbonus);}}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7446AFD4
/// @DnDInput : 5
/// @DnDArgument : "value" "keyboard_check(ord("D"))-keyboard_check(ord("A"))"
/// @DnDArgument : "value_1" "global.avatar_move_x*global.avatar_movementspeed"
/// @DnDArgument : "value_2" "-keyboard_check(ord("W"))+keyboard_check(ord("S"))"
/// @DnDArgument : "value_3" "global.avatar_move_y*global.avatar_movementspeed"
/// @DnDArgument : "var" "global.avatar_move_x"
/// @DnDArgument : "var_1" "global.avatar_move_x"
/// @DnDArgument : "var_2" "global.avatar_move_y"
/// @DnDArgument : "var_3" "global.avatar_move_y"
/// @DnDArgument : "var_4" "global.player_location"
global.avatar_move_x = keyboard_check(ord("D"))-keyboard_check(ord("A"));
global.avatar_move_x = global.avatar_move_x*global.avatar_movementspeed;
global.avatar_move_y = -keyboard_check(ord("W"))+keyboard_check(ord("S"));
global.avatar_move_y = global.avatar_move_y*global.avatar_movementspeed;
global.player_location = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 43CA4264
/// @DnDArgument : "key" "ord("W")"
var l43CA4264_0;l43CA4264_0 = keyboard_check(ord("W"));if (l43CA4264_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FA2B33C
	/// @DnDParent : 43CA4264
	/// @DnDArgument : "var" "timetilregen"
	timetilregen = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DDD2354
	/// @DnDParent : 43CA4264
	/// @DnDArgument : "expr" "playermana-0.1"
	/// @DnDArgument : "var" "playermana"
	playermana = playermana-0.1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 79A5611F
/// @DnDArgument : "key" "ord("S")"
var l79A5611F_0;l79A5611F_0 = keyboard_check(ord("S"));if (l79A5611F_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4436BF28
	/// @DnDParent : 79A5611F
	/// @DnDArgument : "var" "timetilregen"
	timetilregen = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 191A40EB
	/// @DnDParent : 79A5611F
	/// @DnDArgument : "expr" "playermana-0.1"
	/// @DnDArgument : "var" "playermana"
	playermana = playermana-0.1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2732104B
/// @DnDArgument : "key" "ord("A")"
var l2732104B_0;l2732104B_0 = keyboard_check(ord("A"));if (l2732104B_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5817BB42
	/// @DnDParent : 2732104B
	/// @DnDArgument : "var" "timetilregen"
	timetilregen = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5064D738
	/// @DnDParent : 2732104B
	/// @DnDArgument : "expr" "playermana-0.1"
	/// @DnDArgument : "var" "playermana"
	playermana = playermana-0.1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3F146B02
/// @DnDArgument : "key" "ord("D")"
var l3F146B02_0;l3F146B02_0 = keyboard_check(ord("D"));if (l3F146B02_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E2624B8
	/// @DnDParent : 3F146B02
	/// @DnDArgument : "var" "timetilregen"
	timetilregen = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 450ED0BF
	/// @DnDParent : 3F146B02
	/// @DnDArgument : "expr" "playermana-0.1"
	/// @DnDArgument : "var" "playermana"
	playermana = playermana-0.1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DE73368
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(playermana > 1){	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 222F0974
	/// @DnDParent : 6DE73368
	/// @DnDArgument : "xvel" "global.avatar_move_x"
	/// @DnDArgument : "yvel" "global.avatar_move_y"
	/// @DnDArgument : "maxxmove" "10"
	/// @DnDArgument : "maxymove" "10"
	/// @DnDArgument : "object" "obj_wall_Blue"
	/// @DnDSaveInfo : "object" "obj_wall_Blue"
	move_and_collide(global.avatar_move_x, global.avatar_move_y, obj_wall_Blue,4,0,0,10,10);

	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7643FDCC
	/// @DnDParent : 6DE73368
	/// @DnDArgument : "target" "xlocation"
	xlocation = x;

	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6B1E263B
	/// @DnDParent : 6DE73368
	/// @DnDArgument : "target" "ylocation"
	/// @DnDArgument : "instvar" "1"
	ylocation = y;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6C1B0DF6
/// @DnDArgument : "x" "2"
/// @DnDArgument : "object" "obj_wall_Blue"
/// @DnDSaveInfo : "object" "obj_wall_Blue"
var l6C1B0DF6_0 = instance_place(2, 0, [obj_wall_Blue]);if ((l6C1B0DF6_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36E127FB
	/// @DnDParent : 6C1B0DF6
	/// @DnDArgument : "var" "global.avatar_move_x"
	global.avatar_move_x = 0;

	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 37AD582F
	/// @DnDParent : 6C1B0DF6
	/// @DnDArgument : "target" "xlocation"
	xlocation = x;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 52C47878
/// @DnDArgument : "y" "2"
/// @DnDArgument : "object" "obj_wall_Blue"
/// @DnDSaveInfo : "object" "obj_wall_Blue"
var l52C47878_0 = instance_place(0, 2, [obj_wall_Blue]);if ((l52C47878_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DDD2C0C
	/// @DnDParent : 52C47878
	/// @DnDArgument : "var" "global.avatar_move_y"
	global.avatar_move_y = 0;

	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2C575D6F
	/// @DnDParent : 52C47878
	/// @DnDArgument : "target" "ylocation"
	/// @DnDArgument : "instvar" "1"
	ylocation = y;}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7132EC25
/// @DnDArgument : "value" "xlocation"
/// @DnDArgument : "var" "global.xplayer"
global.xplayer = xlocation;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3CF4C8DD
/// @DnDArgument : "value" "ylocation"
/// @DnDArgument : "var" "global.yplayer"
global.yplayer = ylocation;