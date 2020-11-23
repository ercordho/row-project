class CfgPlayerEquipment
{
	/*
	class items
	{
		watch[] = { "ItemWatch", 1};
		compass[] = { "ItemCompass", 1};
		radio[] = { "ItemRadio", 1};
		map[] = { "ItemMap", 1};
	};
	*/

	class civilian
	{
		class gears
		{
			uniform = "";
			vest = "";
			backpack = "";
		};

		class weapons
		{
			weaponItems[] = { "", "", "" };
			accessoriesItems[] = {{ "", "", "" }, { "" }, { "" }};
		};

		class equipments
		{
			uniformItems[] = {{}};
			vestItems[] = {{}};
			backpackItems[] = {{ "", 0 }, { "", 0 }};
		};
	};

	class west
	{
		class gears
		{
			uniform = "U_OrestesBody";
			vest = "V_Safety_yellow_F";
			backpack = "B_FieldPack_blk";
		};

		class weapons
		{
			weaponItems[] = { "arifle_MX_F", "", "hgun_ACPC2_F" };
			accessoriesItems[] = {{ "optic_aco", "muzzle_snds_h", "30Rnd_65x39_caseless_mag" }, { "" }, { "muzzle_snds_acp" }};
		};

		class equipments
		{
			uniformItems[] = {{}};
			vestItems[] = {{ "30Rnd_65x39_caseless_mag", 5 };
			backpackItems[] = {{ "FirstAidKit", 1 }};
		};
	};

	class east
	{
		class gears
		{
			uniform = "";
			vest = "";
			backpack = "";
		};

		class weapons
		{
			weaponItems[] = { "", "", "" };
			accessoriesItems[] = {{ "", "", "" }, { "" }, { "" }};
		};

		class equipments
		{
			uniformItems[] = {{}};
			vestItems[] = {{}};
			backpackItems[] = {{ "", 0 }, { "", 0 }};
		};
	};

	class independant
	{
		class gears
		{
			uniform = "";
			vest = "";
			backpack = "";
		};

		class weapons
		{
			weaponItems[] = { "", "", "" };
			accessoriesItems[] = {{ "", "", "" }, { "" }, { "" }};
		};

		class equipments
		{
			uniformItems[] = {{}};
			vestItems[] = {{}};
			backpackItems[] = {{ "", 0 }, { "", 0 }};
		};
	};
};
