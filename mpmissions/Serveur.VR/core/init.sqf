0 cutText[localize "Str_Init_ClientSetup", "BLACK FADED", 99999999];

[] call compile preprocessFileLineNumbers "core\clientValidator.sqf";
[] call row_client_fnc_SetupEventHandler;
[] call row_client_fnc_SetupActions;
[] call compile preprocessFileLineNumbers "core\configuration.sqf";
[] call row_client_fnc_InitSpawnMenu;
0 cutText["", "BLACK IN"];
