/*
    @file fn_nametags.sqf
    @author Lewey
*/

addMissionEventHandler ["Draw3D", {

    {
    
        _unit = _x;
        _side = side _unit;
        
        //check if player is staff
        _isAdmin = [_unit] call admin_fnc_isPlayerAdmin;
       
        //if player is staff give em staff lookin shit
        if (_isAdmin) then {

            fname = (format["%1 (Admin)", name _unit ]);
            clr = [1,0.8,0,1];
            picon = "\A3\ui_f\data\map\respawn\icon_dead_ca";

        } else {

            fname = (format["%1", name _unit ]);
            picon = "\A3\ui_f\data\map\markers\nato\o_unknown.paa";
            clr = _side call {
                if(_this == civilian)exitWith{[0.67,0.97,0.97,1]};
                if(_this == west)exitWith{[0.047,0.502,1,1]};
                if(_this == resistance)exitWith{[0,0.65,0,1]};
                if(_this == east)exitWith{[1,0.17,0.17,1]};
                [1,1,1,1]
            };

        };

        // dont draw marker on self
        if (_unit != player) then {

            if ((_side == side player) && (getPlayerUID _unit != "") && ((player distance _unit) < 5)) then {

                drawIcon3D[
                    picon,
                    clr,
                    [visiblePosition _unit select 0, visiblePosition _unit select 1, (getPosATL _unit select 2) + 2],
                    1,
                    1,
                    0,
                    fname,
                    1,
                    0.035,
                    "PuristaSemiBold"
                ]

            }

        }

    } forEach playableUnits;

}];
