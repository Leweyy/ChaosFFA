[] call player_fnc_nameTags;

_isAdmin = [player] call admin_fnc_isPlayerAdmin;
if (_isAdmin) then {
	player addAction ["Admin Menu", { call admin_fnc_initRelocateObjectiveMenu }];
};

