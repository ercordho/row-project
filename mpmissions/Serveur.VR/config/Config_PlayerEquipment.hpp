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
			uniform = "U_B_CTRG_1";
			vest = "V_PlateCarrierH_CTRG";
			backpack = "B_Carryall_cbr";
			headGear  = "H_HelmetB_Black";
			goggles = "G_Balaclava_blk";
			items[] = { "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "NVGoggles" };
		};

		class weapons
		{
			weaponItems[] = { "arifle_MX_F", "", "hgun_ACPC2_F" };
			accessoriesItems[] = {{ "optic_Hamr", "acc_pointer_IR", "30Rnd_65x39_caseless_mag" }, { "" }, { "muzzle_snds_acp" }};
		};

		class equipments
		{
			uniformItems[] = {{}};
			vestItems[] = {{ "30Rnd_65x39_caseless_mag", 5 }};
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
