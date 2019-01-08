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
_kills = format["Kills: %1", (["kills","get"] call player_fnc_stats)];
_deaths = format["Deaths: %1", (["deaths","get"] call player_fnc_stats)];
_kd = format["K/D Ratio: %1", ((["kills","get"] call player_fnc_stats) / (["deaths","get"] call player_fnc_stats)) toFixed 2];
_vp = format["Vehicle Points: %1", (["vehicle_points","get"] call player_fnc_stats)];

_ctrlNameSteamID ctrlSetText _name;
_ctrlKills ctrlSetText _kills;
_ctrlDeaths ctrlSetText _deaths;
_ctrlKDRatio ctrlSetText _kd;
_ctrlvehiclePoints ctrlSetText _vp;