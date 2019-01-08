//delete dead bodies
sleep 30;
_startTime = diag_tickTime;
diag_log format["%1 | Clean Up | Started at %2",missionName,_startTime];

if (count allDeadMen == 0) exitWith {diag_log format["%1 | Clean Up | Ended | Nothing to delete",missionName]};

{

	deleteVehicle _x;
	diag_log format["%1 | Clean Up | Deleted %2",missionName,_x];

} forEach allDeadMen;

sleep 0.1;

diag_log format["%1 | Clean Up | Finished in %2 seconds",missionName, (diag_tickTime - _startTime)];
diag_log format["%1 | Clean Up | Ended",missionName];

[] call server_fnc_cleanUp;