waitUntil {!isNull player && player == player};

[] call compile preprocessFileLineNumbers "core\clientValidator.sqf";
[] call row_client_fnc_SetupEventHandler;

[] call compile preprocessFileLineNumbers "core\configuration.sqf";
[] call row_client_fnc_InitSpawnMenu;

waitUntil {!isNull findDisplay 42000};
waitUntil {isNull findDisplay 42000};
