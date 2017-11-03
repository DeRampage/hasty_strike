#define TARGET _this select 0
#define TARGET1 intel
#define TARGET2 grave
if(str(TARGET)==str(TARGET1)) then
{
	Ant_1_BEW_STATUS = false;
	publicVariable"Ant_1_BEW_STATUS";
};
if(str(TARGET)==str(TARGET2)) then
{
	Ant_2_BEW_STATUS = false;
	publicVariable"Ant_2_BEW_STATUS";
};

if(!Ant_1_BEW_STATUS) then
{	
	{if(str(group _x) == "B Sentinel")then
		{
			["search_hilltop", _x,["Durchsuchen Sie das Lager nach Informationen!","Durchsuchen",getMarkerPos "Obj1"],getMarkerPos "Obj1","succeeded",1, true] call BIS_fnc_setTask;	
		};
	} foreach allPlayers;
};

if(!Ant_2_BEW_STATUS) then
{	
	{if(str(group _x) == "Foxhound")then
		{
			["search_vulcano", _x,["Durchsuchen Sie das Lager nach dem Verbleib des Wissenschaftsteams!","Durchsuchen",getMarkerPos "Obj2"],getMarkerPos "Obj2","succeeded",1, true] call BIS_fnc_setTask;
		};
	} foreach allPlayers;
};

_action = execVM "scripts\attFactory.sqf";