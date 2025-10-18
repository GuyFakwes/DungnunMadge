/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6989B873
/// @DnDArgument : "var" "global.targetactive"
/// @DnDArgument : "value" "1"
if(global.targetactive == 1){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0900F4C1
	/// @DnDParent : 6989B873
	/// @DnDArgument : "var" "global.targetactive"
	global.targetactive = 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0F6CED36
	/// @DnDParent : 6989B873
	/// @DnDArgument : "var" "global.timer5"
	global.timer5 = 0;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0F8B67A3
	/// @DnDParent : 6989B873
	/// @DnDArgument : "msg" ""target hit""
	show_debug_message(string("target hit"));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31AFD389
/// @DnDArgument : "var" "global.timer5"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "600"
if(global.timer5 < 600){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1CD9B5F5
	/// @DnDParent : 31AFD389
	/// @DnDArgument : "value" "global.timer5+1"
	/// @DnDArgument : "var" "global.timer5"
	global.timer5 = global.timer5+1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 73F7693A
	/// @DnDParent : 31AFD389
	/// @DnDArgument : "msg" "global.timer5"
	show_debug_message(string(global.timer5));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36B2382E
/// @DnDArgument : "var" "global.timer5"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "600"
if(global.timer5 >= 600){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0B8DD3FA
	/// @DnDParent : 36B2382E
	/// @DnDArgument : "spriteind" "Sprite32"
	/// @DnDSaveInfo : "spriteind" "Sprite32"
	sprite_index = Sprite32;
	image_index = 0;}