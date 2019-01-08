private _display = (findDisplay 7800);

if !([player] call Admin_fnc_isPlayerAdmin) exitWith{};

if (isNull _display) then {
    if (!createDialog "chaos_admin_menu") exitWith {hint "Menu Could not open";};
};

// ctrls 

//Populate player list
{
	if(isNull _x)exitWith{};

	_playerId = getPlayerUID _x;
	_playerName = name _x;
	_isAdmin = [_x] call Admin_fnc_isPlayerAdmin;
	if(_playerId == '')exitWith{};

	_ctrl = (findDisplay 7800) displayCtrl 7803;

	_lbColor = [];

	if (_isAdmin) then {
		_playerName = format["%1 [ADMIN]",_playerName];
		_lbColor = [1,0,0,1];
	} else {
		_lbColor = [1,1,1,1];
	};

	_index = _ctrl lbAdd _playerName;
	_ctrl lbSetData [_index, vehicleVarName _x];
	_ctrl lbSetColor [_index,_lbColor];

	_ctrl lbSetTooltip [_index,format["Kills: %1 %4Deaths: %2 %4Vehicle Points: %3",_pKills,_pDeaths,_pVehiclePoints,endl]];

} forEach allPlayers;