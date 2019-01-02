if (isNull (findDisplay 7000)) then {
    if (!createDialog "chaos_player_menu_vehicles") exitWith {hint "Menu Could not open";};
};

_ctrl = (findDisplay 7000);