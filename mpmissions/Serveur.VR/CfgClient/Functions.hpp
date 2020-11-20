class Row_Client
{
	tag = "row_client";
	class Row_Medical
	{
		file = "core\medical";
		class DeathScreen{};
		class PlayerKilled{};
	};

	class Row_Setup
	{
		file = "core\setup";
		class SetupActions{};
		class SetupEventHandler{};
	};

	class Row_Spawn
	{
		file = "core\spawn";
		class GetSpawnPosInBuilding{};
		class GetSpawnPoints{};
		class InitSpawnMenu{};
		class PlayerSpawn{};
		class SetMapPos{};
	};

	class	Row_Utilities
	{
		file = "core\utilities";
		class DisplayHandler{};
		class GetBuildingsPos{};
		class SeekNearestUnit{};
	};
};
