/*
    File: fn_clearClassById.sqf
    Author: Lewey

    Description:
    wipes class and sets back to template
    "CC_1" call fn_clearClassById;

    Parameters:
        0: classId  - class id / profile variable name e.g CC_1
*/

params = ["_classId"]

_CC_TEMPLATE = [["",[]],["",[]],["",[]],"","","",["",["","","",""],""],["",["","","",""],""],["",["","","",""],""],[],[]];
profileNamespace setVariable [_classId,_CC_TEMPLATE];
