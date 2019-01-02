class RscPicture
{
	access = 0;
	type = CT_STATIC;
	idc = -1;
	style = 48;//ST_PICTURE
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
};

class RscMapControl
{
	access = 0;
	idc = -1;
	type = CT_MAP_MAIN;
	style = ST_PICTURE;

	x = 0.10;
	y = 0.10;
	w = 0.80;
	h = 0.60;

	colorBackground[] = { 1.00, 1.00, 1.00, 1.00 };
    colorCountlines[] = { 0.572, 0.354, 0.188, 0.25 };
	colorCountlinesWater[] = { 0.491, 0.577, 0.702, 0.3 };
	colorForest[] = { 0.624, 0.78, 0.388, 0.50 };
	colorForestBorder[] = { 0, 0, 0, 0 };
	colorGrid[] = { 0.1, 0.1, 0.1, 0.6 };
	colorGridMap[] = { 0.1, 0.1, 0.1, 0.6 };
	colorInactive[] = { 1.00, 1.00, 1.00, 0.50 };
	colorLevels[] = { 0.286, 0.117, 0.094, 0.5 };
	colorMainCountlines[] = { 0.572, 0.354, 0.188, 0.5 };
	colorMainCountlinesWater[] = {0.491, 0.577, 0.702, 0.6 };
	colorMainRoads[] = {0.9, 0.5, 0.3, 1 };
	colorMainRoadsFill[] = {1, 0.6, 0.4, 1 };
	colorNames[] = { 0.1, 0.1, 0.1, 0.9 };
	colorOutside[] = { 0, 0, 0, 1 };
	colorPowerLines[] = { 0.1, 0.1, 0.1, 1 };
	colorRailWay[] = { 0.8, 0.2, 0, 1 };
	colorRoads[] = {0.7, 0.7,0.7, 1 };
	colorRoadsFill[] = {1, 1, 1, 1 };
	colorRocks[] = { 0, 0, 0, 0.3 };
	colorRocksBorder[] = { 0, 0, 0, 0 };
	colorSea[] = { 0.467, 0.631, 0.851, 0.50 };
	colorText[] = { 0, 0, 0, 1.00 };
	colorTracks[] = { 0.84, 0.76, 0.65, 0.15 };
	colorTracksFill[] = { 0.84, 0.76, 0.65, 0.1 };
	colorTrails[] = { 0.84, 0.76, 0.65, 0.15 };
	colorTrailsFill[] = { 0.84, 0.76, 0.65, 0.65 };

	font = "TahomaB";
	sizeEx = 0.04;

	fontLabel = "RobotoCondensed";
	sizeExLabel = "(((((safezoneW / safezoneH) min 1.2) / 1.2) /25) * 0.8)";
	fontGrid = "TahomaB";
	sizeExGrid = 0.02;
	fontUnits = "TahomaB";
	sizeExUnits = "(((((safezoneW / safezoneH) min 1.2) / 1.2) /25) * 0.8)";
	fontNames = "RobotoCondensed";
	sizeExNames = "(((((safezoneW / safezoneH) min 1.2) / 1.2) /25) * 0.8) * 2";
	fontInfo = "RobotoCondensed";
	sizeExInfo = "(((((safezoneW / safezoneH) min 1.2) / 1.2) /25) * 0.8)";
	fontLevel = "TahomaB";
	sizeExLevel = 0.02;

	ptsPerSquareSea = 6;
	ptsPerSquareTxt = 8;
	ptsPerSquareCLn = 8;
	ptsPerSquareExp = 8;
	ptsPerSquareCost = 8;
	ptsPerSquareFor = "4.0f";
	ptsPerSquareForEdge = "10.0f";
	ptsPerSquareRoad = 2;
	ptsPerSquareObj = 10;

	text = "#(argb,8,8,3)color(1,1,1,1)";
	showCountourInterval = 2;
	scaleDefault = 0.1;
	onMouseButtonClick = "";
	onMouseButtonDblClick = "";

