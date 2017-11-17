_DataTerminal = _this  select 0;
_ToDo = _this select 1;

// Startup
if(_ToDo==3) then
{
	{
		_x setObjectTextureGlobal [0, "Images\Left_On.paa"];
		_x setObjectTextureGlobal [1, "Images\Right_On.paa"];	
	}foreach allMissionObjects "Land_TripodScreen_01_dual_v1_F";
	{
		[_x, _ToDo] call BIS_fnc_dataTerminalAnimate;	
	}foreach allMissionObjects "Land_DataTerminal_01_F";
}else{
	[_DataTerminal, _ToDo] call BIS_fnc_dataTerminalAnimate;
	if(str(_DataTerminal)=="DT_1") then
	{
		GV_1 = false;
		publicVariable "GV_1";
		{
			_x setObjectTextureGlobal [0, "Images\Left_Off.paa"];	
		}foreach allMissionObjects "Land_TripodScreen_01_dual_v1_F";
		["Hacken_hilltop", Sentinel,["Hacken Sie die Antennensteurung an Hilltop!","Hacken",getMarkerPos "m_hilltop"],getMarkerPos "m_hilltop", "SUCCEEDED", 2,true,true] call BIS_fnc_setTask;
	};
	if(str(_DataTerminal)=="DT_2") then
	{
		GV_2 = false;
		publicVariable "GV_2";
		{
			_x setObjectTextureGlobal [1, "Images\Right_Off.paa"];	
		}foreach allMissionObjects "Land_TripodScreen_01_dual_v1_F";
		["Hacken_vulcano", Foxhound,["Hacken Sie die Antennensteurung an Vulcano!","Hacken",getMarkerPos "m_vulcano"],getMarkerPos "m_vulcano", "SUCCEEDED", 2,true,true] call BIS_fnc_setTask;
	};
	execVM "Scripts\fn_checkTasks.sqf";
};