// gérer la gestion de l'écran de mort
params
[
    ["_unit", objNull, [objNull]],
    ["_killer", objNull, [objNull]]
];

disableSerialization;

_am  = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder true;
cam cameraEffect ["Internal","Back"];
createDialog "DeathScreen";
cam camSetTarget _unit;
cam camSetRelPos [0,3.5,4.5];
cam camSetFOV .5;
cam camSetFocus [50,0];
cam camCommit 0;
