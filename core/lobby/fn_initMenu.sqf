private ["_unit"];

_unit  = _this select 0;
_unit addAction ["Custom Classes", { hint "This feature is not finished yet"; }, "",0,false,false,"","",15];
_unit addAction ["Arsenal", { [ "Open", [ true ] ] call BIS_fnc_arsenal;}, "",0,false,false,"","",15];
_unit addAction ["Teleport", { [] call player_fnc_tpPlayerToObjective; }, "",0,false,false,"","",15];
