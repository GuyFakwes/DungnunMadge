/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E8A004A
/// @DnDArgument : "var" "trigger_timer"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "wake_time"
if(trigger_timer >= wake_time){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E003840
	/// @DnDParent : 1E8A004A
	/// @DnDArgument : "expr" "trigger_timer+1/60"
	/// @DnDArgument : "var" "trigger_timer"
	trigger_timer = trigger_timer+1/60;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61083864
	/// @DnDParent : 1E8A004A
	/// @DnDArgument : "var" "trigger_timer"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "trigger_time"
	if(trigger_timer < trigger_time){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A757090
		/// @DnDParent : 61083864
		/// @DnDArgument : "var" "animskip"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "4"
		if(animskip < 4){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1BC1BC1D
			/// @DnDParent : 7A757090
			/// @DnDArgument : "expr" "animskip+1"
			/// @DnDArgument : "var" "animskip"
			animskip = animskip+1;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 02AD6D34
			/// @DnDParent : 7A757090
			exit;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73373F42
		/// @DnDParent : 61083864
		/// @DnDArgument : "var" "wobble_frame"
		/// @DnDArgument : "value" "1"
		if(wobble_frame == 1){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 36022446
			/// @DnDParent : 73373F42
			/// @DnDArgument : "x" "5"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "5"
			/// @DnDArgument : "y_relative" "1"
			x += 5;y += 5;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 6173E871
			/// @DnDApplyTo : {Ene_movingspiked}
			/// @DnDParent : 73373F42
			/// @DnDArgument : "x" "5"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "5"
			/// @DnDArgument : "y_relative" "1"
			with(Ene_movingspiked) {
			x += 5;y += 5;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4AC3B0DB
			/// @DnDParent : 73373F42
			/// @DnDArgument : "var" "wobble_frame"
			wobble_frame = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 490B2435
			/// @DnDParent : 73373F42
			/// @DnDArgument : "var" "animskip"
			animskip = 0;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 3969BC9B
			/// @DnDParent : 73373F42
			exit;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5303D66B
		/// @DnDParent : 61083864
		/// @DnDArgument : "var" "wobble_frame"
		if(wobble_frame == 0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 47D55952
			/// @DnDParent : 5303D66B
			/// @DnDArgument : "x" "-5"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-5"
			/// @DnDArgument : "y_relative" "1"
			x += -5;y += -5;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 6DCCBEBF
			/// @DnDApplyTo : {Ene_movingspiked}
			/// @DnDParent : 5303D66B
			/// @DnDArgument : "x" "-5"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-5"
			/// @DnDArgument : "y_relative" "1"
			with(Ene_movingspiked) {
			x += -5;y += -5;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B6C6F91
			/// @DnDParent : 5303D66B
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "wobble_frame"
			wobble_frame = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3B399EA0
			/// @DnDParent : 5303D66B
			/// @DnDArgument : "var" "animskip"
			animskip = 0;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 383832EC
			/// @DnDParent : 5303D66B
			exit;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 184CAAB0
/// @DnDArgument : "var" "trigger_timer"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "trigger_time"
if(trigger_timer >= trigger_time){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4886F5CC
	/// @DnDParent : 184CAAB0
	/// @DnDArgument : "var" "image_yscale"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(image_yscale >= 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50615E10
		/// @DnDParent : 4886F5CC
		/// @DnDArgument : "var" "image_yscale"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "travel_distance"
		if(image_yscale >= travel_distance){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 19943C4E
			/// @DnDParent : 50615E10
			/// @DnDArgument : "var" "trigger_timer"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "trigger_time+down_time"
			if(trigger_timer >= trigger_time+down_time){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 40BB8F86
				/// @DnDParent : 19943C4E
				/// @DnDArgument : "var" "isreset"
				isreset = 0;}}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DF1A3DF
		/// @DnDParent : 4886F5CC
		/// @DnDArgument : "var" "isreset"
		if(isreset == 0){	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 2E826489
			/// @DnDParent : 6DF1A3DF
			/// @DnDArgument : "xscale" "0"
			/// @DnDArgument : "xscale_relative" "1"
			/// @DnDArgument : "yscale" "-0.2"
			/// @DnDArgument : "yscale_relative" "1"
			image_xscale += 0;image_yscale += -0.2;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 754B06F9
			/// @DnDApplyTo : {Ene_movingspiked}
			/// @DnDParent : 6DF1A3DF
			/// @DnDArgument : "x" "0"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-13"
			/// @DnDArgument : "y_relative" "1"
			with(Ene_movingspiked) {
			x += 0;y += -13;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1EB6D68B
			/// @DnDParent : 6DF1A3DF
			/// @DnDArgument : "var" "image_yscale"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "1"
			if(image_yscale <= 1){	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
				/// @DnDVersion : 1
				/// @DnDHash : 375BAB84
				/// @DnDParent : 1EB6D68B
				x = xstart;y = ystart;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2E1C25F6
				/// @DnDParent : 1EB6D68B
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "isreset"
				isreset = 1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 651E2EC8
				/// @DnDParent : 1EB6D68B
				/// @DnDArgument : "var" "trigger_timer"
				trigger_timer = 0;}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 384A455C
	/// @DnDParent : 184CAAB0
	/// @DnDArgument : "var" "image_yscale"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "travel_distance"
	if(image_yscale < travel_distance){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 148DF0EA
		/// @DnDParent : 384A455C
		/// @DnDArgument : "var" "isreset"
		/// @DnDArgument : "value" "1"
		if(isreset == 1){	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 54559542
			/// @DnDParent : 148DF0EA
			/// @DnDArgument : "xscale" "0"
			/// @DnDArgument : "xscale_relative" "1"
			/// @DnDArgument : "yscale" "0.2"
			/// @DnDArgument : "yscale_relative" "1"
			image_xscale += 0;image_yscale += 0.2;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 04449BCE
			/// @DnDApplyTo : {Ene_movingspiked}
			/// @DnDParent : 148DF0EA
			/// @DnDArgument : "x" "0"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "13"
			/// @DnDArgument : "y_relative" "1"
			with(Ene_movingspiked) {
			x += 0;y += 13;
			}}}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D2CA924
/// @DnDArgument : "expr" "trigger_timer+1/60"
/// @DnDArgument : "var" "trigger_timer"
trigger_timer = trigger_timer+1/60;