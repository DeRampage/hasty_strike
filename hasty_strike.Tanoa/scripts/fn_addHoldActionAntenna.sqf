#define TITLE "Hacken der Antenne"
#define ICON  ""
#define PROG_ICON    ""
#define CODE_START {hint "Antenne wird gehackt..."}
#define CODE_TICK {}
#define CODE_END {hint "Hacken der Antenne erfolgreich!"; _action = _this execVM "scripts\fn_changeTextureScreen.sqf";}
#define CODE_INTERUPT {}
#define ARGUMENTS []
#define DURATION 10
#define PRIORITY 1
#define REMOVE true
#define SHOW_UNCON false

[_this,TITLE,ICON,PROG_ICON,"true","true",CODE_START,CODE_TICK,CODE_END,CODE_INTERUPT,ARGUMENTS,DURATION,PRIORITY,REMOVE,SHOW_UNCON] call bis_fnc_holdActionAdd;