private ["_unit"];

_unit  = _this select 0;
_unit addAction ["Custom Classes", {[] call cc_fnc_initMenu; }, "",0,false,false,"","",15];
_unit addAction ["Teleport", { [] call player_fnc_tpPlayerToObjective; }, "",0,false,false,"","",15];
