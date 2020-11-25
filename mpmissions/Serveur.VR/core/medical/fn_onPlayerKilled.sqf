// gérer la gestion de l'écran de mort
params
[
    ["_unit", objNull, [objNull]],
    ["_killer", objNull, [objNull]]
];
disableSerialization;

if  !((vehicle player) isEqualTo player) then {
    UnAssignVehicle player;
    player action ["getOut", vehicle player];
    player setPosATL [(getPosATL player select 0) + 3, (getPosATL player select 1) + 1, 0];
};

//Set some vars
player setVariable ["Revive",true,true];

if (dialog) then { closeDialog 0; };

//Setup our camera view
deathCamera  = "CAMERA" camCreate (getPosATL player);
showCinemaBorder true;
deathCamera cameraEffect ["Internal","Back"];
createDialog "row_death_screen";
deathCamera camSetTarget player;
deathCamera camSetRelPos [0,3.5,4.5];
deathCamera camSetFOV .5;
deathCamera camSetFocus [50,0];
deathCamera camCommit 0;

(findDisplay 43000) displaySetEventHandler ["keyDown", "_this call row_client_fnc_DisplayHandler"];
