#include "\vbs2\headers\dikCodes.hpp"

/*
    File: fn_keyLogger.sqf
    Author: Lewey
    Description:
    Logs keys that are blacklisted in an attempt to catch out cheaters/hackers

    Parameters:
        0: unit - player that pressed key
        1: keyCode - code of the key that was pressed
    
    https://community.bistudio.com/wiki/keyName
    https://community.bistudio.com/wiki/DIK_KeyCodes
*/

params [_unit];

//it would be weird if these keys were being used for a menu
 private _keyWhitelist = [ 
    "DIK_A",
    "DIK_B",
    "DIK_C",
    "DIK_D",
    "DIK_E",
    "DIK_F",
    "DIK_G",
    "DIK_H",
    "DIK_I",
    "DIK_J",
    "DIK_K",
    "DIK_L",
    "DIK_M",
    "DIK_N",
    "DIK_O",
    "DIK_P",
    "DIK_Q",
    "DIK_R",
    "DIK_S",
    "DIK_T",
    "DIK_U",
    "DIK_V",
    "DIK_W",
    "DIK_X",
    "DIK_Y",
    "DIK_Z",
    "DIK_0",
    "DIK_1",
    "DIK_2",
    "DIK_3",
    "DIK_4",
    "DIK_5",
    "DIK_6",
    "DIK_7",
    "DIK_8",
    "DIK_9",
    "DIK_NUMPAD0",
    "DIK_NUMPAD1",
    "DIK_NUMPAD2",
    "DIK_NUMPAD3",
    "DIK_NUMPAD4",
    "DIK_NUMPAD5",
    "DIK_NUMPAD6",
    "DIK_NUMPAD7",
    "DIK_NUMPAD8",
    "DIK_NUMPAD9",
    "DIK_ESCAPE",
    "DIK_TAB",
    "DIK_LSHIFT",
    "DIK_RSHIFT",
    "DIK_LCONTROL",
    "DIK_RCONTROL",
    "DIK_BACK",
    "DIK_BACKSPACE",
    "DIK_RETURN",
    "DIK_NUMPADENTER",
    "DIK_LMENU",
    "DIK_LALT",
    "DIK_SPACE",
    "DIK_CAPITAL",
    "DIK_CAPSLOCK",
    "DIK_NUMLOCK",
    "DIK_SCROLL",
    "DIK_RMENU",
    "DIK_RALT",
];

private _keyPotential = [
    "DIK_HOME",
    "DIK_INSERT",
];

