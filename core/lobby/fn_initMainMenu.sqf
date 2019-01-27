if (isNull (findDisplay 6700)) then {
    if (!createDialog "chaos_spawn_menu") exitWith {hint "Menu Could not open";};
};

waitUntil {!isNil "currentObjective"};
waitUntil {!(isNull (findDisplay 6700))};

//remove esc from closing dialog
escKeyEH = (findDisplay 6700) displayAddEventHandler ["KeyDown", "if (((_this select 1) == 1)) then {true} else {false};"];

// create loop to move map to currentObjective, terminated on dialog unload
mapanimloop = [] spawn {
	while {true} do {
		_map = (findDisplay 6700) displayCtrl 6703;
		_map ctrlMapAnimAdd [1, 0.1, getMarkerPos currentObjective];
		ctrlMapAnimCommit _map;
		sleep 2;
	}
};

//add classes to treeview
_customclassctrl = (findDisplay 6700) displayCtrl 6722; 
[_customclassctrl,true] call cc_fnc_addClassesToCtrl;


//Handle class items