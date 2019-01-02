#define CT_MAP_MAIN 101
#define ST_PICTURE 48

#include "common.hpp"

class chaos_main_menu
{
	idd = 6700;
    name = "chaos_main_menu";
    movingEnable = 0;
    enableSimulation = true;
	onUnload = "terminate mapanimloop";
	class ControlsBackground
	{
		class background
		{
			type = 0;
			idc = 6701;
			x = safeZoneX + safeZoneW * 0;
			y = safeZoneY + safeZoneH * 0.025;
			w = safeZoneW * 1;
			h = safeZoneH * 0.95;
			style = 0;
			text = "";
			colorBackground[] = {0.502,0.502,0.502,1};
			colorText[] = {0.102,0.5255,0.2588,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};

		class map: RscMapControl
		{
			idc = 6703;
			maxSatelliteAlpha = 0;
			x = safeZoneX + safeZoneW * 0.6;
			y = safeZoneY + safeZoneH * 0.025;
			w = safeZoneW * 0.4;
			h = safeZoneH * 0.95;
			alphaFadeStartScale = 0;
			alphaFadeEndScale = 0;
		};
		
	};
	class Controls
	{
		class title
		{
			type = 0;
			idc = 6702;
			x = safeZoneX + safeZoneW * 0;
			y = safeZoneY + safeZoneH * 0;
			w = safeZoneW * 1;
			h = safeZoneH * 0.025;
			style = 0;
			text = "Main Menu";
			colorBackground[] = {0.9213,0.0634,0.0634,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.25);
			
		};
		class chaos_customs_class_title
		{
			type = 0;
			idc = 6706;
			x = safeZoneX + safeZoneW * 0;
			y = safeZoneY + safeZoneH * 0.025;
			w = safeZoneW * 0.6
			h = safeZoneH * 0.025;
			style = 0;
			text = "Custom Classes";
			colorBackground[] = {0.302, 0.302, 0.302, 1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.25);
			
		};
		class footer
		{
			type = 0;
			idc = 6704;
			x = safeZoneX + safeZoneW * 0;
			y = safeZoneY + safeZoneH * 0.975;
			w = safeZoneW * 1;
			h = safeZoneH * 0.025;
			style = 0;
			text = "";
			colorBackground[] = {0.9213,0.0634,0.0634,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
		class spawn
		{
			type = 1;
			idc = 6705;
			x = safeZoneX + safeZoneW * 0.955;
			y = safeZoneY + safeZoneH * 0.9775;
			w = safeZoneW * 0.0425;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Spawn";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "closeDialog 0; [] call player_fnc_tpPlayerToObjective;";
		};

		class exit
		{
			type = 1;
			idc = 6708;
			x = safeZoneX + safeZoneW * 0.0025;
			y = safeZoneY + safeZoneH * 0.9775;
			w = safeZoneW * 0.0425;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Exit";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "['end1',false,1] call BIS_fnc_endMission;";
		};

		class chaos_customs_classes
		{
			type = 12;
			idc = 6707;
			x = safeZoneX + safeZoneW * -0.00625;
			y = safeZoneY + safeZoneH * 0.05;
			w = safeZoneW * 0.2375;
			h = safeZoneH * 0.9;
			style = 16;
			colorBackground[] = {0.502,0.502,0.502,1}; // Fill color
			colorSelect[] = {0.9213,0.0634,0.0634,1}; // Selected item fill color (when multiselectEnabled is 0)
			colorMarked[] = {0.9213,0.0634,0.0634,1}; // Marked item fill color (when multiselectEnabled is 1)
			colorMarkedSelected[] = {0.9213,0.0634,0.0634,1}; // Selected item fill color (when multiselectEnabled is 1)
			colorText[] = {1,1,1,1};
			colorSelectText[] = {1,1,1,1};
			colorMarkedText[] = {1,1,1,1};
			colorBorder[] = {1,1,1,1};
			colorPicture[] = {1,1,1,1};
			colorPictureSelected[] = {1,1,1,1};
			colorPictureDisabled[] = {1,1,1,1};
			colorPictureRight[] = {1,1,1,1};
			colorPictureRightSelected[] = {1,1,1,1};
			colorPictureRightDisabled[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ScrollBar
			{
				width = 0; // width of ScrollBar
				height = 0; // height of ScrollBar
				scrollSpeed = 0.01; // scroll speed of ScrollBar

				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

				color[] = {1,1,1,1}; // Scrollbar color
			};
			
			hiddenTexture = "A3\ui_f\data\gui\rsccommon\rsctree\hiddenTexture_ca.paa"; // Expand icon
			expandedTexture = "A3\ui_f\data\gui\rsccommon\rsctree\expandedTexture_ca.paa"; // Collapse icon

			colorDisabled[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
			colorArrow[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
		};
	};
	
};

