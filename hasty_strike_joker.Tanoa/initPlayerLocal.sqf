//Add Action to Antenna
//Globale Variablen
"GV_1" addPublicVariableEventHandler {
	GV_1 = _this select 1;
};
"GV_2" addPublicVariableEventHandler {
	GV_2 = _this select 1;
};
"GV_3" addPublicVariableEventHandler {
	GV_3 = _this select 1;
};
"GV_4" addPublicVariableEventHandler {
	GV_4 = _this select 1;
};
"GV_5" addPublicVariableEventHandler {
	GV_5 = _this select 1;
};
"GV_6" addPublicVariableEventHandler {
	GV_6 = _this select 1;
};
"GV_7" addPublicVariableEventHandler {
	GV_7 = _this select 1;
};
"GV_8" addPublicVariableEventHandler {
	GV_8 = _this select 1;
};

_action = VA_1 execVM "Scripts\fn_addArsenal.sqf";
_action = VA_2 execVM "Scripts\fn_addArsenal.sqf";
_action = VA_3 execVM "Scripts\fn_addArsenal.sqf";
//if(str(side player)=="CIV") then
//{
	REMOTE_LAP addAction ["Beende Briefing", "Scripts\Briefing.sqf"];
	GRAVE_STATUS addAction ["GRAVE",""];
	INTEL_STATUS addAction ["INTEL",""];
//};