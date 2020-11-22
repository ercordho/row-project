private
[
	"_seekSide",
	"_radius",
	"_nearestDist",
	"_nearestMed"
];

_seekSide = [_this, 0, sideUnknown, [sideUnknown]] call BIS_fnc_param;
_radius = [_this, 1, 100, [0]] call BIS_fnc_param;
_nearestDist = _radius + 1;
_nearestMed = objNull;

_nbrOfMedPlayers = (independent countSide playableUnits);
if (_nbrOfIndPlayers isEqualTo 0 || (_nbrOfIndPlayers isEqualTo 1 && side player isEqualTo independent)) exitWith { _nearestMed };

{
	if (!(_x isEqualTo player) && side _x isEqualTo _seekSide && getPosATL player distance _x < _radius) then
	{
		_tmpDist = player distance _x;
		if (_tmpDist < _nearestDist) then
		{
			_nearestDist = _tmpDist;
			_nearestMed = _x;
		};
	};
} forEach playableUnits;

_nearestMed;
