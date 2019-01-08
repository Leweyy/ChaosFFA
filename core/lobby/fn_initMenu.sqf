private ["_unit"];

_unit  = _this select 0;
_unit setVariable ["name","dave"];
//_unit addAction ["Custom Classes", { hint "This feature is not finished yet"; }, "",0,false,false,"","",15];
_unit addAction ["Teleport", { [] call player_fnc_tpPlayerToObjective; }, "",0,false,false,"","",15];

["AmmoboxInit",[_unit,false,{true}]] spawn BIS_fnc_arsenal;

_weapons = [

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

_magazines = [
	"30Rnd_65x39_caseless_green",
	"20Rnd_762x51_Mag"
];

_miscshit = [
	"ItemWatch",
	"ItemCompass",
	"ItemGPS",
	"ItemRadio",
	"ItemMap",
	"MineDetector",
	"Binocular",
	"Rangefinder",
	"FirstAidKit",
	"Medikit",
	"ToolKit"
];

_mainattachments = [
	"optic_Arco",
	"optic_Arco_blk_F",
	"optic_MRCO",
	"optic_Arco_blk_F",
	"muzzle_snds_H",
	"bipod_01_F_blk"
];

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

[_unit,((backpackCargo _unit) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_unit,(magazineCargo _unit + _magazines)] call BIS_fnc_addVirtualMagazineCargo;
[_unit,((weaponCargo _unit) + _weapons)] call BIS_fnc_addVirtualWeaponCargo;
[_unit,((itemCargo _unit) + _availableHeadgear + _availableUniforms + _availableVests  + _mainattachments + _miscshit)] call BIS_fnc_addVirtualItemCargo;
