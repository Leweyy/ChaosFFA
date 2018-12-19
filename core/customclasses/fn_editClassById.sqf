/*
    File: fn_editClassById.sqf
    Author: Lewey

    Description:
    Edit custom class

    Parameters:
        0: classId  - class id / profile variable name e.g CC_1
        1: type     - item that is being added
        2: items    - the item to be added
*/

params [
    ["_classId", "", [""]],
    ["_type","", [""]],
    ["_items","",[[],""]]
]

_classId = _this select 0;
_type = _this select 1;
_items = _this select 2;
_classArray = profileNamespace getVariable _classId;

switch (_type) do {
    case 'uniform': {
        _classArray set [0, _items];
    };
    case 'uniformitems': {
        _classArray set [1, _items];
    };
    case 'vest': {
        _classArray set [2, _items];
    };
    case 'vestitems': {
        _classArray set [3, _items];
    };
    case 'backpack': {
        _classArray set [4, _items];
    };
    case 'backpackitems': {
        _classArray set [5, _items];
    };
    case 'headgear': {
        _classArray set [6, _items];
    };
    case 'facewear': {
        _classArray set [7, _items];
    };
    case 'binocular': {
        _classArray set [8, _items];
    };
    case 'primary': {
        _classArray set [9, _items];
    };
    case 'primaryattachments': {
        _classArray set [10, _items];
    };
    case 'primarymag': {
        _classArray set [11, _items];
    };
    case 'secondary': {
        _classArray set [12, _items];
    };
    case 'secondaryattachments': {
        _classArray set [13, _items];
    };
    case 'secondarymag': {
        _classArray set [14, _items];
    };
    case 'handgun': {
        _classArray set [15, _items];
    };
    case 'handgunattachments': {
        _classArray set [16, _items];
    };
    case 'handgunmag': {
        _classArray set [17, _items];
    };
};
