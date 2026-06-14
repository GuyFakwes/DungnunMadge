/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 44643E3D
/// @DnDInput : 2
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "gameispaused"
global.gameispaused = 1;
global.variable = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6000D01D
/// @DnDInput : 2
/// @DnDArgument : "expr" "maxmana"
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "var_1" "animationstate"
playermana = maxmana;
animationstate = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 508343C9
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "levelkeycount"
levelkeycount = 1;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 25D0A1FF
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4FDEE282
image_xscale = 1;image_yscale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2738FE35
/// @DnDArgument : "var" "myx"
myx = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3DA05463
/// @DnDArgument : "var" "myy"
myy = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B75D8C2
/// @DnDArgument : "var" "mousex"
mousex = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 17C552DB
/// @DnDArgument : "var" "mousey"
mousey = 0;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 77E7066A
/// @DnDArgument : "target" "myx"
myx = x;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 42DE4100
/// @DnDArgument : "target" "myy"
/// @DnDArgument : "instvar" "1"
myy = y;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 08D25FC3
/// @DnDApplyTo : {UI_pointer}
/// @DnDArgument : "target" "mousex"
with(UI_pointer) {
mousex = x;
}

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 30263318
/// @DnDApplyTo : {UI_pointer}
/// @DnDArgument : "target" "mousey"
/// @DnDArgument : "instvar" "1"
with(UI_pointer) {
mousey = y;
}