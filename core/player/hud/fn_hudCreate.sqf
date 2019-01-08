/*
    File: fn_hudCreate.sqf
    Author: Lewey

    Description:
    creates player hud

*/
cutRsc ["chaos_player_hud","PLAIN"]; 
disableSerialization; 

((uiNamespace getVariable "chaos_player_hud") displayCtrl 6402) ctrlSetText (markerText currentObjective);
((uiNamespace getVariable "chaos_player_hud") displayCtrl 6403) ctrlSetText "";




