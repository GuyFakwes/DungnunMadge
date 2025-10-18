/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 51CB720A
/// @DnDArgument : "var" "teletimer"
/// @DnDArgument : "op" "3"
while ((teletimer <= 0)) {
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 27BE111A
	/// @DnDParent : 51CB720A
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "y" "0"
	x = 0;y = 0;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 6A87E5DE
	/// @DnDInput : 3
	/// @DnDParent : 51CB720A
	/// @DnDArgument : "msg" ""parent teleport""
	/// @DnDArgument : "msg_1" "lastlocationx"
	/// @DnDArgument : "msg_2" "lastlocationy"
	show_debug_message(string("parent teleport") + @"
	" + string(lastlocationx) + @"
	" + string(lastlocationy));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B9C013C
	/// @DnDParent : 51CB720A
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "teleportste"
	teleportste = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BA3878A
	/// @DnDParent : 51CB720A
	/// @DnDArgument : "expr" "countdowntime"
	/// @DnDArgument : "var" "teletimer"
	teletimer = countdowntime;
}