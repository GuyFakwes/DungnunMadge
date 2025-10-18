/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2374FBB3
/// @DnDArgument : "var" "questdone"
/// @DnDArgument : "value" "1"
if(questdone == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E211A10
	/// @DnDParent : 2374FBB3
	/// @DnDArgument : "var" "global.player_key_count"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "levelkeycount"
	if(global.player_key_count >= levelkeycount){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 16B6C5A1
		/// @DnDApplyTo : all
		/// @DnDParent : 5E211A10
		with(all) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6A3E22D2
		/// @DnDParent : 5E211A10
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Files.Open_Ini
		/// @DnDVersion : 1
		/// @DnDHash : 4A295EEE
		/// @DnDParent : 5E211A10
		/// @DnDArgument : "filename" ""save01.ini""
		ini_open("save01.ini");
	
		/// @DnDAction : YoYo Games.Files.Ini_Write
		/// @DnDVersion : 1
		/// @DnDHash : 2354DD25
		/// @DnDParent : 5E211A10
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "section" ""inventory""
		/// @DnDArgument : "key" ""tokens""
		/// @DnDArgument : "value" "global.player_points"
		ini_write_real("inventory", "tokens", global.player_points);
	
		/// @DnDAction : YoYo Games.Files.Close_Ini
		/// @DnDVersion : 1
		/// @DnDHash : 22647DCA
		/// @DnDParent : 5E211A10
		ini_close();
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 132EA095
		/// @DnDParent : 5E211A10
		/// @DnDArgument : "value" "global.Currentlevel+1"
		/// @DnDArgument : "var" "global.Currentlevel"
		global.Currentlevel = global.Currentlevel+1;
	
		/// @DnDAction : YoYo Games.Rooms.If_Last_Room
		/// @DnDVersion : 1
		/// @DnDHash : 7A4C10CA
		/// @DnDParent : 5E211A10
		if(room == room_last){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 2CF53A9E
			/// @DnDParent : 7A4C10CA
			/// @DnDArgument : "room" "MainMenu"
			/// @DnDSaveInfo : "room" "MainMenu"
			room_goto(MainMenu);}
	
		/// @DnDAction : YoYo Games.Rooms.If_Last_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3DA753EB
		/// @DnDParent : 5E211A10
		/// @DnDArgument : "not" "1"
		if(room != room_last){	/// @DnDAction : YoYo Games.Rooms.Next_Room
			/// @DnDVersion : 1
			/// @DnDHash : 0EA8FB0B
			/// @DnDParent : 3DA753EB
			room_goto_next();}}}