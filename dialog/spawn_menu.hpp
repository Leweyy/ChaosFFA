#define CT_MAP_MAIN 101
#define ST_PICTURE 48

#include "common.hpp"

class chaos_spawn_menu
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
			x = safeZoneX + safeZoneW * -0.00677083;
			y = safeZoneY + safeZoneH * 0.02222223;
			w = safeZoneW * 1.01354167;
			h = safeZoneH * 1.24166667;
			style = 0;
			text = "";
			colorBackground[] = {0.4,0.4,0.4,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1);
			
		};
		
		class map: RscMapControl
		{
			idc = 6703;
			maxSatelliteAlpha = 0;
			x = safeZoneX + safeZoneW * 0.57708334;
			y = safeZoneY + safeZoneH * 0.06388889;
			w = safeZoneW * 0.41302084;
			h = safeZoneH * 0.9;
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
			x = safeZoneX + safeZoneW * 0.00052084;
			y = safeZoneY + safeZoneH * -0.00185185;
			w = safeZoneW * 1.00364584;
			h = safeZoneH * 0.025;
			style = 0;
			text = "Spawn Menu";
			colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1.25);
			
		};
		class classes_background
		{
			type = 0;
			idc = 6721;
			x = safeZoneX + safeZoneW * 0.0078125;
			y = safeZoneY + safeZoneH * 0.06388889;
			w = safeZoneW * 0.56145834;
			h = safeZoneH * 0.9;
			style = 0;
			text = "";
			colorBackground[] = {0.302,0.302,0.302,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1);
			
		};
		class classes_list
		{
			type = 12;
			idc = 6722;
			x = safeZoneX + safeZoneW * 0.018;
			y = safeZoneY + safeZoneH * 0.075;
			w = safeZoneW * 0.2390625;
			h = safeZoneH * 0.87222223;
			style = 16;
			colorBackground[] = {0.302,0.302,0.302,1}; // Fill color
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
		
		class classes_title
		{
			type = 0;
			idc = 6720;
			x = safeZoneX + safeZoneW * 0.0078125;
			y = safeZoneY + safeZoneH * 0.03888889;
			w = safeZoneW * 0.56145834;
			h = safeZoneH * 0.025;
			style = 0;
			text = "Custom Classes";
			colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1);
			
		};
		class classes_items_title
		{
			type = 0;
			idc = 6723;
			x = safeZoneX + safeZoneW * 0.2625;
			y = safeZoneY + safeZoneH * 0.07962963;
			w = safeZoneW * 0.30025;
			h = safeZoneH * 0.025;
			style = 0;
			text = "Edit Class";
			colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1);
			
		};
		class currentobj_title
		{
			type = 0;
			idc = 6704;
			x = safeZoneX + safeZoneW * 0.57708334;
			y = safeZoneY + safeZoneH * 0.03888889;
			w = safeZoneW * 0.41302084;
			h = safeZoneH * 0.025;
			style = 0;
			text = "Current Objective";
			colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1);
			
		};
		class button_spawn
		{
			type = 1;
			idc = 6709;
			x = safeZoneX + safeZoneW * 0.9425;
			y = safeZoneY + safeZoneH * 0.97222223;
			w = safeZoneW * 0.046875;
			h = safeZoneH * 0.02222223;
			style = 0+2;
			text = "Spawn";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0.302,0.302,0.302,1};
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
		class button_tolobby
		{
			type = 1;
			idc = 6710;
			x = safeZoneX + safeZoneW * 0.0080;
			y = safeZoneY + safeZoneH * 0.97222223;
			w = safeZoneW * 0.046875;
			h = safeZoneH * 0.02222223;
			style = 0+2;
			text = "To Lobby";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0.302,0.302,0.302,1};
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
			onButtonClick = "['end1',false] call BIS_fnc_endMission;";
		};
		class classes_items_list
		{
			type = 12;
			idc = 6724;
			x = safeZoneX + safeZoneW * 0.2625;
			y = safeZoneY + safeZoneH * 0.13055556;
			w = safeZoneW * 0.2984375;
			h = safeZoneH * 0.81296297;
			style = 16;
			colorBackground[] = {0.302,0.302,0.302,1}; // Fill color
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
		
		class class_items_button_weapons
		{
			type = 1;
			idc = 6725;
			x = safeZoneX + safeZoneW * 0.2625;
			y = safeZoneY + safeZoneH * 0.10462963;
			w = safeZoneW * 0.10016666666;
			h = safeZoneH * 0.025;
			style = 0+2;
			text = "Weapons";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0.302,0.302,0.302,1};
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
			
		};
		class class_items_button_clothing
		{
			type = 1;
			idc = 6726;
			x = safeZoneX + safeZoneW * 0.36266666666;
			y = safeZoneY + safeZoneH * 0.10462963;
			w = safeZoneW * 0.1;
			h = safeZoneH * 0.025;
			style = 0+2;
			text = "Clothing";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0.302,0.302,0.302,1};
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
			
		};
		class class_items_button_attachments
		{
			type = 1;
			idc = 6727;
			x = safeZoneX + safeZoneW * 0.46275;
			y = safeZoneY + safeZoneH * 0.10462963;
			w = safeZoneW * 0.1;
			h = safeZoneH * 0.025;
			style = 0+2;
			text = "Attachments";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0.302,0.302,0.302,1};
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
			
		};
		
	};
	
};
