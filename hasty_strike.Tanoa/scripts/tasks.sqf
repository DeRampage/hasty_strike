//Sentinel Tasks
{if(str(group _x) == "B Sentinel")then
	{
	[_x,["infil_hilltop"],["Erreichen Sie den Aussenposten","Infil",getMarkerPos "Obj1"],getMarkerPos "Obj1",1,2,true,"walk"] call BIS_fnc_taskCreate;
	[_x,["task_hilltop"],["Schalten Sie die Feindkräfte aus!","Einnehmen",getMarkerPos "Obj1"],getMarkerPos "Obj1",1,2,true,"attack"] call BIS_fnc_taskCreate;
	[_x,["search_hilltop"],["Durchsuchen Sie das Lager nach Informationen!","Durchsuchen",getMarkerPos "Obj1"],getMarkerPos "Obj1",1,2,true,"search"] call BIS_fnc_taskCreate;
	[_x,["hack_hilltop"],["Hacken Sie die Antennensteurung!","Hacken der Antennensteurung",getMarkerPos "Obj1"],getMarkerPos "Obj1",1,2,true,"use"] call BIS_fnc_taskCreate;
	};
} foreach allPlayers;

//Foxhound Tasks
{if(str(group _x) == "B Foxhound")then
	{
	[_x,["infil_volcano"],["Erreichen Sie die Forschungsstation","Infil",getMarkerPos "Obj2"],getMarkerPos "Obj2",1,2,true,"walk"] call BIS_fnc_taskCreate;
	[_x,["task_volcano"],["Erreichen Sie die Forschungsstation","Einnehmen",getMarkerPos "Obj2"],getMarkerPos "Obj2",1,2,true,"attack"] call BIS_fnc_taskCreate;
	[_x,["side_volcano"],["Durchsuchen Sie das Lager nach dem Verbleib des Wissenschaftsteams und hacken Sie die Antennensteurung!","Durchsuchen & Hacken",getMarkerPos "Obj2"],getMarkerPos "Obj2",1,2,true,"search"] call BIS_fnc_taskCreate;
	};
} foreach allPlayers;

//Ghost Tasks
{if(str(group _x) == "B Ghost")then
	{
	[_x,["infil_sniper"],["Erreichen Sie den Observationspunkt","Infil",getMarkerPos "Obj3"],getMarkerPos "Obj3",1,2,true,"walk"] call BIS_fnc_taskCreate;
	[_x,["task_sniper"],["Klären Sie die Feindkräfte an der Zucker Fabrik auf! Ermitteln Sie die Position der Biowaffe sowie des Wissenschaftlers Walter White!","Aufklärung",getMarkerPos "Obj3"],getMarkerPos "Obj3",1,2,true,"scout"] call BIS_fnc_taskCreate;
	};
} foreach allPlayers;

//General Tasks
//Attack Sugar Factory
[player,["sugar"],["Formieren Sie sich neu und werfen Sie die Feindkräfte an der Zucker Fabrik!","Zucker Fabrik",getMarkerPos "Obj4"],getMarkerPos "Obj4",1,2,true,"attack"] call BIS_fnc_taskCreate;

//Exfil
[player,["exfil"],["Exfilitrieren Sie, nach der Zerstörung der Biowaffe, zusammen mit der befreiten Geisel!", "Exfil",getMarkerPos "Obj5"],getMarkerPos "Obj5",1,2,true,"takeoff"] call BIS_fnc_taskCreate;
