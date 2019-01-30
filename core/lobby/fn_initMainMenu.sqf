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
_fnc_addClassesToList = {
	_customclassctrl = (findDisplay 6700) displayCtrl 6722;
	tvClear _customclassctrl;
	[_customclassctrl,true] call cc_fnc_addClassesToCtrl;
};
call _fnc_addClassesToList;

// Add events to the item list buttons

_classItemsWeaponButton = (findDisplay 6700) displayCtrl 6725;
_classItemsClothingButton = (findDisplay 6700) displayCtrl 6726;
_classItemsAttachmentsButton = (findDisplay 6700) displayCtrl 6727;

_classItemsWeaponButton ctrlAddEventHandler ["ButtonClick", {call _fnc_addWeaponsToClassItemsList} ];
_classItemsClothingButton ctrlAddEventHandler ["ButtonClick", {call _fnc_addClothingToClassItemsList} ];
_classItemsAttachmentsButton ctrlAddEventHandler ["ButtonClick", {call _fnc_addAttachmentsToClassItemsList} ];

_classItemsListCtrl = (findDisplay 6700) displayCtrl 6724;
_classItemsListCtrl ctrlAddEventHandler ["MouseButtonDblClick", { call _fnc_editDatClass } ];

_fnc_editDatClass = {

	_ctrl = (findDisplay 6700) displayCtrl 6724;	
	_index = tvCurSel _ctrl;
	_data = _ctrl tvData _index;

	_classctrl = (findDisplay 6700) displayCtrl 6722;	
	_classindex = tvCurSel _classctrl;
	_classId = _classctrl tvData _index;

	if (_data == "") exitWith {};

	_whitelistedWeapons = [

		//marksman
		"srifle_EBR_F", //mk18
		"srifle_DMR_03_F", //Mk-I EMR 7.62 mm (Black)
		"srifle_DMR_03_khaki_F", // Mk-I EMR 7.62 mm (Khaki)
		"srifle_DMR_03_tan_F", //Mk-I EMR 7.62 mm (Sand)
		"srifle_DMR_03_multicam_F", //Mk-I EMR 7.62 mm (Camo)	
		"srifle_DMR_03_woodland_F", // Mk-I EMR 7.62 mm (Woodland)

		//assault 
		"arifle_Katiba_F" //Katiba 6.5 mm	
	];
	systemChat str (_classId);
	systemChat str (_data);
	
	if (_data in _whitelistedWeapons) then {
		[_classId,"primary",_data] call cc_fnc_editClassById;
		call _fnc_addClassesToList;
	}
};
//Handle class items
_fnc_addWeaponsToClassItemsList = {

	_classItemsListCtrl = (findDisplay 6700) displayCtrl 6724;
	tvClear _classItemsListCtrl;

	_whitelistedWeapons = [

		//marksman
		"srifle_EBR_F", //mk18
		"srifle_DMR_03_F", //Mk-I EMR 7.62 mm (Black)
		"srifle_DMR_03_khaki_F", // Mk-I EMR 7.62 mm (Khaki)
		"srifle_DMR_03_tan_F", //Mk-I EMR 7.62 mm (Sand)
		"srifle_DMR_03_multicam_F", //Mk-I EMR 7.62 mm (Camo)	
		"srifle_DMR_03_woodland_F", // Mk-I EMR 7.62 mm (Woodland)

		//assault 
		"arifle_Katiba_F" //Katiba 6.5 mm	
	];

	{
		_index = _classItemsListCtrl tvAdd [[],_x call Utils_fnc_getDisplayName];
		_classItemsListCtrl tvSetData [[_forEachIndex],_x];
		_classItemsListCtrl tvSetPicture [[_forEachIndex],(getText (configFile >> "CfgWeapons" >> _x >> 'picture'))]
	} forEach _whitelistedWeapons
};

_fnc_addClothingToClassItemsList = {

	_classItemsListCtrl = (findDisplay 6700) displayCtrl 6724;
	tvClear _classItemsListCtrl;
	tvExpandAll _classItemsListCtrl;

	_availableBackpacks = [
		"B_AssaultPack_blk",
		"B_AssaultPack_Kerry"
	];

	_availableVests = [
		"V_PlateCarrier2_rgr",
		"V_PlateCarrier2_blk",
		"V_PlateCarrier3_rgr",
		"V_PlateCarrierH_CTRG"
	];

	_availableUniforms = [
		"U_B_CTRG_1",
		"U_B_Wetsuit",
		"U_B_CombatUniform_mcam_worn"
	];

	_availableHeadgear = [
		"H_HelmetB_camo",
		"H_HelmetLeaderO_ocamo"
	];

	_classItemsListCtrl tvAdd [[],"== Uniforms =="];
	{
		_index = _classItemsListCtrl tvAdd [[0],_x call Utils_fnc_getDisplayName];
		_classItemsListCtrl tvSetPicture [[0,_index],(getText (configFile >> "CfgWeapons" >> _x >> 'picture'))]
	} forEach _availableUniforms;

	_classItemsListCtrl tvAdd [[],"== Vests =="];
	{
		_index = _classItemsListCtrl tvAdd [[1],_x call Utils_fnc_getDisplayName];
		_classItemsListCtrl tvSetPicture [[1,_index],(getText (configFile >> "CfgWeapons" >> _x >> 'picture'))]
	} forEach _availableVests;

	_classItemsListCtrl tvAdd [[],"== Backpacks =="];
	{
		_index = _classItemsListCtrl tvAdd [[2],_x call Utils_fnc_getDisplayName];
		_classItemsListCtrl tvSetPicture [[2,_index],(getText (configFile >> "CfgVehicles" >> _x >> 'picture'))]
	} forEach _availableBackpacks;

	_classItemsListCtrl tvAdd [[],"== Headgear =="];
	{
		_index = _classItemsListCtrl tvAdd [[3],_x call Utils_fnc_getDisplayName];
		_classItemsListCtrl tvSetPicture [[3,_index],(getText (configFile >> "CfgWeapons" >> _x >> 'picture'))]
	} forEach _availableHeadgear;

};

_fnc_addAttachmentsToClassItemsList = {

	_classItemsListCtrl = (findDisplay 6700) displayCtrl 6724;
	tvClear _classItemsListCtrl;

	_mainattachments = [
		"optic_Arco",
		"optic_Arco_blk_F",
		"optic_MRCO",
		"optic_Arco_blk_F",
		"muzzle_snds_H",
		"bipod_01_F_blk"
	];

	{
		_index = _classItemsListCtrl tvAdd [[],_x];
		_classItemsListCtrl tvSetPicture [[_forEachIndex],(getText (configFile >> "CfgWeapons" >> _x >> 'picture'))]
	} forEach _mainattachments
}
