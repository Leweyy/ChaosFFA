relocateObjMenu = findDisplay 46 createDisplay "RscDisplayEmpty";
disableSerialization;
title = relocateObjMenu ctrlCreate ["RscText", 102];
title ctrlSetPosition [
	SafeZoneX + (825 / 1920) * SafeZoneW,
	SafeZoneY + (240 / 1080) * SafeZoneH,
	(270 / 1920) * SafeZoneW,
	(30 / 1080) * SafeZoneH
];
title ctrlSetBackgroundColor [0.75,0,0,1];
title ctrlSetFontHeight 0.045;
title ctrlSetText "Objective Selection";
title ctrlSetFont "PuristaLight";
title ctrlCommit 0;

nodeList = relocateObjMenu ctrlCreate ["RscTreeSearch", 3009];
nodeList ctrlSetPosition [
	SafeZoneX + (825 / 1920) * SafeZoneW,
	SafeZoneY + (270 / 1080) * SafeZoneH,
	(270 / 1920) * SafeZoneW,
	(600 / 1080) * SafeZoneH
];
nodeList ctrlSetFont "PuristaLight";
nodeList ctrlSetFontHeight 0.035;
nodeList ctrlSetBackgroundColor [0.3,0.3,0.3,1];
nodeList ctrlSetEventHandler ["MouseButtonDblClick",'[] call setObj;'];
nodeList ctrlCommit 0;

_nodeMarkers = call nodes_fnc_getNodes;

_conflictSyrta = nodeList tvAdd [[],"Syrta"];
_conflictRebelIsland = nodeList tvAdd [[],"Rebel Island"];
_conflictSofia = nodeList tvAdd [[],"Sofia"];
_conflictNeochori = nodeList tvAdd [[],"Neochori"];
_conflictPyrgos = nodeList tvAdd [[],"Pyrgos"];

tvExpandAll nodeList;
{

	_currMarker = _x;
	_currentObjective = currentObjective;
	_containsStringSyrta = ["syrta", _currMarker] call BIS_fnc_inString;
	_containsStringSofia = ["sofia", _currMarker] call BIS_fnc_inString;
	_containsStringPyrgos = ["pyrgos", _currMarker] call BIS_fnc_inString;
	_containsStringRebel = ["rebelisland", _currMarker] call BIS_fnc_inString;
	_containsStringNeochori = ["neochori", _currMarker] call BIS_fnc_inString;
	_icon = getText (configFile >> "CfgMarkers" >> "mil_unknown" >> "icon");

	if(_containsStringSyrta) then {
		_add = nodeList tvAdd [[0],markerText _x];
		nodeList tvSetData [[0,_add],_x];
		nodeList tvSetPicture [[0,_add],_icon];
		if (_currMarker == _currentObjective ) then {
			nodeList tvSetPictureColor [[0,_add], [0,0,1,1]];
		} else {
			nodeList tvSetPictureColor [[0,_add], [1,0,0,1]];
		}
	};
	if(_containsStringRebel) then {
		_add = nodeList tvAdd [[1],markerText _x];
		nodeList tvSetData [[1,_add],_x];
		nodeList tvSetPicture [[1,_add],_icon];
		if (_currMarker == _currentObjective ) then {
			nodeList tvSetPictureColor [[1,_add], [0,0,1,1]];
		} else {
			nodeList tvSetPictureColor [[1,_add], [1,0,0,1]];
		}
	};
	if(_containsStringSofia) then {
		_add = nodeList tvAdd [[2],markerText _x];
		nodeList tvSetData [[2,_add],_x];
		nodeList tvSetPicture [[2,_add],_icon];
		if (_currMarker == _currentObjective ) then {
			nodeList tvSetPictureColor [[2,_add], [0,0,1,1]];
		} else {
			nodeList tvSetPictureColor [[2,_add], [1,0,0,1]];
		}	
	};
	if(_containsStringNeochori) then {
		_add = nodeList tvAdd [[3],markerText _x];
		nodeList tvSetData [[3,_add],_x];
		nodeList tvSetPicture [[3,_add],_icon];
		if (_currMarker == _currentObjective ) then {
			nodeList tvSetPictureColor [[3,_add], [0,0,1,1]];
		} else {
			nodeList tvSetPictureColor [[3,_add], [1,0,0,1]];
		}
	};
	if(_containsStringPyrgos) then {
		_add = nodeList tvAdd [[4],markerText _x];
		nodeList tvSetData [[4,_add],_x];
		nodeList tvSetPicture [[4,_add],_icon];
		if (_currMarker == _currentObjective ) then {
			nodeList tvSetPictureColor [[4,_add], [0,0,1,1]];
		} else {
			nodeList tvSetPictureColor [[4,_add], [1,0,0,1]];
		}
	};
} forEach _nodeMarkers;

setObj = {

	_ctrl = nodeList;
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
