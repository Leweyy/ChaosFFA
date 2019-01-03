hint format["Objective has been relocated to %1. Press [ENTER] to be teleported there", markerText currentObjective];
waituntil {!isnull (finddisplay 46)};

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
            _success = true;
        };
    };
    _success;

}];

removeeh = {
	tpToNewObjHandler = (findDisplay 46) displayRemoveEventHandler ["KeyDown", tpToNewObjHandler];
};

// *ToDo - update users hud to reflect new objective
