if(!GV_6 AND !GV_7 AND !GV_8) then
{
	["att_factory_sentinel", Sentinel,["Greifen Sie die Zucker Fabrick an, werfen Sie die Feindkraefte, Zerstören Sie die Biowaffe und Retten Sie Walter White!","Angriff", getMarkerPos "m_factory"],getMarkerPos "m_factory", "SUCCEEDED", 1,true,true] call BIS_fnc_setTask;
	["att_factory_foxhound", Foxhound,["Greifen Sie die Zucker Fabrick an, werfen Sie die Feindkraefte, Zerstören Sie die Biowaffe und Retten Sie Walter White!","Angriff", getMarkerPos "m_factory"],getMarkerPos "m_factory", "SUCCEEDED", 1,true,true] call BIS_fnc_setTask;
	["att_factory_ghost", Ghost,["Unterstuetzen Sie Ghost und Sentinel bei dem Angriff auf die Zucker Fabrick!","Unterstuetzen", getMarkerPos "m_factory"],getMarkerPos "m_factory", "SUCCEEDED", 1,true,true] call BIS_fnc_setTask;
	["exfil", true,["Exfilitrieren Sie, nach der Zerstörung der Biowaffe, zusammen mit der befreiten Geisel!","Exfil", getMarkerPos "m_factory"],getMarkerPos "m_factory", "CREATED", 1,true,true] call BIS_fnc_setTask;
};
if(_this == "EXFIL") then
{
	["exfil", true,["Exfilitrieren Sie, nach der Zerstörung der Biowaffe, zusammen mit der befreiten Geisel!","Exfil", getMarkerPos "m_factory"],getMarkerPos "m_factory", "SUCCEEDED", 1,true,true] call BIS_fnc_setTask;
};
