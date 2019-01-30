if!([player]call Admin_fnc_isPlayerAdmin) exitWith{};

if(isNull (findDisplay 7800)) then{
	if(!createDialog"chaos_admin_menu") exitWith {
		hint"Menu Could not open";
	};
};

fnc_allPlayers = {

	_array = allPlayers;
	_array append allDeadMen;
	_array

};

{

	_ctrl = (findDisplay 7800) displayCtrl 7803;

	if(isNull _x)exitWith{};

	_playerId = getPlayerUID _x;
	_playerName = format["%1 (%2)",name _x,_playerId];
	_isAdmin = [_x] call Admin_fnc_isPlayerAdmin;

	if(_playerId=='')exitWith{};

	_lbColor = [];

	if(_isAdmin) then{
		_lbColor = [1,0,0,1];
	}else{
		_lbColor = [1,1,1,1];
	};

	_index = _ctrl lbAdd _playerName;
	_ctrl lbSetColor[_index,_lbColor];

	_pKills = _x getVariable "chaos_player_kills";
	_pDeaths = _x getVariable "chaos_player_deaths";
	_pVehiclePoints = _x getVariable "chaos_player_vehicle_points";

	_ctrl lbSetTooltip [_index,format["Kills: %1 %4Deaths: %2 %4Vehicle Points: %3",_pKills,_pDeaths,_pVehiclePoints,endl]];

} forEach allPlayers;


fnc_remoteExecEditStats = {

	_varName = _this select 0;
	_function = _this select 1;

	_enteredAmount = parseNumber ( ctrlText ( ( findDisplay 7800 ) displayCtrl 7821 ) );

	if (typeName _enteredAmount != 'SCALAR') exitWith {};

	switch (_function) do {
		case 'add': {
			[_varName,"add",_enteredAmount] remoteExec ["player_fnc_stats",CHAOS_ADMIN_TARGET_PLAYER];
			hint format["Added %1 points to %2", _enteredAmount, name CHAOS_ADMIN_TARGET_PLAYER];
		};
		case 'remove': {
			[_varName,"remove",_enteredAmount] remoteExec ["player_fnc_stats",CHAOS_ADMIN_TARGET_PLAYER];
			hint format["Removed %1 points from %2", _enteredAmount, name CHAOS_ADMIN_TARGET_PLAYER];
		};
		case 'reset': {
			[_varName,"reset"] remoteExec ["player_fnc_stats",CHAOS_ADMIN_TARGET_PLAYER];
			hint format["Points reset for %1", name CHAOS_ADMIN_TARGET_PLAYER];
		};
	};
};

fnc_playerListLbSelChanged = {

	_ctrl = (findDisplay 7800) displayCtrl 7803;
	_index = lbCurSel _ctrl;
	_target = _ctrl lbText _index;
	_break = false;
	_puid="";
	CHAOS_ADMIN_TARGET_PLAYER=objNull;
	
	{
		_puid = getPlayerUID _x;
		if(_puid != "")then {
			_search = format["%1 (%2)",name _x,_puid];
			if(_search == _target)then {
				_break = true;
				CHAOS_ADMIN_TARGET_PLAYER = _x;
			};
		};
		if(_break) exitWith {true};

	} forEach allPlayers;

};

((findDisplay 7800) displayCtrl 7822) ctrlSetEventHandler["ButtonClick", '["vehicle_points","add"] call fnc_remoteExecEditStats'];
((findDisplay 7800) displayCtrl 7823) ctrlSetEventHandler["ButtonClick", '["vehicle_points","remove"] call fnc_remoteExecEditStats'];
((findDisplay 7800) displayCtrl 7824) ctrlSetEventHandler["ButtonClick", '["vehicle_points","reset"] call fnc_remoteExecEditStats'];

((findDisplay 7800) displayCtrl 7803) ctrlSetEventHandler["LBSelChanged", 'call fnc_playerListLbSelChanged'];