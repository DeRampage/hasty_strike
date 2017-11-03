//Add Action to Antenna
//Globale Variablen
"Ant_1_DT_STATUS" addPublicVariableEventHandler {
	Ant_1_DT_STATUS = _this select 1;
};
"Ant_2_DT_STATUS" addPublicVariableEventHandler {
	Ant_2_DT_STATUS = _this select 1;
};
"Ant_1_BEW_STATUS" addPublicVariableEventHandler {
	Ant_1_BEW_STATUS = _this select 1;
};
"Ant_2_BEW_STATUS" addPublicVariableEventHandler {
	Ant_2_BEW_STATUS = _this select 1;
};
"Exfil_STATUS" addPublicVariableEventHandler {
	Exfil_STATUS = _this select 1;
};

_action = Ant_1_DT execVM "scripts\fn_addHoldActionAntenna.sqf";
_action = Ant_2_DT execVM "scripts\fn_addHoldActionAntenna.sqf";
_action = intel execVM "scripts\fn_addHoldActionSearch.sqf";
_action = grave execVM "scripts\fn_addHoldActionSearch.sqf";

//Briefing
player createDiaryRecord ["Diary", ["Führung u. Fernmeldewesen", "Anwesende Führung, Funkkanäle, Erkennungszeichen, Duress-Word etc"]];
player createDiaryRecord ["Diary", ["Einsatzunterstützung", "Einrichtung der Versorgung"]];
player createDiaryRecord ["Diary", ["Durchführung", "Plan des Gefechts"]];
player createDiaryRecord ["Diary", ["Maßnahmen zur Koordinierung", "Vorbereitung, Anmarsch etc"]];
player createDiaryRecord ["Diary", ["Auftrag", "Eigene Absicht mit geplanter Operationsführung"]];
player createDiaryRecord ["Diary", ["Eigene Lage", "Lage, Auftrag und Absicht des übergeordneten Truppenteils"]];
player createDiaryRecord ["Diary", ["Feindliche Lage", "Stärke, Art, Verhalten, vermutliche Absicht"]];


//Briefing Task
[player,["briefing"],["Begeben Sie Sich zum Briefing","Briefing",getMarkerPos "Obj0"],getMarkerPos "Obj0",1,2,true,"meet"] call BIS_fnc_taskCreate;

if(str(side player)=="CIV") then
{
	null = remote addAction ["Briefing", "scripts\endBriefing.sqf"];
	null = ExfilCan execVM "scripts\fn_addHoldActionExfil.sqf";
};