//Alles bezüglich Hilltop
if(_this == "HILLTOP") then
{
	["infil_hilltop", Sentinel,["Erreichen Sie Lokation: Hilltop", "Infiltrieren", getMarkerPos "m_hilltop"],getMarkerPos "m_hilltop", "SUCCEEDED", 2,true,true] call BIS_fnc_setTask;
	["search_hilltop", Sentinel,["Durchsuchen Sie das Lager nach Informationen!","Durchsuchen",getMarkerPos "m_hilltop"],getMarkerPos "m_hilltop", "CREATED", 2,true,true] call BIS_fnc_setTask;
	["Hacken_hilltop", Sentinel,["Hacken Sie die Antennensteurung an Hilltop!","Hacken",getMarkerPos "m_hilltop"],getMarkerPos "m_hilltop", "CREATED", 2,true,true] call BIS_fnc_setTask;
};

//Alles bezüglich Vulcano
if(_this == "VULCAN") then
{
	["infil_vulcano", Foxhound,["Erreichen Sie Lokation: Vulcan", "Infiltrieren", getMarkerPos "m_vulcano"],getMarkerPos "m_vulcano", "SUCCEEDED", 2,true,true] call BIS_fnc_setTask;
	["search_vulcano", Foxhound,["Durchsuchen Sie das Lager nach Informationen!","Durchsuchen",getMarkerPos "m_vulcano"],getMarkerPos "m_vulcano", "CREATED", 2,true,true] call BIS_fnc_setTask;
	["Hacken_vulcano", Foxhound,["Hacken Sie die Antennensteurung an Vulcan!","Hacken",getMarkerPos "m_vulcano"],getMarkerPos "m_vulcano", "CREATED", 2,true,true] call BIS_fnc_setTask;
};

//Alles bezüglich Sniper Position
if(_this == "SNIPER") then
{
	["infil_sniper", Ghost,["Erreichen Sie Lokation: Sniper-Spot", "Infiltrieren", getMarkerPos "m_sniper"],getMarkerPos "m_sniper", "SUCCEEDED", 2,true,true] call BIS_fnc_setTask;
	["task_sniper", Ghost,["Klaeren Sie die Feindkraefte an der Zucker Fabrik auf! Ermitteln Sie die Position der Biowaffe, sowie des Wissenschaftlers Walter White!","Aufklaeren",getMarkerPos "m_sniper"],getMarkerPos "m_sniper", "CREATED", 2,true,true] call BIS_fnc_setTask;
};