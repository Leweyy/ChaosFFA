
houseArray = "getText (_x >> 'vehicleClass') in ['Structures_Village','Structures_Commercial','Structures_Military','Structures_Industrial','Structures_Inrfrastructure','Structures_Town']" configClasses ( configFile >> "CfgVehicles");

houseNameClean = [];
{
	houseNameClean pushBack getText (configFile >> "CfgVehicles" >> _x >> "_generalMacro");
} forEach houseArray