	class ActiveMarker
	{
		color[] = { 0.30, 0.10, 0.90, 1.00 };
		size = 50;
	};
	class Bunker
	{
		icon = "\ca\ui\data\map_bunker_ca.paa";
		color[] = { 0, 0, 0, 1.00 };
		size = 14;
		importance = "1.5 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Bush
	{
		icon = "\ca\ui\data\map_bush_ca.paa";
		color[] = { 0.45, 0.64, 0.33, 0.4 };
		size = "14/2";
		importance = "0.2 * 14 * 0.05 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class BusStop
	{
		icon = "\ca\ui\data\map_busstop_ca.paa";
		color[] = { 1, 1, 1, 1 };
		size = 24;
		importance = "1 * 10 * 0.05";
		coefMin = 0.85;
		coefMax = 1;
	};
	class Command
	{
		icon = "#(argb,8,8,3)color(1,1,1,1)";
		color[] = { 1, 1, 1, 1 };
		size = 18;
		importance = 1.00;
		coefMin = 1.00;
		coefMax = 1.00;
	};
	class Cross
	{
		icon = "\ca\ui\data\map_cross_ca.paa";
		color[] = { 0.00, 0, 0, 1.00 };
		size = 24;
		importance = "0.7 * 16 * 0.05";
		coefMin = 0.85;
		coefMax = 1;
	};
	class Fortress
	{
		icon = "\ca\ui\data\map_bunker_ca.paa";
		color[] = { 0, 0, 0, 1.00 };
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Fuelstation
	{
		icon = "\ca\ui\data\map_fuelstation_ca.paa";
		color[] = { 1.00, 0.35, 0.35, 1.00 };
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.75;
		coefMax = 4.00;
	};
	class Fountain
	{
		icon = "\ca\ui\data\map_fountain_ca.paa";
		color[] = { 0.00, 0.35, 0.70, 1.00 };
		size = 12;
		importance = "1 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Hospital
	{
		icon = "\ca\ui\data\map_hospital_ca.paa";
		color[] = { 0.78, 0.00, 0.05, 1.00 };
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.50;
		coefMax = 4;
	};
	class Chapel
	{
		icon = "\ca\ui\data\map_chapel_ca.paa";
		color[] = { 0.00, 0.35, 0.70, 1.00 };
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Church
	{
		icon = "\ca\ui\data\map_church_ca.paa";
		color[] = { 0.00, 0.35, 0.70, 1.00 };
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Lighthouse
	{
		icon = "\ca\ui\data\map_lighthouse_ca.paa";
		color[] = { 0.78, 0.00, 0.05, 1.00 };
		size = 20;
		importance = "3 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Quay
	{
		icon = "\ca\ui\data\map_quay_ca.paa";
		color[] = { 0.00, 0.35, 0.70, 1.00 };
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.50;
		coefMax = 4.00;
	};
	class Rock
	{
		icon = "\ca\ui\data\map_rock_ca.paa";
		color[] = { 0.35, 0.35, 0.35, 1.00 };
		size = 12;
		importance = "0.5 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Ruin
	{
		icon = "\ca\ui\data\map_ruin_ca.paa";
		color[] = { 0.78, 0.00, 0.05, 1.00 };
		size = 16;
		importance = "1.2 * 16 * 0.05";
		coefMin = 1.00;
		coefMax = 4.00;
	};
	class Stack
	{
		icon = "\ca\ui\data\map_stack_ca.paa";
		color[] = { 0.00, 0.35, 0.70, 1.00 };
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Tree
	{
		icon = "\ca\ui\data\map_tree_ca.paa";
		color[] = { 0.55, 0.64, 0.43, 1.00 };
		size = 12;
		importance = "0.9 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class SmallTree
	{
		icon = "\ca\ui\data\map_smalltree_ca.paa";
		color[] = { 0.55, 0.64, 0.43, 1.00 };
		size = 12;
		importance = "0.6 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Tourism
	{
		icon = "\ca\ui\data\map_tourism_ca.paa";
		color[] = { 0.78, 0.00, 0.05, 1.00 };
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.70;
		coefMax = 4.00;
	};
	class Transmitter
	{
		icon = "\ca\ui\data\map_transmitter_ca.paa";
		color[] = { 0.00, 0.35, 0.70, 1.00 };
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class ViewTower
	{
		icon = "\ca\ui\data\map_viewtower_ca.paa";
		color[] = { 0.00, 0.35, 0.70, 1.00 };
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.50;
		coefMax = 4.00;
	};
	class Watertower
	{
		icon = "\ca\ui\data\map_watertower_ca.paa";
		color[] = { 0.00, 0.35, 0.70, 1.00 };
		size = 32;
		importance = "1.2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Waypoint
	{
		icon = "\ca\ui\data\map_waypoint_ca.paa";
		color[] = { 0.00, 0.00, 0.00, 1.00 };
		size = 24;
		importance = 1.00;
		coefMin = 1.00;
		coefMax = 1.00;
	};
	class WaypointCompleted
	{
		icon = "\ca\ui\data\map_waypoint_completed_ca.paa";
		color[] = { 0.00, 0.00, 0.00, 1.00 };
		size = 24;
		importance = 1.00;
		coefMin = 1.00;
		coefMax = 1.00;
	};
};