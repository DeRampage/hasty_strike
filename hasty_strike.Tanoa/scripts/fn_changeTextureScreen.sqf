#define TL_ON "Images\Ant_Left_On.paa"
#define TL_OFF "Images\Ant_Left_Off.paa"
#define TR_ON "Images\Ant_Right_On.paa"
#define TR_OFF "Images\Ant_Right_Off.paa"
#define TARGET _this select 0
#define TARGET1 Ant_1_DT
#define TARGET2 Ant_2_DT
#define TARGET1_RDS Ant_1_RDS
#define TARGET2_RDS Ant_2_RDS

if(str(TARGET)==str(TARGET1)) then
{
	Ant_1_DT_STATUS = false;
	publicVariable"Ant_1_DT_STATUS";
};
if(str(TARGET)==str(TARGET2)) then
{
	Ant_2_DT_STATUS = false;
	publicVariable"Ant_2_DT_STATUS";
};

if(Ant_1_DT_STATUS) then
{	// When Antenna 1 got startet, normaly only on mission start.
	TARGET1_RDS setObjectTextureGlobal[0, TL_ON];
	TARGET2_RDS setObjectTextureGlobal[0, TL_ON];
	[TARGET1,3] call BIS_fnc_dataTerminalAnimate;
}else{ //IF Antenna 1 got shutdown
	TARGET1_RDS setObjectTextureGlobal[0, TL_OFF];
	TARGET2_RDS setObjectTextureGlobal[0, TL_OFF];
	[TARGET1,0] call BIS_fnc_dataTerminalAnimate;
	{if(str(group _x) == "B Sentinel")then
		{
			["hack_hilltop", _x,["Hacken Sie die Antennensteurung!","Hacken",getMarkerPos "Obj1"],getMarkerPos "Obj1","succeeded",1, true] call BIS_fnc_setTask;	
		};
	} foreach allPlayers;
	if(player in units Zeus) then {hint format["Hilltop: %1\nVulcan: %2",str(Ant_1_DT_STATUS),str(Ant_2_DT_STATUS)];};
};
if(Ant_2_DT_STATUS) then
{	// When Antenna 2 got startet, normaly only on mission start.
	TARGET1_RDS setObjectTextureGlobal[1, TR_ON];
	TARGET2_RDS setObjectTextureGlobal[1, TR_ON];
	[TARGET2,3] call BIS_fnc_dataTerminalAnimate;
}else{ //IF Antenna 2 got shutdown
	TARGET1_RDS setObjectTextureGlobal[1, TR_OFF];
	TARGET2_RDS setObjectTextureGlobal[1, TR_OFF];
	[TARGET2,0] call BIS_fnc_dataTerminalAnimate;
	{if(str(group _x) == "B Foxhound")then
		{
			["hack_vulcano", _x,["Hacken Sie die Antennensteurung!","Hacken",getMarkerPos "Obj2"],getMarkerPos "Obj2","succeeded",1, true] call BIS_fnc_setTask;	
		};
	} foreach allPlayers;
	if(player in units Zeus) then {hint format["Hilltop: %1\nVulcan: %2",str(Ant_1_DT_STATUS),str(Ant_2_DT_STATUS)];};
};

_action = execVM "scripts\attFactory.sqf";