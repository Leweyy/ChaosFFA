waitUntil {!(isNull (findDisplay 46))};

createDialog "chaos_main_menu";

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
_customclassctrl = (findDisplay 6700) displayCtrl 6707; 
[_customclassctrl,true] call cc_fnc_addClassesToCtrl;