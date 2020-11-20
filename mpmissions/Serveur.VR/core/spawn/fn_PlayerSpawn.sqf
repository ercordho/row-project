private
[
	"_index",
	"_building",
	"_spawnPos",
	"_loadEquipment"
];
disableSerialization;

_index = lnbCurSelRow ((findDisplay 42000) displayCtrl 42003);

closeDialog 0;
cutText ["", "BLACK IN"];

_building = nearestObjects[getMarkerPos ((spawnPoints select _index) select 1), ["House_F"], 50] select 0;
_spawnPos = [_building] call row_client_fnc_GetSpawnPosInBuilding;
player setPosATL _spawnPos;
player setDir (getDir _building);
