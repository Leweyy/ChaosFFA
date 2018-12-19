/*
    File: fn_getClassById.sqf
    Author: Lewey

    Description:
    Get custom class by id
    "CC_1" call fn_get_class;

    Parameters:
        0: classId  - class id / profile variable name e.g CC_1
*/

_classId = _this select 0;
_classArray = profileNamespace getVariable _classId;

// Create a class template
_cc_template = [["",["","","",""]],["",["","","","","","","","","","","","","",""]],["",[]],"","","",["",["","","",""]],["",["","","",""]],["",["","","",""]],["","","","",""],[]];
if (isNil "_classArray") exitWith{_cc_template};

_classArray;


