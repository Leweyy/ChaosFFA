player addEventHandler ["Respawn", {
	// Re-add actions on respawn;
	[] call player_fnc_addActions;

	// load previous inventory
	[player, [missionNamespace, "inventory_var"]] call BIS_fnc_loadInventory;

	//put player in 3rd person 
	player switchCamera "EXTERNAL";
	
	//Disable Fatigue
	player enableFatigue false;

	//init main menu
	//[] call Lobby_fnc_initMainMenu
}];

player addEventHandler ["Killed", {

	//save loadout to be reloaded on respawn
	[player, [missionNamespace, "inventory_var"]] call BIS_fnc_saveInventory;
	
}];

//Attempt to give player a new mag when they reload
player addEventHandler ["Reloaded", {
    params ["_unit", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];
	_mag = _oldMagazine select 0;
    player addItem _mag;
}];

addMissionEventHandler ["EntityKilled",
{
	params ["_killed", "_killer", "_instigator"];
	if (isNull _instigator) then {_instigator = UAVControl vehicle _killer select 0}; // UAV/UGV player operated road kill
	if (isNull _instigator) then {_instigator = _killer}; // player driven vehicle road kill
	if (_instigator isEqualTo player) then {
		_pKills = profileNamespace getVariable "chaos_player_kills";
		if (isNil "_pKills") then {
			_pKills = 0
		};
		_pKills = pKills + 1;
		profileNamespace setVariable ["chaos_player_kills", _pKills]
	};
	if (_killed isEqualTo player) then {
		_pDeaths = profileNamespace getVariable "chaos_player_deaths";
		if (isNil "_pDeaths") then {
			_pDeaths = 0
		};
		_pDeaths = _pDeaths + 1;
		profileNamespace setVariable ["chaos_player_deaths", _pDeaths]
	};
}];

// attempt to watch currentObjective variable to init player teleport to new obj
"currentObjective" addPublicVariableEventHandler Server_fnc_objectiveChanged;

// On key down stuff earplugs etc 
waituntil {!isnull (finddisplay 46)};

private "_keyHandler";

_keyHandler = (findDisplay 46) displayAddEventHandler ["KeyDown", {
    private ["_code","_shift","_ctrl","_alt","_success"];
    _keyCode = _this select 1;
    _shift = _this select 2;
    _ctrl = _this select 3;
    _alt = _this select 4;
    _success = false;

    switch (_keyCode) do {

		// Admin Menu
		case 21: {
			_isAdmin = [player] call admin_fnc_isPlayerAdmin;
			if (_isAdmin) then {
				[] call admin_fnc_initRelocateObjectiveMenu;
			};
			_success = true;
		};

        /* Earplugs with Shift-O */
        case 24: {
            if (_shift) then {
                if (soundVolume != 1) then {
                    1 fadeSound 1;
                    titleText ["Earplugs Out","PLAIN"]; titleFadeOut 3;
                } else {
                    1 fadeSound 0.1;
                    titleText ["Earplugs In","PLAIN"]; titleFadeOut 3;
                };
				_success = true;
            };
        };

        /* Holster with Shift-H */
        case 35: {
			if(isNil 'weapon_holster')then
			{
				weapon_holster = true;
				if (_shift && !(currentWeapon player isEqualTo "")) then {
					holsteredWeapon = currentWeapon player;
					player action ["SwitchWeapon", player, player, 100];
					_success = true;
				}
			}
			else
			{
				weapon_holster = nil;
				if (holsteredWeapon in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
					player selectWeapon holsteredWeapon;
					_success = true;
				};
			};
        };
	
		/* Toggle Grass - Press [END] */
        case 207: {
            if (_shift) then {
                if (getTerrainGrid != 25) then {
                    setTerrainGrid 25;
                    titleText ["Grass Off","PLAIN"]; titleFadeOut 3;
                } else {
                    setTerrainGrid 50;
                    titleText ["Grass On","PLAIN"]; titleFadeOut 3;
				};
                _success = true;
            };
        };
		
		/* Disable Tactical View */
		case 83: {
			if ((_this select 1) in (actionKeys "TacticalView")) then {       
         		hint "Tactical View Disabled";
		 		_success = true;
		    };
		};
    };
    _success;
}];
