private _display=(findDisplay 7800);

if!([player]call Admin_fnc_isPlayerAdmin) exitWith{};

if(isNull _display) then{
	if(!createDialog"chaos_admin_menu") exitWith {
		hint"Menu Could not open";
	};
};

((findDisplay 7800) displayCtrl 7820) ctrlSetEventHandler["ButtonClick",'["vehicle_points","add",10] remoteExec ["player_fnc_stats",CHAOS_ADMIN_TARGET_PLAYER]'];
((findDisplay 7800) displayCtrl 7803) ctrlSetEventHandler["LBSelChanged","[] call playerListLBSelChanged"];

{
	if(isNull _x)exitWith{};
	_playerId = getPlayerUID _x;
	_playerName = format["%1 (%2)",name _x,_playerId];
	_isAdmin = [_x]call Admin_fnc_isPlayerAdmin;
	if(_playerId=='')exitWith{};
	_ctrl=(findDisplay 7800) displayCtrl 7803;
	_lbColor=[];
	if(_isAdmin) then{
		_lbColor = [1,0,0,1];
	}else{
		_lbColor = [1,1,1,1];
	};
	_index = _ctrl lbAdd _playerName;
	_ctrl lbSetColor[_index,_lbColor];
	_ctrl lbSetTooltip[_index,format["Kills: %1 %4Deaths: %2 %4Vehicle Points: %3",_pKills,_pDeaths,_pVehiclePoints,endl]];

} forEach allPlayers;

playerListLBSelChanged = {
	_ctrl = (findDisplay 7800) displayCtrl 7803;
	_index = lbCurSel _ctrl;
	_target = _ctrl lbText _index;
	_break = false;
	_puid='';
	CHAOS_ADMIN_TARGET_PLAYER=objNull;
	
	{
		_puid=getPlayerUID _x;
		if(_puid != '')then {
			_search = format['%1 (%2)',name _x,_puid];
			if(_search == _target)then {
				_break = true;
				CHAOS_ADMIN_TARGET_PLAYER = _x;
			};
		};
		if(_break) exitWith {true};

	} forEach (call admin_fnc_allPlayers);
};

admin_fnc_allPlayers={
	_array=allPlayers;
	_array append allDeadMen;
	_array
}
