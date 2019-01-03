if (isNull (findDisplay 7000)) then {
    if (!createDialog "chaos_player_menu_vehicles") exitWith {hint "Menu Could not open";};
};

_ctrl = (findDisplay 7000);

_ctrlVehicleList = _ctrl displayCtrl 7003;
_ctrlVehiclePoints = _ctrl displayCtrl 7006;
_ctrlSpawnVehicle = _ctrl displayCtrl 7004;
_ctrlSpawnVehicle ctrlSetEventHandler ["MouseButtonClick", "[] call spawnvehicle"];
_ctrlVehicleList ctrlAddEventHandler ["LBSelChanged","[] call updateVehicleInfo"];
_playerVehiclePoints = profileNamespace getVariable "chaos_player_vehicle_points";
_ctrlVehiclePoints ctrlSetText format["Availiable Points: %1",_playerVehiclePoints];

_vehicles = [
	["O_MRAP_02_F","20"], //Ifrit
	["B_MRAP_01_F", "20"], //Hunter
	["I_MRAP_03_F","20"], //strider
	["I_MRAP_03_hmg_F","1200"] //strider hmg
];

{	
	_vehicleClassName = _x select 0;
	_vehicleCost = _x select 1;
	_vehicleDisplayName = getText (configFile >> "CfgVehicles" >> _vehicleClassName >> 'displayName');
	_add = _ctrlVehicleList lbAdd format["%1 (%2 Points)",_vehicleDisplayName,_vehicleCost];
	_lbData = format["%1:%2",_vehicleClassName,_vehicleCost];
	_ctrlVehicleList lbSetData[_add,_lbData]
} forEach _vehicles;

updateVehicleInfo = {

	_display = (findDisplay 7000);
	_ctrl = _display displayCtrl 7003;
	_index = lbCurSel _ctrl;
	_data = _ctrl lbData _index;
	_vehicleClassName = (_data splitString ":") select 0;
	_vehicleCost = format["Vehicle Costs %1 points",(_data splitString ":") select 1];
	_vehicleDisplayName = getText (configFile >> "CfgVehicles" >> _vehicleClassName>> 'displayName');
	_vehiclePicture = getText (configFile >> "CfgVehicles" >> _vehicleClassName>> 'editorPreview');

	_ctrlVehicleInfoDisplayName = _display displayCtrl 7008;
	_ctrlVehicleInfoPicture = _display displayCtrl 7007;
	_ctrlVehicleInfoCost = _display displayCtrl 7009;

	_ctrlVehicleInfoDisplayName ctrlSetText _vehicleDisplayName;
	_ctrlVehicleInfoPicture ctrlSetText _vehiclePicture; 
	_ctrlVehicleInfoCost ctrlSetText _vehicleCost;
};

spawnvehicle = {

	_display = (findDisplay 7000);
	_ctrl = _display displayCtrl 7003;
	_index = lbCurSel _ctrl;
	_data = _ctrl lbData _index;
	_vehicleClassName = (_data splitString ":") select 0;
	_vehicleCost = parseNumber ((_data splitString ":") select 1);

	_playerVehiclePoints = profileNamespace getVariable "chaos_player_vehicle_points";
	if (isNil "_playerVehiclePoints") exitWith {hint "You dont have any vehicle points, you get 1 vehicle point for every kill"};
	if (player distance lobby_menu_unit < 50) exitWith {hint "You cannot spawn a vehicle in spawn"};
	if (_playerVehiclePoints >= _vehicleCost) then {
		//set players new balance
		_newPointBalance = _playerVehiclePoints - _vehicleCost;
		profileNamespace setVariable ["chaos_player_vehicle_points",_newPointBalance];

		//update balance on ui
		_ctrlVehiclePoints = _display displayCtrl 7006;
		_ctrlVehiclePoints ctrlSetText format["Availiable Points: %1",_newPointBalance];

		//spawn vehicle
		_playersChosenVehicle = _vehicleClassName createVehicle position player;
		_playersChosenVehicle setVariable ["owner",getPlayerUID player];
		_playersChosenVehicle setVariable ["createdAt",diag_tickTime];
	} else {
		hint "You do not have enough points to spawn this vehicle, you earn points by getting kills"
	}
} 