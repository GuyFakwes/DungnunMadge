/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 3D31F4E7
/// @DnDArgument : "x" "Player1_avatar.x-50"
/// @DnDArgument : "y" "Player1_avatar.y-45"
x = Player1_avatar.x-50;
y = Player1_avatar.y-45;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DF19965
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "25"
with(Player1_avatar) var l3DF19965_0 = playermana < 25;
if(l3DF19965_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 29362FED
	/// @DnDParent : 3DF19965
	/// @DnDArgument : "xscale" "0"
	/// @DnDArgument : "yscale" "0"
	image_xscale = 0;
	image_yscale = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DC0CE64
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "25"
with(Player1_avatar) var l6DC0CE64_0 = playermana >= 25;
if(l6DC0CE64_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 79435B47
	/// @DnDParent : 6DC0CE64
	/// @DnDArgument : "xscale" "1.5"
	/// @DnDArgument : "yscale" "1.5"
	image_xscale = 1.5;
	image_yscale = 1.5;
}