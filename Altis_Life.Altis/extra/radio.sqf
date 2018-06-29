if (!isDedicated) then {
	VoN_ChannelId_fnc = {
		switch _this do {
			case localize "str_channel_global" : {[0]};
			case localize "str_channel_side" : {[1]};
			case localize "str_channel_command" : {[2]};
			case localize "str_channel_group" : {[3]};
			case localize "str_channel_vehicle" : {[4]};
			case localize "str_channel_direct" : {[5]};
			case "Side Channel" : {[1]};
			default {[-1]}; 
		} 
	};
	VoN_Event_fnc = {
		VoN_currentTxt = _this;
		VoN_channelId = VoN_currentTxt call VoN_ChannelId_fnc;
		PLAYER_SPEAKS_PV = [player] + VoN_channelId;
		if (VoN_channelId select 0 == 1) then {
			hint "Bitte nicht im Seitenkanal Reden";
			publicVariableserver "PLAYER_SPEAKS_PV";
		};
	};
	0 = [] spawn {
		VoN_isOn = false;
		VoN_currentTxt = "";
		VoN_channelId = -1;
		_fncDown = {
			if (!VoN_isOn) then {
				if (!isNull findDisplay 55 && !isNull findDisplay 63) then {
					VoN_isOn = true;
					ctrlText (findDisplay 63 displayCtrl 101) call VoN_Event_fnc;
					findDisplay 55 displayAddEventHandler ["Unload", { VoN_isOn = false; "" call VoN_Event_fnc; }];
				};
			}; false
		};
	waitUntil {!isNull findDisplay 46};
		findDisplay 46 displayAddEventHandler ["KeyDown", _fncDown];
		findDisplay 46 displayAddEventHandler ["MouseButtonDown", _fncDown];
		findDisplay 46 displayAddEventHandler ["JoystickButton", _fncDown];
	}; 
}; //recieving end
"PLAYER_SPEAKS_PV" addPublicVariableEventHandler { 
	_spkr = _this select 1 select 0;
	_chID = _this select 1 select 1;
	if (isServer) then {
		if (_chID == 1) then {_spkr spawn {life_radio_civ radioChannelRemove [_this]; sleep 5;life_radio_civ radioChanneladd [_this];}; };
	};
};