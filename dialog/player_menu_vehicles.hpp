class chaos_player_menu_vehicles
{
	idd = 7000;
	
	class ControlsBackground
	{
		class background
		{
			type = 0;
			idc = 7001;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.24444445;
			w = safeZoneW * 0.4;
			h = safeZoneH * 0.51944445;
			style = 0;
			text = "";
			colorBackground[] = {0.4,0.4,0.4,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min1.2)/1.2)/25)*1);
			
		};
		
	};
	class Controls
	{
		class title
		{
			type = 0;
			idc = 7002;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.21944445;
			w = safeZoneW * 0.4;
			h = safeZoneH * 0.025;
			style = 0;
			text = "Main Menu";
			colorBackground[] = {0.9213,0.0634,0.0634,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH)min1.2)/1.2)/25)*1.25);
			
		};
		class vehicle_list
		{
			type = 5;
			idc = 7003;
			x = safeZoneX + safeZoneW * 0.305;
			y = safeZoneY + safeZoneH * 0.252;
			w = safeZoneW * 0.15;
			h = safeZoneH * 0.50;
			style = 16;
			colorBackground[] = {0.302,0.302,0.302,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class spawn_vehicle
		{
			type = 1;
			idc = 7004;
			x = safeZoneX + safeZoneW * 0.65;
			y = safeZoneY + safeZoneH * 0.73425926;
			w = safeZoneW * 0.04635417;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "Spawn";
			borderSize = 0;
			colorBackground[] = {0.302,0.302,0.302,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0.302,0.302,0.302,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class vehicle_info_bg
		{
			type = 0;
			idc = 7005;
			x = safeZoneX + safeZoneW * 0.45833334;
			y = safeZoneY + safeZoneH * 0.25185186;
			w = safeZoneW * 0.235;
			h = safeZoneH * 0.46944445;
			style = 0;
			text = "";
			colorBackground[] = {0.302,0.302,0.302,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH)min1.2)/1.2)/25)*1);
			
		};
		class vehicle_points
		{
			type = 0;
			idc = 7006;
			x = safeZoneX + safeZoneW * 0.45833334;
			y = safeZoneY + safeZoneH * 0.25185186;
			w = safeZoneW * 0.235;
			h = safeZoneH * 0.025;
			style = 0;
			text = "";
			colorBackground[] = {0.9213,0.0634,0.0634,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH)min1.2)/1.2)/25)*1.25);
			
		};
		
	};
	
};