private
[
	"_ctrl",
	"_selectedIndex",
];
disableSerialization;

_ctrl = (_display displayCtrl 42002);
_selectedIndex = [_this, 1, 0, 1] call BIS_fnc_param;

if (isNull _ctrl) exitWith{};

_ctrl ctrlMapAnimAdd[1, 0.1, (getMarkerPos((spawnPoints select _selectedIndex) select 1))];
ctrlMapAnimCommit _ctrl;
