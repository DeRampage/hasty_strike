//KI auf chair setzen
//[c1, ki1]call ace_sitting_fnc_sit;

//Globale Variablen
Ant_1_DT_STATUS = true;
Ant_2_DT_STATUS = true;
Ant_1_BEW_STATUS = true;
Ant_2_BEW_STATUS = true;
Exfil_STATUS=true;
publicVariable "Ant_1_DT_STATUS";
publicVariable "Ant_2_DT_STATUS";
publicVariable "Ant_1_BEW_STATUS";
publicVariable "Ant_2_BEW_STATUS";
publicVariable "Exfil_STATUS";

_action = [Ant_1_RDS, "bla"] execVM "scripts\fn_changeTextureScreen.sqf";
null = [scientist] execVM "scripts\hostage.sqf";