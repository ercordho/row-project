waitUntil {!isNull player && player == player};

0 cutText ["", "BLACK FADED", 99999999];

[] call compile preprocessFileLineNumbers "core\clientValidator.sqf";
[] call row_client_fnc_SetupEventHandler;

[] call compile preprocessFileLineNumbers "core\configuration.sqf";
[] call row_client_fnc_InitSpawnMenu;

waitUntil {!isNull findDisplay 42000};
waitUntil {isNull findDisplay 42000};
