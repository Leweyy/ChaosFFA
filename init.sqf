//Maverick Introcam init 
[] call mav_introcam_fnc_startCinematicCam;
[0, "LOADING MISSION, PLEASE WAIT"] call mav_introcam_fnc_updateCinematicStatus;
sleep 1;
[0, "SETTING UP SERVER"] call mav_introcam_fnc_updateCinematicStatus;
[true] call server_fnc_initGameMode;
sleep 1;
[0, "SERVER SETUP COMPLETE"] call mav_introcam_fnc_updateCinematicStatus;
sleep 1;
[] call player_fnc_initPlayer;
sleep 1;
[1, "PRESS SPACE TO CONTINUE"] call mav_introcam_fnc_updateCinematicStatus;
waitUntil {mav_introcam_continue};

//postInit setup obj loop
[] call server_fnc_initGameMode;