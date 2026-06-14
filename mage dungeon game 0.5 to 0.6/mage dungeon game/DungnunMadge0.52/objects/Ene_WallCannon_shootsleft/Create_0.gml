/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3BB0D30D
/// @DnDInput : 4
/// @DnDArgument : "var" "movement_speed"
/// @DnDArgument : "var_1" "healthpoints"
/// @DnDArgument : "var_2" "aggro"
/// @DnDArgument : "var_3" "selecteddirection"
movement_speed = 0;
healthpoints = 0;
aggro = 0;
selecteddirection = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1E198619
/// @DnDArgument : "var" "selecteddirection"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "360"
selecteddirection = floor(random_range(0, 360 + 1));

/// @DnDAction : YoYo Games.Movement.Add_Motion
/// @DnDVersion : 1
/// @DnDHash : 7D576D18
/// @DnDArgument : "dir" "selecteddirection"
/// @DnDArgument : "speed" "movement_speed"
motion_add(selecteddirection, movement_speed);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44BFFA73
/// @DnDArgument : "expr" "120"
/// @DnDArgument : "var" "aggro"
aggro = 120;