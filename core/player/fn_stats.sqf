/*
    File: fn_stats.sqf
    Author: Lewey

    Description:
    Edit players stats, used locally and remotely by admins to edit a players stats

	Parameters
		0: _type - Type of stat to edit
		1: _function - add,remove,or reset
		2: _amount - amount to edit by

*/
params [
	["_type",""],
	["_function", ""],
	["_amount", 0]
];

_varName = "";

switch (_type) do {

	case "kills": {
		_varName = "chaos_player_kills"
	};
	case "deaths": {
		_varName = "chaos_player_deaths"
	};
	case "vehicle_points": {
		_varName = "chaos_player_vehicle_points"
	};
};

switch (_function) do {

	case "add": {
		_playerStat = profileNamespace getVariable _varName;
		if (isNil "_playerStat") then {
			_playerStat = 0;
		};
		_playerStat = _playerStat + _amount;
		profileNamespace setVariable [_varName,_playerStat];
		player setVariable [_varName,_playerStat];
	};
	case "remove": {
		_playerStat = profileNamespace getVariable _varName;
		if (isNil "_playerStat") then {
			_playerStat = 0;
		};
		_playerStat = _playerStat - _amount;
		profileNamespace setVariable [_varName,_playerStat];
		player setVariable [_varName,_playerStat];
	};
	case "reset": {
		_playerStat = profileNamespace getVariable _varName;
		if (isNil "_playerStat") then {
			_playerStat = 0;
		};
		_playerStat = 0;
		profileNamespace setVariable [_varName,_playerStat];
		player setVariable [_varName,_playerStat];
	};
	case "get": {
		returnPlayerStat = profileNamespace getVariable _varName;
		if (isNil "returnPlayerStat") then {
			returnPlayerStat = 0;
		};
		player setVariable [_varName,returnPlayerStat];
	};
};

if (_function == "get") exitWith {returnPlayerStat};





