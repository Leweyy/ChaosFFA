if !([player] call Admin_fnc_isPlayerAdmin) exitWith{};

if (isNull (findDisplay 7900)) then {
    if (!createDialog "chaos_admin_menu_relocate_objective") exitWith {hint "Menu Could not open";};
};

_nodeList = (findDisplay 7900) displayCtrl 7903;
_nodeList ctrlSetEventHandler ["MouseButtonDblClick",'[] call setObj;'];
_nodeMarkers = (call nodes_fnc_getNodes);

_conflictSyrta = _nodeList tvAdd [[],"Syrta"];
_conflictRebelIsland = _nodeList tvAdd [[],"Rebel Island"];
_conflictSofia = _nodeList tvAdd [[],"Sofia"];
_conflictNeochori = _nodeList tvAdd [[],"Neochori"];
_conflictPyrgos = _nodeList tvAdd [[],"Pyrgos"];

tvExpandAll _nodeList;

{
	_nodeList = (findDisplay 7900) displayCtrl 7903;
	_currMarker = _x;
	_currentObjective = currentObjective;
	_containsStringSyrta = ["syrta", _currMarker] call BIS_fnc_inString;
	_containsStringSofia = ["sofia", _currMarker] call BIS_fnc_inString;
	_containsStringPyrgos = ["pyrgos", _currMarker] call BIS_fnc_inString;
	_containsStringRebel = ["rebelisland", _currMarker] call BIS_fnc_inString;
	_containsStringNeochori = ["neochori", _currMarker] call BIS_fnc_inString;
	_icon = getText (configFile >> "CfgMarkers" >> "mil_unknown" >> "icon");

	if(_containsStringSyrta) then {
		_add = _nodeList tvAdd [[0],markerText _x];
		_nodeList tvSetData [[0,_add],_x];
		_nodeList tvSetPicture [[0,_add],_icon];
		if (_currMarker == _currentObjective ) then {
			_nodeList tvSetPictureColor [[0,_add], [0,0,1,1]];
		} else {
			_nodeList tvSetPictureColor [[0,_add], [1,0,0,1]];
		}
	};
	if(_containsStringRebel) then {
		_add = _nodeList tvAdd [[1],markerText _x];
		_nodeList tvSetData [[1,_add],_x];
		_nodeList tvSetPicture [[1,_add],_icon];
		if (_currMarker == _currentObjective ) then {
			_nodeList tvSetPictureColor [[1,_add], [0,0,1,1]];
		} else {
			_nodeList tvSetPictureColor [[1,_add], [1,0,0,1]];
		}
	};
	if(_containsStringSofia) then {
		_add = _nodeList tvAdd [[2],markerText _x];
		_nodeList tvSetData [[2,_add],_x];
		_nodeList tvSetPicture [[2,_add],_icon];
		if (_currMarker == _currentObjective ) then {
			_nodeList tvSetPictureColor [[2,_add], [0,0,1,1]];
		} else {
			_nodeList tvSetPictureColor [[2,_add], [1,0,0,1]];
		}	
	};
	if(_containsStringNeochori) then {
		_add = _nodeList tvAdd [[3],markerText _x];
		_nodeList tvSetData [[3,_add],_x];
		_nodeList tvSetPicture [[3,_add],_icon];
		if (_currMarker == _currentObjective ) then {
			_nodeList tvSetPictureColor [[3,_add], [0,0,1,1]];
		} else {
			_nodeList tvSetPictureColor [[3,_add], [1,0,0,1]];
		}
	};
	if(_containsStringPyrgos) then {
		_add = _nodeList tvAdd [[4],markerText _x];
		_nodeList tvSetData [[4,_add],_x];
		_nodeList tvSetPicture [[4,_add],_icon];
		if (_currMarker == _currentObjective ) then {
			_nodeList tvSetPictureColor [[4,_add], [0,0,1,1]];
		} else {
			_nodeList tvSetPictureColor [[4,_add], [1,0,0,1]];
		}
	};
} forEach _nodeMarkers;

setObj = {

	_ctrl = (findDisplay 7900) displayCtrl 7903;
	_index = tvCurSel _ctrl;
	_selectedNodeMarkerId = _ctrl tvData _index;
	_selectedNodeName = _ctrl tvText _index;

	if (adminRelocateTimer > diag_tickTime) exitWith {hint format["Wait %1 seconds before relocating objective again", adminRelocateTimer - diag_tickTime]};

	adminRelocateTimer = diag_tickTime + 10;
	publicVariable "adminRelocateTimer";

	//set old marker to red
	_oldObjective = currentObjective;
	_oldObjective setMarkerColor "ColorRed";

	//set new public var and set marker to blue
	currentObjective = _selectedNodeMarkerId;
	publicVariable "currentObjective";
	currentObjective setMarkerColor "ColorBlue";

	adminRelocated = true;
	publicVariable "adminRelocated";

	[] call Player_fnc_objectiveChanged;
	//_text = format["Objective has been relocated to %1",_selectedNodeName];
	//[_text, "info", 3] call Utils_fnc_notification;

}