[] call player_fnc_nameTags;

_isAdmin = [player] call admin_fnc_isPlayerAdmin;
if (_isAdmin) then {
	player addAction ["<t color='#FF0000'>[Admin]</t> Menu", { call admin_fnc_initRelocateObjectiveMenu }];
};

