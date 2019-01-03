if (isNull (findDisplay 6900)) then {
    if (!createDialog "chaos_player_menu_stats") exitWith {hint "Menu Could not open";};
};

//ctrls
_display = (findDisplay 6900);
_ctrlNameSteamID = _display displayCtrl 6903;
_ctrlKills = _display displayCtrl 6904;
_ctrlDeaths = _display displayCtrl 6905;
_ctrlKDRatio = _display displayCtrl 6906;
_ctrlvehiclePoints = _display displayCtrl 6907;

_name = format["%1 (%2)", name player, getPlayerUID player];
_kills = format["Kills: %1", profileNamespace getVariable "chaos_player_kills"];
_deaths = format["Deaths: %1", profileNamespace getVariable "chaos_player_deaths"];
_kd = format["K/D Ratio: %1", ((profileNamespace getVariable "chaos_player_kills") / (profileNamespace getVariable "chaos_player_deaths")) toFixed 2];
_vp = format["Vehicle Points: %1", profileNamespace getVariable "chaos_player_vehicle_points"];

_ctrlNameSteamID ctrlSetText _name;
_ctrlKills ctrlSetText _kills;
_ctrlDeaths ctrlSetText _deaths;
_ctrlKDRatio ctrlSetText _kd;
_ctrlvehiclePoints ctrlSetText _vp;