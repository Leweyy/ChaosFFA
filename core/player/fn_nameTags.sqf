/*
    @file fn_nametags.sqf
    @author Lewey
*/

addMissionEventHandler ["Draw3D", {

    {

        //Array of staff steam ids
        _staffUIDS = [
            "76561198130918050",
            "76561198121632932",
            "76561198301127636",
            "76561198095796413",
            "76561198053353709"
        ];

        _side = side _x;
        _uid = getPlayerUID _x;

        //if player is staff give em staff lookin shit
        if (_uid in _staffUIDS) then {

            fname = (format["%1 (Admin)", name _x ]);
            clr = [1,0.8,0,1];
            picon = "\A3\ui_f\data\map\respawn\icon_dead_ca";

        } else {

            fname = (format["%1", name _x ]);
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
        if (_x == player)exitWith{};

        if ((_side == side player) && (getPlayerUID _x != "") && ((player distance _x) < 50)) then {

            drawIcon3D[
                picon,
                clr,
                [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2],
                1,
                1,
                0,
                fname,
                1,
                0.035,
                "PuristaSemiBold"
            ]

        }

    } forEach playableUnits;

}];
