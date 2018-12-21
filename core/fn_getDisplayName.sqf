/*
    File: fn_getDisplayname.sqf
    Author: Lewey

    Description:
    gets display name for item 

    Parameters:
        0: className  - class name of the item you want the displayname for

*/

params ["_className"];

diag_log format["Getting class name for %1",_className];
if (_className isEqualTo "") exitWith{};
if (_className isEqualTo []) exitWith{};

//Weapons
if (_className isKindOf ["Rifle", configFile >> "CfgWeapons"]) exitWith {
	getText(configFile >> "CfgWeapons" >> _className >> "displayName")
};
if (_className isKindOf ["Pistol", configFile >> "CfgWeapons"]) exitWith {
	getText(configFile >> "CfgWeapons" >> _className >> "displayName")
};
if (_className isKindOf ["Launcher", configFile >> "CfgWeapons"]) exitWith {
	getText(configFile >> "CfgWeapons" >> _className >> "displayName")
};

//magazines
if (_className isKindOf ["CA_Magazine", configFile >> "CfgMagazines"]) exitWith {
	getText(configFile >> "CfgMagazines" >> _className >> "displayName")
};

//Uniforms
if (_className isKindOf ["Uniform_Base", configFile >> "CfgWeapons"]) exitWith {
	getText(configFile >> "CfgWeapons" >> _className >> "displayName")
};

//helmets
if (_className isKindOf ["H_HelmetB", configFile >> "CfgWeapons"]) exitWith {
	getText(configFile >> "CfgWeapons" >> _className >> "displayName")
};
if (_className isKindOf ["HelmetBase", configFile >> "CfgWeapons"]) exitWith {
	getText(configFile >> "CfgWeapons" >> _className >> "displayName")
};

//Vests
if (_className isKindOf ["Vest_Camo_Base", configFile >> "CfgWeapons"]) exitWith {
	getText(configFile >> "CfgWeapons" >> _className >> "displayName")
};
if (_className isKindOf ["Vest_NoCamo_Base", configFile >> "CfgWeapons"]) exitWith {
	getText(configFile >> "CfgWeapons" >> _className >> "displayName")
};

//Backpack
if (_className isKindOf ["Bag_Base", configFile >> "CfgVehicles"]) exitWith {
	getText(configFile >> "CfgVehicles" >> _className >> "displayName")
}; 

_className

