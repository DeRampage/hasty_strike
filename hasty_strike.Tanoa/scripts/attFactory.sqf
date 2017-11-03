if((str(Ant_1_BEW_STATUS)=="false")and(str(Ant_2_BEW_STATUS)=="false"))then
{
	if((str(Ant_2_DT_STATUS)=="false") and (str(Ant_2_DT_STATUS)=="false"))then
	{
		{
			if(str(side _x)=="WEST") then
			{
				[_x,["sugar"],["Formieren Sie sich neu und werfen Sie die Feindkräfte an der Zucker Fabrik!","Zucker Fabrik",getMarkerPos "Obj4"],getMarkerPos "Obj4",1,2,true,"attack"] call BIS_fnc_taskCreate;
			};
		} foreach allPlayers;
	};
};