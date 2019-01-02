//Maverick Introcam init
//waitUntill {!isNil "currentObjective"};

[] call mav_introcam_fnc_startCinematicCam;
[0, "LOADING MISSION, PLEASE WAIT"] call mav_introcam_fnc_updateCinematicStatus;
sleep 1;
[] call Player_fnc_initPlayer;
sleep 1;
[1, "PRESS SPACE TO CONTINUE"] call mav_introcam_fnc_updateCinematicStatus;
waitUntil {mav_introcam_continue};

//init main menu
//[] call Lobby_fnc_initMainMenu
