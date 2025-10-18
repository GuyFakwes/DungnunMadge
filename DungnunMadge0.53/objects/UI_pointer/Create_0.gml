/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6AF2899C
/// @DnDArgument : "var" "myx"
myx = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A7C5FB0
/// @DnDArgument : "var" "myy"
myy = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F512346
/// @DnDArgument : "var" "mousex"
mousex = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C3896DD
/// @DnDArgument : "var" "mousey"
mousey = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 11901B81
image_xscale = 1;image_yscale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CFDBA10
/// @DnDArgument : "var" "fireball_cooldown"
fireball_cooldown = 0;

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 2C2701B9
/// @DnDArgument : "var" "electricparticles"
/// @DnDArgument : "persist" "1"
/// @DnDArgument : "partsys" "energyball"
/// @DnDSaveInfo : "partsys" "energyball"
electricparticles = part_system_create_layer("Instances", 1, energyball);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 2F1FB3C9
/// @DnDArgument : "var" "electicparticle"
electicparticle = part_type_create();// no blending

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 7A90C98D
system = part_system_create_layer("Instances", 0);

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 505BF861
system = part_system_create_layer("Instances", 0);