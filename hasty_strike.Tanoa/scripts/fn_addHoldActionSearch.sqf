#define TITLE "Durchsuchen"
#define ICON  ""
#define PROG_ICON    ""
#define CODE_START {hint "Durchsuchen der Beweise..."}
#define CODE_TICK {}
#define CODE_END {hint "Beweise gesichert!"; _action = _this execVM "scripts\fn_finishTask.sqf";}
#define CODE_INTERUPT {}
#define ARGUMENTS []
#define DURATION 5
#define PRIORITY 1
#define REMOVE true
#define SHOW_UNCON false

if(str(_this)=="intel") then
{
	[_this,TITLE,ICON,PROG_ICON,str(Ant_1_BEW_STATUS),str(Ant_1_BEW_STATUS),CODE_START,CODE_TICK,CODE_END,CODE_INTERUPT,ARGUMENTS,DURATION,PRIORITY,REMOVE,SHOW_UNCON] call bis_fnc_holdActionAdd;
};
if(str(_this)=="grave") then
{
	[_this,TITLE,ICON,PROG_ICON,str(Ant_2_BEW_STATUS),str(Ant_2_BEW_STATUS),CODE_START,CODE_TICK,CODE_END,CODE_INTERUPT,ARGUMENTS,DURATION,PRIORITY,REMOVE,SHOW_UNCON] call bis_fnc_holdActionAdd;
};
