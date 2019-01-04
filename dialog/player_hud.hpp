#define CT_STATIC         0
#define ST_LEFT           0x00
#define ST_CENTER         0x02

class chaos_player_hud
{
	idd = 6400;
	movingEnable=0;
    duration=1e+020;
    onLoad = "uiNamespace setVariable ['chaos_player_hud', _this select 0];";
    onUnLoad = "uiNamespace setVariable ['chaos_player_hud', nil]";
	class Controls
	{

        class hud_objective_picture : RscPicture
		{
			idc = 6401;
			x = safeZoneX + safeZoneW * 0.0046875;
			y = safeZoneY + safeZoneH * 0.95092593;
			w = safeZoneW * 0.01510417;
			h = safeZoneH * 0.025;
			text = "\A3\ui_f\data\map\markers\military\unknown_CA.paa";
			colorText[] = {1,1,1,1};
            colorBackground[] = {1,1,1,1};
		};

		class hud_objective_name
		{
			type = CT_STATIC;
			idc = 6402;
			x = safeZoneX + safeZoneW * 0.00104167;
			y = safeZoneY + safeZoneH * 0.97314815;
			w = safeZoneW * 0.09010417;
			h = safeZoneH * 0.02685186;
			style = 0;
			text = "";
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class hud_notification
		{
			type = CT_STATIC;
			idc = 6403;
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.96388889;
			w = safeZoneW * 0.41197917;
			h = safeZoneH * 0.02685186;
			style = ST_CENTER;
			text = "";
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1,0,0,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	
};
