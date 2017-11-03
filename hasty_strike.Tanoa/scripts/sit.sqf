params ["_chair", "_unit"];

_chair setVectorUp [0,0,1];
_unit switchMove "Crew";
_unit setPosWorld (getPosWorld _chair); 
_unit setDir ((getDir _chair) - 180);
_unit switchMove "Crew";