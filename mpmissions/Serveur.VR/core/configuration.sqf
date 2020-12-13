/* Initialiser les variables globales */

perk = "default";

spawnPoints = [] call row_client_fnc_GetSpawnPoints;
playerActions = [] call row_client_fnc_SetupActions;
corpse = objNull;
deathCamera = objNull;
naturalNeeds = [ 100, 100, 100];