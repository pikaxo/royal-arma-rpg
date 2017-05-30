/*
  By: Mathias "Kvia"
*/

#define ST_CENTER         0x02
#define defaultFont    RobotoCondensedBold
class playerHUD {
    idd = -1;
    duration = 10e10;
    movingEnable = 0;
    name = "playerHUD";
    onLoad = "uiNamespace setVariable ['playerHUD',_this select 0]";
    objects[] = {};
    controls[] = {
        Life_RscProgress_HUDFood,
        Life_RscProgress_HUDHealth,
        Life_RscProgress_HUDWater,
        Life_RscText_HUDFood,
        Life_RscText_HUDHealth,
        Life_RscText_HUDWater,
        foodIcon,
        healthIcon,
        waterIcon
    };

class LIFE_RscProgress_HUDCommon: Life_RscProgress
{
  colorFrame[] = {1,1,1,1};
  x = 0.927976 * safezoneW + safezoneX;
	y = 0.720007 * safezoneH + safezoneY;
	w = 0.0670327 * safezoneW;
	h = 0.033001 * safezoneH;
};

class Life_RscProgress_HUDFood: LIFE_RscProgress_HUDCommon
{
	idc = 2200;
	colorBar[] = {0,0.5,0,0.39};

	x = 0.927976 * safezoneW + safezoneX;
	y = 0.720007 * safezoneH + safezoneY;
	w = 0.0670327 * safezoneW;
	h = 0.033001 * safezoneH;
	colorBackground[] = {0,0,0,1};
};
class Life_RscProgress_HUDHealth: LIFE_RscProgress_HUDCommon
{
	idc = 2201;
	colorBar[] = {0.85,0.05,0,0.39};

	x = 0.927978 * safezoneW + safezoneX;
	y = 0.764008 * safezoneH + safezoneY;
	w = 0.0670327 * safezoneW;
	h = 0.033001 * safezoneH;
	colorBackground[] = {0,0,0,1};
};
class Life_RscProgress_HUDWater: LIFE_RscProgress_HUDCommon
{
	idc = 2202;
	colorBar[] = {0,0.25,0.65,0.39};

	x = 0.927978 * safezoneW + safezoneX;
	y = 0.808009 * safezoneH + safezoneY;
	w = 0.0670327 * safezoneW;
	h = 0.033001 * safezoneH;
	colorBackground[] = {0,0,0,1};
};
class Life_RscText_HUDCommon: Life_RscText {
    font = defaultFont;
    shadow = 0.3;
};
class Life_RscText_HUDFood: Life_RscText_HUDCommon
{
	idc = 1200;

	text = "Food"; // -- --- ToDo: Localize;
  SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
	x = 0.930031 * safezoneW + safezoneX;
	y = 0.7244 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.022 * safezoneH;
};
class Life_RscText_HUDHealth: Life_RscText_HUDCommon
{
	idc = 1201;

	text = "Health"; // -- --- ToDo: Localize;
  SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
	x = 0.930005 * safezoneW + safezoneX;
	y = 0.7684 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.022 * safezoneH;
};
class Life_RscText_HUDWater: Life_RscText_HUDCommon
{
	idc = 1202;

	text = "Thirst"; // -- --- ToDo: Localize;
  SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
	x = 0.930031 * safezoneW + safezoneX;
	y = 0.8124 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.022 * safezoneH;
};
class foodIcon: life_RscPicture
{
	idc = -1;

	text = "icons\HUD\foodIcon.paa"; // -- --- ToDo: Localize;
	x = 0.902196 * safezoneW + safezoneX;
	y = 0.720007 * safezoneH + safezoneY;
	w = 0.0206254 * safezoneW;
	h = 0.033001 * safezoneH;
};
class healthIcon: life_RscPicture
{
	idc = -1;

	text = "icons\HUD\healthIcon.paa"; // -- --- ToDo: Localize;
	x = 0.902196 * safezoneW + safezoneX;
	y = 0.764008 * safezoneH + safezoneY;
	w = 0.0206254 * safezoneW;
	h = 0.033001 * safezoneH;
};
class waterIcon: life_RscPicture
{
	idc = -1;

	text = "icons\HUD\WaterIcon.paa"; // -- --- ToDo: Localize;
	x = 0.902196 * safezoneW + safezoneX;
	y = 0.808009 * safezoneH + safezoneY;
	w = 0.0206254 * safezoneW;
	h = 0.033001 * safezoneH;
};
};