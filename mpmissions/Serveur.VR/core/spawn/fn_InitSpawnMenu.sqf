private
[
	"_display",
	"_ctrl"
];
disableSerialization;

cutText["","BLACK FADED"];
0 cutFadeOut 9999999;
createDialog "row_spawn_selection";
_display = findDisplay 42000;
_display displaySetEventHandler ["keyDown", "_this call row_client_fnc_DisplayHandler"];
_ctrl = (_display displayCtrl 42003);

{
	_ctrl lnbAddRow[(spawnPoints select _forEachIndex) select 0, (spawnPoints select _forEachIndex) select 0];
	_ctrl lnbSetData[[_forEachIndex, 0], (spawnPoints select _forEachIndex) select 1];
	_ctrl lnbSetPicture[[_forEachIndex, 0], (spawnPoints select _forEachIndex) select 2];
} forEach spawnPoints;

[(_display displayCtrl 42002), 0] call row_client_fnc_SetMapPos;
_ctrl lnbSetCurSelRow 0;
