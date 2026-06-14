/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02626CDF
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.gameispaused > 1){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 766A43F2
	/// @DnDParent : 02626CDF
	speed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32C732ED
	/// @DnDParent : 02626CDF
	/// @DnDArgument : "var" "global.gameispaused"
	/// @DnDArgument : "op" "2"
	if(global.gameispaused > 0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 05C27513
		/// @DnDParent : 32C732ED
		/// @DnDArgument : "speed" "5"
		speed = 5;}

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 17125922
	/// @DnDParent : 02626CDF
	exit;}