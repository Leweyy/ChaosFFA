waituntil {!isnull (finddisplay 46)};

//just in case an eh is already present by spam relocating remove it
[] call removeeh;

// update users hud to reflect new objective
[1] call player_fnc_hudUpdate;
[2, format["Objective has been relocated to %1. Press [ENTER] to be teleported there", markerText currentObjective]] call player_fnc_hudUpdate;

tpToNewObjHandler = (findDisplay 46) displayAddEventHandler ["KeyDown", {
    private ["_code","_shift","_ctrl","_alt","_success"];
    _keyCode = _this select 1;
    _shift = _this select 2;
    _ctrl = _this select 3;
    _alt = _this select 4;
    _success = false;

    switch (_keyCode) do {
        // enter - Tp to obj
        case 28: {
            [] call Player_fnc_tpPlayerToObjective;
            [] call removeeh;
            [2, ""] call player_fnc_hudUpdate;
            _success = true;
        };
    };
    _success;

}];

removeeh = {
    if (!isNil "tpToNewObjHandler") then {
        tpToNewObjHandler = (findDisplay 46) displayRemoveEventHandler ["KeyDown", tpToNewObjHandler];
    }
};


