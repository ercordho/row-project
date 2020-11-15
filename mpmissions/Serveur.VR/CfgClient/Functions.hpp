class Row_Client
{
	tag = "row_client";
	class Row_Medical
	{
		file = "core\medical";
		class DeathScreen{};
		class PlayerKilled{};
		class PlayerRespawn{};
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
		class GetSpawnPoints{};
		class InitSpawnMenu{};
		class SetMapPos{};
	};

	class	Row_Utilities
	{
		file = "core\utilities";
		class DisplayHandler{};
		class SeekNearestUnit{};
	};
};
