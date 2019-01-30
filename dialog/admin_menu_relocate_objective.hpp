class chaos_admin_menu_relocate_objective
{
	idd = 7900;
	
	class ControlsBackground
	{
		class background
		{
			type = 0;
			idc = 7901;
			x = safeZoneX + safeZoneW * 0.41510417;
			y = safeZoneY + safeZoneH * 0.24444445;
			w = safeZoneW * 0.175;
			h = safeZoneH * 0.51944445;
			style = 0;
			text = "";
			colorBackground[] = {0.4,0.4,0.4,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			
		};
		
	};
	class Controls
	{
		class title
		{
			type = 0;
			idc = 7902;
			x = safeZoneX + safeZoneW * 0.41510417;
			y = safeZoneY + safeZoneH * 0.21944445;
			w = safeZoneW * 0.175;
			h = safeZoneH * 0.025;
			style = 0;
			text = "Objective Selection";
			colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1.25);
			
		};

        class objective_list
		{
			type = 12;
			idc = 7903;
			x = safeZoneX + safeZoneW * 0.4203125;
			y = safeZoneY + safeZoneH * 0.25185186;
			w = safeZoneW * 0.165;
			h = safeZoneH * 0.505;
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
				scrollSpeed = 0.1; // scroll speed of ScrollBar

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
