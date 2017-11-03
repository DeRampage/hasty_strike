if(str(Exfil_STATUS)=="true") then
{
	{
		if(str(side _x)=="WEST") then
		{
			["sugar", _x,["Formieren Sie sich neu und werfen Sie die Feindkräfte an der Zucker Fabrik!","Zucker Fabrik",getMarkerPos "Obj4"],getMarkerPos "Obj4","succeeded",1, true] call BIS_fnc_setTask;
			[_x,["exfil"],["Exfilitrieren Sie, nach der Zerstörung der Biowaffe, zusammen mit der befreiten Geisel!", "Exfil",getMarkerPos "Obj5"],getMarkerPos "Obj5",1,2,true,"takeoff"] call BIS_fnc_taskCreate;
		};
	} foreach allPlayers;
	Exfil_STATUS=false;
	publicVariable"Exfil_STATUS";
	null = ExfilCan execVM "scripts\fn_addHoldActionExfil.sqf";
}else{
	{
		if(str(side _x)=="WEST") then
		{
			["exfil", _x,["Exfilitrieren Sie, nach der Zerstörung der Biowaffe, zusammen mit der befreiten Geisel!","Exfil",getMarkerPos "Obj5"],getMarkerPos "Obj5","succeeded",1, true] call BIS_fnc_setTask;
		};
	} foreach allPlayers;
};