/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7B9ECC0D
instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C183EC0
/// @DnDApplyTo : {Player1_avatar}
/// @DnDArgument : "expr" "playermana-25"
/// @DnDArgument : "var" "playermana"
with(Player1_avatar) {
playermana = playermana-25;

}