mainmenudisplay = findDisplay 46 createDisplay "RscDisplayEmpty";

title = mainmenudisplay ctrlCreate ["RscText", 102];
title ctrlSetPosition [
	SafeZoneX + (825 / 1920) * SafeZoneW,
	SafeZoneY + (240 / 1080) * SafeZoneH,
	(270 / 1920) * SafeZoneW,
	(30 / 1080) * SafeZoneH
];
title ctrlSetBackgroundColor [0.75,0,0,1];
title ctrlSetText "Objective Selection";
title ctrlSetFont "PuristaLight";
title ctrlCommit 0;

classes = mainmenudisplay ctrlCreate ["RscTreeSearch", 3009];
classes ctrlSetPosition [
	SafeZoneX + (825 / 1920) * SafeZoneW,
	SafeZoneY + (270 / 1080) * SafeZoneH,
	(270 / 1920) * SafeZoneW,
	(600 / 1080) * SafeZoneH
];
classes ctrlSetFont "PuristaLight";
classes ctrlSetFontHeight 0.035;
classes ctrlSetBackgroundColor [0.3,0.3,0.3,1];
classes ctrlSetEventHandler ["MouseButtonDblClick",'[] call setObj;'];
classes ctrlCommit 0;

_customClasses = [["CC_1","Custom Class 1"],["CC_2","Custom Class 2"],["CC_3","Custom Class 3"]];
_extendedCustomClasses = customClasses + ["CC_4","CC_5","CC_6","CC_7","CC_8","CC_9","CC_10"];

{

	_classId = _x select 0;
	_className = _x select 1;
	_classLoadout = [_classId] call cc_fnc_getClassById;
	_ctrl = classes;
	
	_uniform = _classLoadout select 0 select 0;
	_uniformItems = _classLoadout select 0 select 1;
	_vest = _classLoadout select 1 select 0;
	_vestItems = _classLoadout select 1 select 1;
	_backpack = _classLoadout select 2 select 0;
	_backpackItems = _backpack select 1;
	_helmet = _classLoadout select 3;
	_facewear = _classLoadout select 4;
	_binoclear = _classLoadout select 5;
	_primary = _classLoadout select 6 select 0;
	_primaryAttachments = _primary select 1;
	_secondary = _classLoadout select 7 select 0;
	_secondaryAttachments = _secondary select 1;
	_handgun = _classLoadout select 8 select 0;
	_handgunAttachments = _handgun select 1;

	_add = _ctrl tvAdd [[],_className];
	_ctrl tvSetData [[],_classId];
	
	_addUniform = _ctrl tvAdd [[_forEachIndex], _uniform];
	_addUniformItems = _ctrl tvAdd [[_forEachIndex], _uniformItems];
	_addVest = _ctrl tvAdd [[_forEachIndex], _vest];
	_addVestItems = _ctrl tvAdd [[_forEachIndex], _vestItems];
	_addBackpack = _ctrl tvAdd [[_forEachIndex], _backpack];
	_addBackpackItems = _ctrl tvAdd [[_forEachIndex], _backpackItems];
	_addHelmet = _ctrl tvAdd [[_forEachIndex], _helmet];
	_addFacewear = _ctrl tvAdd [[_forEachIndex], _facewear];
	_addBinoclear = _ctrl tvAdd [[_forEachIndex], _binoclear];
	_addPrimary= _ctrl tvAdd [[_forEachIndex], _primary];
	_addPrimaryAttachments = _ctrl tvAdd [[_forEachIndex], _primaryAttachments];
	_addSecondary = _ctrl tvAdd [[_forEachIndex], _secondary];
	_addSecondaryAttachments = _ctrl tvAdd [[_forEachIndex], _secondaryAttachments];
	_addHandgun = _ctrl tvAdd [[_forEachIndex], _handgun];
	_addHandgunAttachments = _ctrl tvAdd [[_forEachIndex], _handgunAttachments];
	
} forEach _customClasses;

