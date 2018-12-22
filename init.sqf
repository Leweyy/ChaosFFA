[] spawn
{
	waitUntil {!isNil "currentObjective"};
	currentObjective setMarkerColor "ColorBlue";
};

[] call server_fnc_initGameMode;