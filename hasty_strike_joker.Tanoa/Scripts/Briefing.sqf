if(GV_5) then
{
	["briefing", true,["Begeben Sie sich zum Briefing", "Briefing", getMarkerPos "m_briefing"],getMarkerPos "m_briefing", "CREATED", 1,true,true] call BIS_fnc_setTask;
	GV_5 = false;
	publicVariable "GV_5";
}else{
	["briefing", true,["Begeben Sie sich zum Briefing", "Briefing", getMarkerPos "m_briefing"],getMarkerPos "m_briefing", "SUCCEEDED", 1,true,true] call BIS_fnc_setTask;
	["infil_hilltop", Sentinel,["Erreichen Sie Lokation: Hilltop", "Infiltrieren", getMarkerPos "m_hilltop"],getMarkerPos "m_hilltop", "CREATED", 1,true,true] call BIS_fnc_setTask;
	["infil_vulcano", Foxhound,["Erreichen Sie Lokation: Vulcano", "Infiltrieren", getMarkerPos "m_vulcano"],getMarkerPos "m_vulcano", "CREATED", 2,true,true] call BIS_fnc_setTask;
	["infil_sniper", Ghost,["Erreichen Sie Lokation: Sniper-Spot", "Infiltrieren", getMarkerPos "m_sniper"],getMarkerPos "m_sniper", "CREATED", 2,true,true] call BIS_fnc_setTask;
	removeAllActions REMOTE_LAP;
};