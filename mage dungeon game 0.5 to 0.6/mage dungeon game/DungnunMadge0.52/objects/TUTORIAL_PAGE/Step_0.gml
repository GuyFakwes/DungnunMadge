/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5BE0C9E7
/// @DnDArgument : "key" "vk_anykey"
var l5BE0C9E7_0;l5BE0C9E7_0 = keyboard_check(vk_anykey);if (l5BE0C9E7_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2F9E7769
	/// @DnDApplyTo : all
	/// @DnDParent : 5BE0C9E7
	with(all) instance_destroy();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 57785C0F
	/// @DnDParent : 5BE0C9E7
	/// @DnDArgument : "room" "Room1"
	/// @DnDSaveInfo : "room" "Room1"
	room_goto(Room1);}