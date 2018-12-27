_houseTypes = ['Structures_Village','Structures_Commercial','Structures_Military','Structures_Industrial','Structures_Inrfrastructure','Structures_Town'];
_getText = getText (_x >> 'vehicleClass') in _houseTypes;
houseArray = _getText configClasses ( configFile >> "CfgVehicles" );