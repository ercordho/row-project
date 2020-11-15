private
[
	"_seekSide",
	"_radius",
	"_nearestUnitsCount"
];

_seekSide = [_this, 0, sideUnknown, [sideUnknown]] call BIS_fnc_param;
_radius = [_this, 2, 100, [0]] call BIS_fnc_param;
_nearestUnitsCount = 0;

/*
if (_seekSide isEqualTo sideUnknown) exitWith { false };

{
	if (!(_x isEqualTo player) && side _x isEqualTo _seekSide && getPosATL player distance _x < _radius) then
	{
		_nearestUnitsCount += 1;
	};
} forEach playableUnits;

_ret = if (_nearestUnitsCount > 0) { true } else { false };
_ret;
*/