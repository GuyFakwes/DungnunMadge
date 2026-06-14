/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F6CD795
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "var" "global.player_key_count"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "levelkeycount"
with(Player1_avatar) var l2F6CD795_0 = global.player_key_count >= levelkeycount;
if(l2F6CD795_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1174E292
	/// @DnDApplyTo : {Player1_avatar}
	/// @DnDParent : 2F6CD795
	/// @DnDArgument : "var" "questdone"
	/// @DnDArgument : "value" "1"
	with(Player1_avatar) var l1174E292_0 = questdone == 1;
	if(l1174E292_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5B529B66
		/// @DnDParent : 1174E292
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "Exit"
		/// @DnDSaveInfo : "spriteind" "Exit"
		sprite_index = Exit;
		image_index = 1;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59E6C464
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "var" "questdone"
with(Player1_avatar) var l59E6C464_0 = questdone == 0;
if(l59E6C464_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 20CBAAA6
	/// @DnDParent : 59E6C464
	/// @DnDArgument : "spriteind" "Exit"
	/// @DnDSaveInfo : "spriteind" "Exit"
	sprite_index = Exit;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2601E237
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "var" "global.player_key_count"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "levelkeycount"
with(Player1_avatar) var l2601E237_0 = global.player_key_count < levelkeycount;
if(l2601E237_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 23A9B9D1
	/// @DnDParent : 2601E237
	/// @DnDArgument : "spriteind" "Exit"
	/// @DnDSaveInfo : "spriteind" "Exit"
	sprite_index = Exit;
	image_index = 0;}