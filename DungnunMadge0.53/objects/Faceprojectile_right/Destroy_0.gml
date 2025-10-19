/// @DnDAction : YoYo Games.Particles.Part_Emit_Destroy
/// @DnDVersion : 1
/// @DnDHash : 713E14DE
/// @DnDArgument : "system" "global.P_system2"
/// @DnDArgument : "emitter" "playerprojectileemitter"
part_emitter_destroy(global.P_system2, playerprojectileemitter);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 60E9B52F
/// @DnDArgument : "soundid" "WAV_Fireball_Launch_1"
/// @DnDSaveInfo : "soundid" "WAV_Fireball_Launch_1"
var l60E9B52F_0 = WAV_Fireball_Launch_1;if (audio_is_playing(l60E9B52F_0)){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4C7A86EB
	/// @DnDParent : 60E9B52F
	/// @DnDArgument : "soundid" "WAV_Fireball_Launch_1"
	/// @DnDSaveInfo : "soundid" "WAV_Fireball_Launch_1"
	audio_stop_sound(WAV_Fireball_Launch_1);}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 1F2251B3
/// @DnDArgument : "soundid" "WAV_Fireball_Impact"
/// @DnDArgument : "gain" "0.5"
/// @DnDArgument : "pitch" "1.3"
/// @DnDSaveInfo : "soundid" "WAV_Fireball_Impact"
audio_play_sound(WAV_Fireball_Impact, 0, 0, 0.5, undefined, 1.3);