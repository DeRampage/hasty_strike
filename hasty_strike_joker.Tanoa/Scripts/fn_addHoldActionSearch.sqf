_Object = _this select 0;
_Titel = _this select 1;
_Dauer = _this select 2;
[
    _Object,		       		                                                   	     // Object the action is attached to
    _Titel,			                                                          			 // Title of the action
    "",                                                                                  // Idle icon shown on screen
    "",                                                                                  // Progress icon shown on screen
    "true",                                                  						     // Condition for the action to be shown
    "true",                                                							     // Condition for the action to progress
    {},                                                                                  // Code executed when action starts
    {},                                                                                  // Code executed on every progress tick
    {
		_Object = _this select 3 select 0;
		if(str(_Object)=="INTEL") then
		{
			GV_3 = false;
			publicVariable "GV_3";
			INTEL_STATUS setObjectTextureGlobal [0, "Images\Offline.paa"];
			["search_hilltop", Sentinel,["Durchsuchen Sie das Lager nach Informationen!","Durchsuchen",getMarkerPos "m_hilltop"],getMarkerPos "m_hilltop", "SUCCEEDED", 2,true,true] call BIS_fnc_setTask;	
		};
		if(str(_Object)=="GRAVE") then
		{
			GV_4 = false;
			publicVariable "GV_4";
			GRAVE_STATUS setObjectTextureGlobal [0, "Images\Offline.paa"];	
			["search_vulcano", Foxhound,["Durchsuchen Sie das Lager nach Informationen!","Durchsuchen",getMarkerPos "m_vulcano"],getMarkerPos "m_vulcano", "SUCCEEDED", 2,true,true] call BIS_fnc_setTask;
		};
		execVM "Scripts\fn_checkTasks.sqf";
		[_Object, 0] remoteExec ["BIS_fnc_holdActionRemove",0,_Object];
	},	 																				 // Code executed on completion
    {},                                                                                  // Code executed on interrupted
    [_Object],																			 // Arguments passed to the scripts as _this select 3
    _Dauer,                                                                              // Action duration [s]
    0,                                                                                   // Priority
    true,                                                                                // Remove on completion
    false                                                                                // Show in unconscious state 
] remoteExec ["BIS_fnc_holdActionAdd",0,_Object];  						        		 // example for MP compatible implementation*/