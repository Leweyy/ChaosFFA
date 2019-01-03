class chaos_player_menu
{
	idd = 6800;
	
	class ControlsBackground
	{
		class background
		{
			type = 0;
			idc = 6801;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.36481482;
			w = safeZoneW * 0.4;
			h = safeZoneH * 0.27870371;
			style = 0;
			text = "";
			colorBackground[] = {0.4,0.4,0.4,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
        class statistics_button
		{
			type = 1;
			idc = 6812;
			x = safeZoneX + safeZoneW * 0.31;
			y = safeZoneY + safeZoneH * 0.38981482;
			w = safeZoneW * 0.05989584;
			h = safeZoneH * 0.1;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
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
			onButtonClick = "closeDialog 0; call player_fnc_initStatsMenu";
		};

        class vehicles_button
		{
			type = 1;
			idc = 6811;
			x = safeZoneX + safeZoneW * 0.39;
			y = safeZoneY + safeZoneH * 0.38981482;
			w = safeZoneW * 0.05989584;
			h = safeZoneH * 0.1;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
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
			onButtonClick = "closeDialog 0; call player_fnc_initVehicleMenu";
		};

        class admin_button
		{
			type = 1;
			idc = 6813;
			x = safeZoneX + safeZoneW * 0.47;
			y = safeZoneY + safeZoneH * 0.38981482;
			w = safeZoneW * 0.05989584;
			h = safeZoneH * 0.1;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
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
			onButtonClick = "closeDialog 0; call admin_fnc_initRelocateObjectiveMenu";
			
		};

        class empty1_button
		{
			type = 1;
			idc = 6814;
			x = safeZoneX + safeZoneW * 0.55;
			y = safeZoneY + safeZoneH * 0.38981482;
			w = safeZoneW * 0.05989584;
			h = safeZoneH * 0.1;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
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
			onButtonClick = "";
			
		};

        class empty2_button
		{
			type = 1;
			idc = 6815;
			x = safeZoneX + safeZoneW * 0.63;
			y = safeZoneY + safeZoneH * 0.38981482;
			w = safeZoneW * 0.05989584;
			h = safeZoneH * 0.1;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
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
			onButtonClick = "";
			
		};

	};
	class Controls
	{
		class title
		{
			type = 0;
			idc = 6802;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.33981482;
			w = safeZoneW * 0.4;
			h = safeZoneH * 0.025;
            style = 0;
			text = "Player Menu";
			colorBackground[] = {0.9213,0.0634,0.0634,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.25);
			
		};
        class statistics_picture : RscPicture
		{
			idc = 6821;
			x = safeZoneX + safeZoneW * 0.31;
			y = safeZoneY + safeZoneH * 0.38981482;
			w = safeZoneW * 0.05989584;
			h = safeZoneH * 0.1;
			text = "images\player_menu\statistics.paa";
			colorText[] = {1,1,1,1};
            colorBackground[] = {1,1,1,1};
            tooltip = "Player Stats"
		};

		class vehicles_picture : RscPicture
		{
			idc = 6822;
			x = safeZoneX + safeZoneW * 0.39;
			y = safeZoneY + safeZoneH * 0.38981482;
			w = safeZoneW * 0.05989584;
			h = safeZoneH * 0.1;
			text = "\A3\Soft_F\MRAP_02\Data\UI\map_MRAP_02_CA.paa";
			colorText[] = {1,1,1,1};
            colorBackground[] = {1,1,1,1};
            tooltip = "Vehicle Menu"
		};

        class admin_picture : RscPicture
		{
			idc = 6823;
			x = safeZoneX + safeZoneW * 0.47;
			y = safeZoneY + safeZoneH * 0.38981482;
			w = safeZoneW * 0.05989584;
			h = safeZoneH * 0.1;
			text = "images\player_menu\admin.paa";
			colorText[] = {1,1,1,1};
            colorBackground[] = {1,1,1,1};
            tooltip = "Admin Menu"
		};

        class empty1_picture : RscPicture
		{
			idc = 6824;
			x = safeZoneX + safeZoneW * 0.55;
			y = safeZoneY + safeZoneH * 0.38981482;
			w = safeZoneW * 0.05989584;
			h = safeZoneH * 0.1;
			text = "";
			colorText[] = {1,1,1,1};
            colorBackground[] = {1,1,1,1};
            tooltip = ""
		};

        class empty2_picture : RscPicture
		{
			idc = 6825;
			x = safeZoneX + safeZoneW * 0.63;
			y = safeZoneY + safeZoneH * 0.38981482;
			w = safeZoneW * 0.05989584;
			h = safeZoneH * 0.1;
			text = "";
			colorText[] = {1,1,1,1};
            colorBackground[] = {1,1,1,1};
            tooltip = ""
		};
	};
	
};