#define TITLE "Exfiltration"
#define ICON  ""
#define PROG_ICON    ""
#define CODE_START {}
#define CODE_TICK {}
#define CODE_END {_action = execVM "scripts\Exfil.sqf";}
#define CODE_INTERUPT {}
#define ARGUMENTS []
#define DURATION 10
#define PRIORITY 1
#define REMOVE true
#define SHOW_UNCON false

[_this,TITLE,ICON,PROG_ICON,"true","true",CODE_START,CODE_TICK,CODE_END,CODE_INTERUPT,ARGUMENTS,DURATION,PRIORITY,REMOVE,SHOW_UNCON] call bis_fnc_holdActionAdd;