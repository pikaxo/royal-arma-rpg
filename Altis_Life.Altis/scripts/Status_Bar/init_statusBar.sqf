/*
Autor : ToprakH.
Status Bar
*/

waitUntil {!isNull player};
waitUntil {!(isNull (findDisplay 46))};

//Status Bar Config and Startup Options

//Choose Options
//--------------------------------------------------------------------------------------------------------------------------------------		
_WSC = false;  //Option whether to use and display world space coords in the admin status bar (true or false)


_sb_admin_list = ["ADMİN UID GİRİLECEK"];	
//--------------------------------------------------------------------------------------------------------------------------------------

//Start the Status Bar
	
if ((getPlayerUID player) in _sb_admin_list) then  //admins id here
{ 
	if (_WSC) then
	{
		[] execVM "scripts\Status_Bar\playerBar.sqf";
	}
	else
	{
		[] execVM "scripts\Status_Bar\playerBar.sqf";
	};
} 
else 
{
	[] execVM "scripts\Status_Bar\playerBar.sqf";
};