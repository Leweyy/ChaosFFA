/*
    File: fn_addClassesToCtrl.sqf
    Author: Lewey

    Description:
    adds classes to a treeview

	e.g 
	[(findDisplay 6700) displayCtrl 6703,false] call fn_addClassesToCtrl

    Parameters:
        0: ctrl    - display and ctrl to add to
		1: donator - Donator status fo player

*/

params [
	["_displayCtrl", controlNull, [controlNull]],
    ["_donator",false, [true,false]]
];

// Set class info
_customClasses = [["0","CC_1","Custom Class 1"],["1","CC_2","Custom Class 2"],["2","CC_3","Custom Class 3"]];
_extendedCustomClasses = _customClasses + [["3","CC_4","Custom Class 4"],["4","CC_5","Custom Class 5"],["5","CC_6","Custom Class 6"]];
_defaultClass = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]];

// if donator param is true use all 6 classes
if (_donator isEqualTo false) then {
	nClasses = _customClasses;
};
if (_donator isEqualTo true) then {
	nClasses = _extendedCustomClasses;
};

{

	_classNumber = parseNumber (_x select 0);
	_classId = _x select 1;
	_className = _x select 2;
	_classLoadout = [_classId] call cc_fnc_getClassById;
	_ctrl = _displayCtrl;

	//add class names
	_add = _ctrl tvAdd [[],_className];
	_ctrl tvSetData [[_forEachIndex],_classId];
	
	//if loadout is default dont bother doing the rest
	if !(_classLoadout isEqualTo _defaultClass) then {

		_uniform = _classLoadout select 0;
		_uniformItems = _classLoadout select 1;
		_vest = _classLoadout select 2;
		_vestItems = _classLoadout select 3;
		_backpack = _classLoadout select 4;
		_backpackItems = _classLoadout select 5;
		_helmet = _classLoadout select 6;
		_facewear = _classLoadout select 7;
		_binoclear = _classLoadout select 8;
		_primary = _classLoadout select 9;
		_primaryAttachments = _classLoadout select 10;
		_secondary = _classLoadout select 11;
		_secondaryAttachments = _classLoadout select 12;
		_handgun = _classLoadout select 13;
		_handgunAttachments = _classLoadout select 14;

		//diag_log format["%1 | %2 | _uniform | %3","cc_fnc_initMenu.sqf", _classId, _uniform];
		//UNIFORM
		if !(_uniform isEqualTo "" || _uniform isEqualTo []) then {
			_addUniform = _ctrl tvAdd [[_forEachIndex], [_uniform] call utils_fnc_getDisplayName];
			//diag_log format["%1 | %2 | _uniformItems | %3","cc_fnc_initMenu.sqf", _classId, _uniformItems];
			if !(_uniformItems isEqualTo "" || _uniformItems isEqualTo []) then {
				{
					_ctrl tvAdd [[_classNumber,0], [_x] call utils_fnc_getDisplayName];
				} forEach _uniformItems;
			};
		};


		//VEST
		//diag_log format["%1 | %2 | _vest | %3","cc_fnc_initMenu.sqf", _classId, _vest];
		if !(_vest isEqualTo "" || _vest isEqualTo []) then {
			_addVest = _ctrl tvAdd [[_forEachIndex], [_vest] call utils_fnc_getDisplayName];
			//diag_log format["%1 | %2 | _vestItems | %3","cc_fnc_initMenu.sqf", _classId, _vestItems];
			if !(_vestItems isEqualTo "" || _vestItems isEqualTo []) then {
				{
					_ctrl tvAdd [[_classNumber,1], [_x] call utils_fnc_getDisplayName];
				} forEach _vestItems;
			};
		};

		//BACKPACK
		//diag_log format["%1 | %2 | _backpack | %3","cc_fnc_initMenu.sqf", _classId, _backpack];
		if !(_backpack isEqualTo "" || _backpack isEqualTo []) then {
			_addBackpack = _ctrl tvAdd [[_forEachIndex], [_backpack] call utils_fnc_getDisplayName];
			//diag_log format["%1 | %2 | _backpackItems | %3","cc_fnc_initMenu.sqf", _classId, _backpackItems];
			if !(_backpackItems isEqualTo "" || _backpackItems isEqualTo []) then {
				{
					_ctrl tvAdd [[_classNumber,2], [_x] call utils_fnc_getDisplayName];
				} forEach _backpackItems;
			};
		};


		//diag_log format["%1 | %2 | _helmet | %3","cc_fnc_initMenu.sqf", _classId, _helmet];
		if !(_helmet isEqualTo "" || _helmet isEqualTo []) then {
			_addHelmet = _ctrl tvAdd [[_forEachIndex], [_helmet] call utils_fnc_getDisplayName];
		};
		//diag_log format["%1 | %2 | _facewear | %3","cc_fnc_initMenu.sqf", _classId, _facewear];
		if !(_facewear isEqualTo "" || _facewear isEqualTo []) then {
			_addFacewear = _ctrl tvAdd [[_forEachIndex], [_facewear] call utils_fnc_getDisplayName];
		};
		//diag_log format["%1 | %2 | _binoclear | %3","cc_fnc_initMenu.sqf", _classId, _binoclear];
		if !(_binoclear isEqualTo "" || _binoclear isEqualTo []) then {
			_addBinoclear = _ctrl tvAdd [[_forEachIndex], [_binoclear] call utils_fnc_getDisplayName];
		};		

		//diag_log format["%1 | %2 | _primary | %3","cc_fnc_initMenu.sqf", _classId, _primary];
		if !(_primary isEqualTo "" || _primary isEqualTo []) then {
			_addPrimary= _ctrl tvAdd [[_forEachIndex], [_primary] call utils_fnc_getDisplayName];
			//diag_log format["%1 | %2 | _primaryAttachments | %3","cc_fnc_initMenu.sqf", _classId, _primaryAttachments];
			if !(_primaryAttachments isEqualTo "" || _primaryAttachments isEqualTo []) then {
				{
					_ctrl tvAdd [[_classNumber,6], [_x] call utils_fnc_getDisplayName];
				} forEach _primaryAttachments;
			};
		};


		//diag_log format["%1 | %2 | _secondary | %3","cc_fnc_initMenu.sqf", _classId, _secondary];
		if !(_secondary isEqualTo "" || _secondary isEqualTo []) then {
			_addSecondary = _ctrl tvAdd [[_forEachIndex], [_secondary] call utils_fnc_getDisplayName];
			//diag_log format["%1 | %2 | _secondaryAttachments | %3","cc_fnc_initMenu.sqf", _classId, _secondaryAttachments];
			if !(_secondaryAttachments isEqualTo "" || _secondaryAttachments isEqualTo []) then {
				{
					_ctrl tvAdd [[_classNumber,7], [_x] call utils_fnc_getDisplayName];
				} forEach _secondaryAttachments;
			};
		};


		//diag_log format["%1 | %2 | _handgun | %3","cc_fnc_initMenu.sqf", _classId, _handgun];
		if !(_handgun isEqualTo "" || _handgun isEqualTo []) then {
			_addHandgun = _ctrl tvAdd [[_forEachIndex], [_handgun] call utils_fnc_getDisplayName ];
			//diag_log format["%1 | %2 | _handgunAttachments | %3","cc_fnc_initMenu.sqf", _classId, _handgunAttachments];
			if !(_handgunAttachments isEqualTo "" || _handgunAttachments isEqualTo []) then {
				{
					_ctrl tvAdd [[_classNumber,8], [_x] call utils_fnc_getDisplayName];
				} forEach _handgunAttachments;
			};
		};

	};

} forEach nClasses;