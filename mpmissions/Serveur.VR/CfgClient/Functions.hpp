class Row_Client
{
	tag = "row_client";
	class Row_medical
	{
		file = "core\medical":
		class DeathScreen{};
		class PlayerKilled{};
		class PlayerRespawn{};
	};

	class Row_Setup
	{
		file = "core\setup";
		class SetupAction{};
		class SetupEventHandler{};
	};

	class	Row_Utilities
	{
		file = "core\utilities";
		class SeekNearestUnit{};
	}
};
