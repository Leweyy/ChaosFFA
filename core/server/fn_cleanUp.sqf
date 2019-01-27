//delete dead bodies
sleep 30;
_startTime = diag_tickTime;
diag_log format["%1 | Clean Up | Started at %2",missionName,_startTime];

if (count allDeadMen == 0) exitWith {
	diag_log format["%1 | Clean Up | Skipped | No bodies to delete",missionName];
	[] call server_fnc_cleanUp;
	};

if (count allPlayers == 0) exitWith {
	diag_log format["%1 | Clean Up | Skipped | No players online",missionName];
	[] call server_fnc_cleanUp;
};

//delete those dead bodies
_bodies = [];
{

	deleteVehicle _x;
	_bodies pushBack _x;
	diag_log format["%1 | Clean Up | Deleted %2",missionName,_x];

} forEach allDeadMen;

//Log and restart cycle
sleep 0.1;

diag_log format["%1 | Clean Up | Finished in %2 seconds",missionName, (diag_tickTime - _startTime)];
diag_log format["%1 | Clean Up | %2 Dead bodies were deleted ",missionName,(count _bodies)];
diag_log format["%1 | Clean Up | Ended",missionName];

[] call server_fnc_cleanUp;