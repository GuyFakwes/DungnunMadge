/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64216F22
/// @DnDArgument : "var" "global.gameispaused"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.gameispaused > 1){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2E4FD916
	/// @DnDParent : 64216F22
	exit;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75BBB80C
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "5"
if(playermana <= 5){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 284CAB84
	/// @DnDParent : 75BBB80C
	/// @DnDArgument : "var" "animationstate"
	/// @DnDArgument : "value" "4"
	if(animationstate == 4){	/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 0ED1BBF7
		/// @DnDParent : 284CAB84
		exit;}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5ED6EA54
	/// @DnDParent : 75BBB80C
	/// @DnDArgument : "spriteind" "BlueMageNoMana"
	/// @DnDSaveInfo : "spriteind" "BlueMageNoMana"
	sprite_index = BlueMageNoMana;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 427917A1
	/// @DnDParent : 75BBB80C
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68FE0D23
	/// @DnDParent : 75BBB80C
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "var" "animationstate"
	animationstate = 4;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7DAF2A24
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "5"
if(playermana > 5){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FD9AA8E
	/// @DnDParent : 7DAF2A24
	/// @DnDArgument : "var" "playermana"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "20"
	if(playermana < 20){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4AA4FD3A
		/// @DnDParent : 0FD9AA8E
		/// @DnDArgument : "var" "animationstate"
		/// @DnDArgument : "value" "3"
		if(animationstate == 3){	/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 29D5CE46
			/// @DnDParent : 4AA4FD3A
			exit;}
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 24F76EFC
		/// @DnDParent : 0FD9AA8E
		/// @DnDArgument : "spriteind" "BlueMageEyes"
		/// @DnDSaveInfo : "spriteind" "BlueMageEyes"
		sprite_index = BlueMageEyes;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 30F33528
		/// @DnDParent : 0FD9AA8E
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A1642B1
		/// @DnDParent : 0FD9AA8E
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "animationstate"
		animationstate = 3;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DAD10F7
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "20"
if(playermana > 20){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C155D06
	/// @DnDParent : 1DAD10F7
	/// @DnDArgument : "var" "playermana"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "50"
	if(playermana < 50){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 611C1BF7
		/// @DnDParent : 1C155D06
		/// @DnDArgument : "var" "animationstate"
		/// @DnDArgument : "value" "2"
		if(animationstate == 2){	/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 081878DD
			/// @DnDParent : 611C1BF7
			exit;}
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 01030A76
		/// @DnDParent : 1C155D06
		/// @DnDArgument : "spriteind" "BlueGlowMage"
		/// @DnDSaveInfo : "spriteind" "BlueGlowMage"
		sprite_index = BlueGlowMage;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 48F10DEA
		/// @DnDParent : 1C155D06
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B5802B9
		/// @DnDParent : 1C155D06
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "animationstate"
		animationstate = 2;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52757FC5
/// @DnDArgument : "var" "playermana"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "50"
if(playermana > 50){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DA48969
	/// @DnDParent : 52757FC5
	/// @DnDArgument : "var" "animationstate"
	/// @DnDArgument : "value" "1"
	if(animationstate == 1){	/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 70087396
		/// @DnDParent : 1DA48969
		exit;}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1791A889
	/// @DnDParent : 52757FC5
	/// @DnDArgument : "spriteind" "BlueGlowMageFull"
	/// @DnDSaveInfo : "spriteind" "BlueGlowMageFull"
	sprite_index = BlueGlowMageFull;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 355920DD
	/// @DnDParent : 52757FC5
	image_speed = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D1B8019
	/// @DnDParent : 52757FC5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "animationstate"
	animationstate = 1;}