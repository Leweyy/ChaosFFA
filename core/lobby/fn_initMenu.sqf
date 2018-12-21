private ["_obj"];

_obj  = _this select 0;
_obj addAction ["Custom Classes", {[] call cc_fnc_initMenu; }, "",0,false,false,"","",15];
_obj addAction ["Teleport", {[] call lobby_fnc_initTeleportMenu; }, "",0,false,false,"","",15];
