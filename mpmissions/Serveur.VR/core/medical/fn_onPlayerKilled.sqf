// gérer la gestion de l'écran de mort
params
[
    ["_unit", objNull, [objNull]],
    ["_killer", objNull, [objNull]]
];
disableSerialization;

if (!((vehicle _unit) isEqualTo _unit)) then
{
    UnAssignVehicle _unit;
    _unit action ["getOut", vehicle _unit];
    _unit setPosATL [(getPosATL _unit select 0) + 3, (getPosATL _unit select 1) + 1, 0];
};

if (dialog) then { closeDialog 0; };

deathCamera = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder true;
deathCamera cameraEffect ["Internal","Back"];
createDialog "row_death_screen";
deathCamera camSetTarget _unit;
deathCamera camSetRelPos [0, 3.5, 4.5];
deathCamera camSetFOV 0.5;
deathCamera camSetFocus [50, 0];
deathCamera camCommit 0;

(findDisplay 43000) displaySetEventHandler ["keyDown", "_this call row_client_fnc_DisplayHandler"];
