DCON_fnc_Jump = {
  if ((vehicle player == player) && (speed player >= 8) && (isTouchingGround player) && (player getvariable["DCON_Jump_Ready",true])) then {
      
    player setvariable ["DCON_Jump_Ready",false];
    [player,""] remoteexec ['switchMove'];

    _height = 4;
    _speed = 0;

    player setVelocity [(velocity player select 0)+(sin direction player*_speed),(velocity player select 1)+(cos direction player*_speed),(velocity player select 2)+_height];

    [player,"AovrPercMrunSrasWrflDf"] remoteexec ['switchMove'];
    
    waitUntil {
        sleep 0.2;
        isTouchingGround player;
    };

    sleep 1;
    
    player setvariable ["DCON_Jump_Ready",true];
  };
  
  if !((isTouchingGround player) && (player getvariable["DCON_Jump_Ready",true])) then {
    waitUntil {(animationState player == "AovrPercMstpSrasWrflDf")};
    player switchMove "";
  };

};

waituntil {!isnull (finddisplay 46)};

(findDisplay 46) displayRemoveEventHandler ["KeyDown",DCON_Jump_Event];

DCON_Jump_Event = (findDisplay 46) displayAddEventHandler ["KeyDown",{
  if(_this select 1 == 57) then {
      0 spawn {sleep 0.01;showCommandingMenu "";};
      [] spawn DCON_fnc_Jump;
  };
}];