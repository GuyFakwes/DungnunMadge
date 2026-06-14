/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 4EC7839A
/// @DnDArgument : "var" "fredmoves"
/// @DnDArgument : "object" "Ene_fFredball_moves"
/// @DnDSaveInfo : "object" "Ene_fFredball_moves"
fredmoves = instance_number(Ene_fFredball_moves);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 23D0E04D
/// @DnDArgument : "var" "fredball"
/// @DnDArgument : "object" "Ene_Fredball"
/// @DnDSaveInfo : "object" "Ene_Fredball"
fredball = instance_number(Ene_Fredball);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 519D9698
/// @DnDArgument : "expr" "fredmoves+fredball"
/// @DnDArgument : "var" "enemycount"
enemycount = fredmoves+fredball;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 57FD8191
/// @DnDArgument : "msg" ""enemycount =""
show_debug_message(string("enemycount ="));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 4B946D5C
/// @DnDArgument : "msg" "enemycount"
show_debug_message(string(enemycount));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 433E5BBA
/// @DnDArgument : "var" "enemycount"
/// @DnDArgument : "op" "3"
if(enemycount <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44BFED3B
	/// @DnDParent : 433E5BBA
	/// @DnDArgument : "expr" "arenalevel+1"
	/// @DnDArgument : "var" "arenalevel"
	arenalevel = arenalevel+1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DED0BFA
/// @DnDArgument : "var" "arenalevel"
/// @DnDArgument : "op" "3"
if(arenalevel <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BA2BE1C
	/// @DnDParent : 6DED0BFA
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "arenalevel"
	arenalevel = 1;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5BD74918
/// @DnDArgument : "expr" "arenalevel"
/// @DnDArgument : "var" "wave"
wave = arenalevel;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0FD0AA86
/// @DnDArgument : "expr" "wave"
/// @DnDArgument : "var" "spawnloop"
spawnloop = wave;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7EF65FF6
/// @DnDArgument : "var" "enemycount"
/// @DnDArgument : "op" "2"
if(enemycount > 0){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5239080B
	/// @DnDParent : 7EF65FF6
	/// @DnDArgument : "value" "wave"
	/// @DnDArgument : "var" "waveno"
	global.waveno = wave;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7DF77F50
	/// @DnDParent : 7EF65FF6
	exit;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01DE1D95
/// @DnDArgument : "var" "wave"
/// @DnDArgument : "op" "4"
if(wave >= 0){	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 021DF581
	/// @DnDParent : 01DE1D95
	/// @DnDArgument : "var" "wave"
	/// @DnDArgument : "op" "2"
	while ((wave > 0)) {
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0623BABE
		/// @DnDParent : 021DF581
		/// @DnDArgument : "var" "spawnrandom"
		/// @DnDArgument : "value" "random_range(-1,3)"
		var spawnrandom = random_range(-1,3);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0CBE2B5A
		/// @DnDParent : 021DF581
		/// @DnDArgument : "var" "spawnrandom"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "1"
		if(spawnrandom >= 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2BEE65E2
			/// @DnDParent : 0CBE2B5A
			/// @DnDArgument : "xpos" "irandom_range(100,1800)"
			/// @DnDArgument : "ypos" "irandom_range(100,900)"
			/// @DnDArgument : "objectid" "Ene_Fredball"
			/// @DnDSaveInfo : "objectid" "Ene_Fredball"
			instance_create_layer(irandom_range(100,1800), irandom_range(100,900), "Instances", Ene_Fredball);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 403A1730
		/// @DnDParent : 021DF581
		/// @DnDArgument : "var" "spawnrandom"
		/// @DnDArgument : "op" "3"
		if(spawnrandom <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 78F791C3
			/// @DnDParent : 403A1730
			/// @DnDArgument : "xpos" "irandom_range(100,1800)"
			/// @DnDArgument : "ypos" "irandom_range(100,900)"
			/// @DnDArgument : "objectid" "Ene_fFredball_moves"
			/// @DnDSaveInfo : "objectid" "Ene_fFredball_moves"
			instance_create_layer(irandom_range(100,1800), irandom_range(100,900), "Instances", Ene_fFredball_moves);}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 122D2C09
		/// @DnDParent : 021DF581
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "wave"
		wave += -1;
	}}