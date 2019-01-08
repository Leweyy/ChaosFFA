//Exit is main menu is visable
if (!isNull(findDisplay 6700)) exitWith {};

if (isNull (findDisplay 6800)) then {
    if (!createDialog "chaos_player_menu") exitWith {hint "Menu Could not open";};
};

_ctrl = (findDisplay 6800);

//define buttons and pics 
_statisticsButton = _ctrl displayCtrl 6811;
_statisticsPicture = _ctrl displayCtrl 6821;
_vehicleButton = _ctrl displayCtrl 6812;
_vehiclePicture = _ctrl displayCtrl 6822;
_adminButton = _ctrl displayCtrl 6813;
_adminPicture = _ctrl displayCtrl 6823;
_empty1Button = _ctrl displayCtrl 6814;
_empty1Picture = _ctrl displayCtrl 6824;
_empty2Button = _ctrl displayCtrl 6815;
_empty2Picture = _ctrl displayCtrl 6825;

//Disable not inuse buttons
_empty1Button ctrlShow false;
_empty1Picture ctrlShow false;
_empty2Button ctrlShow false;
_empty2Picture ctrlShow false;
_adminButton ctrlShow false;
_adminPicture ctrlShow false;

//Only show admin button for admins
_isAdmin = [player] call admin_fnc_isPlayerAdmin;
if (_isAdmin) then {
	_adminButton ctrlShow true;
	_adminPicture ctrlShow true;
}
