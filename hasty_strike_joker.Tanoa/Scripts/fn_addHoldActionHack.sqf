_Object = _this select 0;
_Titel = _this select 1;
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
		[_Object, 0] execVM "Scripts\fn_Terminal.sqf";
		[_Object, 0] remoteExec ["BIS_fnc_holdActionRemove",0,_Object];
	},	 																				 // Code executed on completion
    {},                                                                                  // Code executed on interrupted
    [_Object],																			 // Arguments passed to the scripts as _this select 3
    1,                                                                                   // Action duration [s]
    0,                                                                                   // Priority
    true,                                                                                // Remove on completion
    false                                                                                // Show in unconscious state 
] remoteExec ["BIS_fnc_holdActionAdd",0,_Object];  						        		 // example for MP compatible implementation*/