/*
    File: fn_isPlayerAdmin.sqf
    Author: Lewey
    
    Description:
    checks to see if the player is an admin
    "player" call fn_clearClassById;
    
    Parameters:
        0: _unit  - player obj
    
    Returns:
      Boolean
*/

params = [
  ["_unit", objNull, [objNull]]
];

private _STAFF_UIDS = [
  "76561198130918050"
];

if (getPlayerUID _unit in _STAFF_UIDS || serverCommandAvailable '#kick' || !isMultiplayer) exitwith{true};
