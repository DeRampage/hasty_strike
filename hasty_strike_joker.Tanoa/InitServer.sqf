//Globale Variablen
GV_1 = true; // Hacken Hilltop
GV_2 = true; // Hacken Vulcan
GV_3 = true; // Durchsuchen Hilltop
GV_4 = true; // Durchsuchen Vulcan
GV_5 = true; // Briefing
GV_6 = true; // TANKER Zerstört
GV_7 = true; // Walter ist Geretter/Gestorben
GV_8 = true; // Factory hat keine Gegner mehr

publicVariable "GV_1";
publicVariable "GV_2";
publicVariable "GV_3";
publicVariable "GV_4";
publicVariable "GV_5";
publicVariable "GV_6";
publicVariable "GV_7";
publicVariable "GV_8";


["Startup", 3] execVM "Scripts\fn_Terminal.sqf";

_action = SCIENCE addEventHandler ["animDone", {
	_unit = _this select 0;
	_anim = _this select 1;
	if(_anim == "ACE_AmovPercMstpScapWnonDnon_AmovPercMstpSnonWnonDnon") then 
	{
		_nearest = objNull;	//Kein Object ausgewählt
		_nearestdist = 50;	//Maximale Distanz
		{
			_dist = vehicle _x distance _unit;
			if ((isPlayer _x) and (_dist<_nearestdist)) then
			{
				_nearest = _x;
				_nearestdist = _dist;
			};
		} forEach allPlayers;

		if (!isNull _nearest) then 
		{
			[_unit] joinSilent group _nearest;
			group _nearest setFormation "STAG COLUMN";
			GV_7 = false;
			publicVariable "GV_7";
			_action = "NO_EXFIL" execVM "Scripts\exfil.sqf";
		};
	};
}];

_action = SCIENCE addEventHandler["killed", {
	["att_factory_Retten_failed", true,["Retten Sie Walter White!","Retten", getMarkerPos "m_factory"],getMarkerPos "m_factory", "Failed", 1,true,true] call BIS_fnc_setTask;
	GV_7 = false;
	publicVariable "GV_7";
	_action = "NO_EXFIL" execVM "Scripts\exfil.sqf";
}];

_action = TANKER addEventHandler["killed", {
	GV_6 = false;
	publicVariable "GV_6";
	_action = "NO_EXFIL" execVM "Scripts\exfil.sqf";
}];

_action = execVM "Scripts\Briefing.sqf";
_action = [DT_1,"Hack Antenne Hilltop"] execVM "Scripts\fn_addHoldActionHack.sqf";
_action = [DT_2,"Hack Antenne Vulcan"] execVM "Scripts\fn_addHoldActionHack.sqf";
_action = [GRAVE, "Durchsuchen des Massengrabes!",2] execVM "Scripts\fn_addHoldActionSearch.sqf";
_action = [INTEL, "Durchsuchen der Dokumente!",15] execVM "Scripts\fn_addHoldActionSearch.sqf";