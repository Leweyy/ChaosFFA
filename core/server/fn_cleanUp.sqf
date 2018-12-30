//delete dead bodies
sleep 30;

{deleteVehicle _x} forEach allDeadMen;

[] call server_fnc_cleanUp;