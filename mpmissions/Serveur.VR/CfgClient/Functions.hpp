class Row_Client
{
	tag = "row_client";

	class Row_Equipment
	{
		file = "core\equipment";
		class AssignPlayerEquipment{};
		class CleanPlayerEquipment{};
		class SavePlayerEquipment{};
	};

	class Row_Medical
	{
		file = "core\medical";
		class DeathScreen{};
		class onPlayerKilled{};
		class onPlayerRespawn{};
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
		class PlayerRespawn{};
		class PlayerSpawn{};
		class SetMapPos{};
	};

	class Row_Utilities
	{
		file = "core\utilities";
		class DisplayHandler{};
		class levelCheck{};
		class SeekNearestUnit{};
	};
};
