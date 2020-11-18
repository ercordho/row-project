private
[
	"_seekSide",
	"_radius",
	"_nearestUnitsCount"
];

_seekSide = [_this, 0, sideUnknown, [sideUnknown]] call BIS_fnc_param;
_radius = [_this, 1, 100, [0]] call BIS_fnc_param;
_nearestUnitsCount = 0;


if (_seekSide isEqualTo sideUnknown) exitWith { false };

{
	if (!(_x isEqualTo player) && side _x isEqualTo _seekSide && getPosATL player distance _x < _radius) then
	{
		_nearestUnitsCount = _nearestUnitsCount + 1;
	};
} forEach playableUnits;

if (_nearestUnitsCount > 0) then { true } else { false };
