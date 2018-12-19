private ["_obj"];

_obj  = _this select 0;
_obj addAction ["Custom Classes", {[] call cc_fnc_initMenu; }, "",0,false,false,"","",15];
