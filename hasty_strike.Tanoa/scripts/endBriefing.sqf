// End Briefing
{
	[["briefing"],_x,["Begeben Sie Sich zum Briefing","Briefing",getMarkerPos "Obj0"],getMarkerPos "Obj0","succeeded",1, true] call BIS_fnc_setTask;
	if(str(group _x) == "B Sentinel")then
	{
		[_x,["infil_hilltop"],["Erreichen Sie den Aussenposten","Infil",getMarkerPos "Obj1"],getMarkerPos "Obj1",1,2,true,"walk"] call BIS_fnc_taskCreate;
	};
	if(str(group _x) == "B Foxhound")then
	{
		[_x,["infil_volcano"],["Erreichen Sie die Forschungsstation","Infil",getMarkerPos "Obj2"],getMarkerPos "Obj2",1,2,true,"walk"] call BIS_fnc_taskCreate;
	};
	if(str(group _x) == "B Ghost")then
	{
		[_x,["infil_sniper"],["Erreichen Sie den Observationspunkt","Infil",getMarkerPos "Obj3"],getMarkerPos "Obj3",1,2,true,"walk"] call BIS_fnc_taskCreate;
	};
} foreach allPlayers;