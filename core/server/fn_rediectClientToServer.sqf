// Define server info
uiNamespace setVariable ["redirectTimeout", diag_ticktime +30];
uiNamespace setVariable ["redirectInfo", ["127.0.0.1","2302"]];

//close all pre existing displays in correct order
onEachFrame {

  diag_log 'Redirect Client > Stage 1 > Closing Displays';
  _displays = allDisplays;
  _indexMission = _displays find (findDisplay 46);
  _displays = _displays select [_indexMission, count(_displays)];
  reverse _displays;
  (_x closeDisplay 2) forEach _displays;
  
  //Stage 2
  onEachFrame {
    diag_log 'Redirect Client > Stage 2 > ';
    (findDisplay 50) closeDisplay 2;
    (findDisplay 70) closeDisplay 2;
    
    //Stage 3
    onEachFrame {
      diag_log 'Redirect Client > Stage 3 > Open Direct Connect display';
      ctrlActivate (findDisplay 8 displayCtrl 166);
      
      //Stage 4
      onEachFrame {
        diag_log 'Redirect Client > Stage 4 > Enter server info into direct connect window';
        _redirectInfo = uiNamespace getVariable ["redirectInfo", []];
        if (count(_redirectInfo) <2 ) exitWith {diag_log "Redirect Client > Fail > Stage 4 > No transfer info set"; onEachFrame{};};
        
        _ctrlServerIp = (findDisplay 19) displayCtrl 2300;
        _crtlServerIp controlsGroupCtrl 101 ctrlSetText (_redirectInfo select 0);
        _crtlServerIp controlsGroupCtrl 102 ctrlSetText (_redirectInfo select 1);
        
        ctrlActivate (_ctrlServerIp controlsGroupCtrl 1);
        
        //Stage 5
        onEachFrame {
          diag_log 'Redirect Client > Stage 5 > Wait for server to show in list';
          
          _ctrlServerList = (findDisplay 8) displayCtrl 102;
          
          _data = _ctrlServerList lbData 0;
          _data call {
            _data = _this;
            _timeout = uiNamespace getVariable ["redirectTimeout", -1];
            
            if (_timeout == -1) exitWith {diag_log 'Redirect Client > Fail > Stage 5 > No timeout was set'; onEachFrame {};};
            if (diag_tickTime > _timeout) exitWith {diag_log 'Redirect Client > Fail > Stage 5 > No server found'; onEachFrame {};};
            
            _redirectInfo
          }
        }
      }
    }
  }
}
