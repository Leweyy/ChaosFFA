if (isNull (findDisplay 7000)) then {
    if (!createDialog "chaos_player_menu_vehicles") exitWith {hint "Menu Could not open";};
};

_ctrl = (findDisplay 7000);

_ctrlVehicleList = _ctrl displayCtrl 7003;
_ctrlVehiclePoints = _ctrl displayCtrl 7006;
_ctrlSpawnVehicle = _ctrl displayCtrl 7004;
_ctrlSpawnVehicle ctrlSetEventHandler ["MouseButtonClick", "[] call spawnvehicle"];
_ctrlVehicleList ctrlAddEventHandler ["LBSelChanged","[] call updateVehicleInfo"];
_playerVehiclePoints = (["vehicle_points","get"] call player_fnc_stats);
_ctrlVehiclePoints ctrlSetText format["Availiable Points: %1",_playerVehiclePoints];

_vehicles = [
	["O_MRAP_02_F",20], //Ifrit
	["B_MRAP_01_F", 20], //Hunter

	["I_MRAP_03_F",20], //strider
	["I_MRAP_03_hmg_F",1200], //strider hmg

	["B_T_LSV_01_unarmed_F",7], //Prowler
	["B_T_LSV_01_unarmed_CTRG_F",7], //Prowler CTRG
	["B_LSV_01_unarmed_black_F",7], //Prowler Black

	["B_T_LSV_01_armed_F",175],//Prowler (Armed)
	//["B_T_LSV_01_armed_CTRG_F",175],//Prowler (Armed) CTRG
	["B_LSV_01_armed_black_F",175],//Prowler (Armed) Black

	["O_T_LSV_02_armed_F",115],// Qilin (Armed) Green Hex
	["O_LSV_02_armed_F",115],// Qilin (Armed) Hex
	["O_T_LSV_02_armed_black_F",115],// Qilin (Armed) Black

	["O_T_LSV_02_unarmed_F",7],// Qilin (Unarmed) Green Hex
	["O_LSV_02_unarmed_F",7],// Qilin (Unarmed) Hex
	["O_LSV_02_unarmed_black_F",7], // Qilin (Unarmed) Black

	["O_MBT_02_cannon_F",5000] // T-100 Varsuk
];

{	
	_vehicleClassName = _x select 0;
	_vehicleCost = _x select 1;
	_vehicleDisplayName = getText (configFile >> "CfgVehicles" >> _vehicleClassName >> 'displayName');
	_add = _ctrlVehicleList lbAdd format["%1 (%2 Points)",_vehicleDisplayName,_vehicleCost];
	_lbData = format["%1:%2",_vehicleClassName,_vehicleCost];
	_ctrlVehicleList lbSetData[_add,_lbData];
	//Change Color of text depending on cost
	//50 And below - white
	if (_vehicleCost >= 0 ) then {
		_ctrlVehicleList lbSetColor [_add, [1, 1, 1, 1]];
	};
	//50 - 250 - Purple
	if (_vehicleCost >= 50 ) then {
		_ctrlVehicleList lbSetColor [_add, [0.5,0,0.625,1]];
	};
	//250 - 5000 - Gold
	if (_vehicleCost >= 250 ) then {
		_ctrlVehicleList lbSetColor [_add, [1,0.843,0,1]];
	};
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

	_playerVehiclePoints = (["vehicle_points","get"] call player_fnc_stats);

	if (isNil "_playerVehiclePoints") exitWith {hint "You dont have any vehicle points, you get 1 vehicle point for every kill"};
	if (player distance lobby_menu_unit < 50) exitWith {hint "You cannot spawn a vehicle in spawn"};

	if (_playerVehiclePoints >= _vehicleCost) then {
		//set players new balance
		["vehicle_points","remove",_vehicleCost] call player_fnc_stats;

		//update balance on ui
		_ctrlVehiclePoints = _display displayCtrl 7006;
		_ctrlVehiclePoints ctrlSetText format["Availiable Points: %1",(["vehicle_points","get"] call player_fnc_stats)];

		//spawn vehicle
		_displayName = getText (configFile >> "CfgVehicles" >> _vehicleClassName >> 'displayName');

		_playersChosenVehicle = _vehicleClassName createVehicle position player;

		_playersChosenVehicle setVariable ["owner",getPlayerUID player];
		_playersChosenVehicle setVariable ["createdAt",diag_tickTime];
		_playersChosenVehicle setVariable ["cost",_vehicleCost];
		_playersChosenVehicle setVariable ["className",_vehicleClassName];
		_playersChosenVehicle setVariable ["name",_displayName];

		_playersChosenVehicle addEventHandler ["HandleDamage",{
			params ["_vehicle", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];
			//hint format["%1 | %2 | %3",_instigator, _projectile,_damage];
			//Exit if vehicle was not killed by environment
			if !(_instigator isEqualTo objNull) exitWith {};
			// Exit if vehicle var is not populated
			if (isNil "_vehicle" || _vehicle isEqualTo objNull) exitWith {};

			if (_projectile in ["FuelExplosion","FuelExplosionBig"]) then {

				_cost = _vehicle getVariable "cost";
				_name = _vehicle getVariable "name";
				_owner = _vehicle getVariable "owner";
				_createdAt = _vehicle getVariable "createdAt";

				hint format["Your %1 was destroyed and you have been refunded %2 points",_name,_cost];

				["vehicle_points","add",_cost] call player_fnc_stats;

				_vehicle removeEventHandler ["HandleDamage", 0];
				deleteVehicle _vehicle;
			}

		}];

		player moveInDriver _playersChosenVehicle;

	} else {
		hint "You do not have enough points to spawn this vehicle, you earn points by getting kills"
	}
};
