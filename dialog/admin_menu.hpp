class chaos_admin_menu
{
	idd = 7800;
	
	class ControlsBackground
	{
		class background
		{
			type = 0;
			idc = 7801;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.24444445;
			w = safeZoneW * 0.4;
			h = safeZoneH * 0.51944445;
			style = 0;
			text = "";
			colorBackground[] = {0.4,0.4,0.4,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1);
			
		};
		
	};
	class Controls
	{
		class title
		{
			type = 0;
			idc = 7802;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.21944445;
			w = safeZoneW * 0.4;
			h = safeZoneH * 0.025;
			style = 0;
			text = "Admin Menu";
			colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1.25);
			
		};
		class player_list
		{
			type = 5;
			idc = 7803;
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
		class player_options_title
		{
			type = 0;
			idc = 7804;
			x = safeZoneX + safeZoneW * 0.45833334;
			y = safeZoneY + safeZoneH * 0.25185186;
			w = safeZoneW * 0.23489584;
			h = safeZoneH * 0.025;
			style = 0;
			text = "Player Options";
			colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1);
			
		};
		class player_options_background
		{
			type = 0;
			idc = 7805;
			x = safeZoneX + safeZoneW * 0.45833334;
			y = safeZoneY + safeZoneH * 0.27685186;
			w = safeZoneW * 0.23489584;
			h = safeZoneH * 0.3;
			style = 0;
			text = "";
			colorBackground[] = {0.302,0.302,0.302,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1);
			
		};
		class server_options_title
		{
			type = 0;
			idc = 7806;
			x = safeZoneX + safeZoneW * 0.45833334;
			y = safeZoneY + safeZoneH * 0.585;
			w = safeZoneW * 0.23489584;
			h = safeZoneH * 0.025;
			style = 0;
			text = "Server Options";
			colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			
		};
		class server_options_background
		{
			type = 0;
			idc = 7807;
			x = safeZoneX + safeZoneW * 0.45833334;
			y = safeZoneY + safeZoneH * 0.61;
			w = safeZoneW * 0.23489584;
			h = safeZoneH * 0.142;
			style = 0;
			text = "";
			colorBackground[] = {0.302,0.302,0.302,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			
		};
		class server_objective_relocation
		{
			type = 1;
			idc = 7850;
			x = safeZoneX + safeZoneW * 0.465;
			y = safeZoneY + safeZoneH * 0.62;
			w = safeZoneW * 0.09635417;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "Relocate Objective";
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
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "closeDialog 0; call admin_fnc_objectiverelocate";
		};
		
	};
	
};
