
/*
	class playerSide
	{
		class gears
		{
			uniform = "uniform_class";
			vest = "vest_class";
			backpack = "backpack_class";
			headGear  = "headGear_class";
			goggles = "goggles_class";

			"" for add nothing

			items[] = { "map_item_class", "GPS_item_class", ..., "radio_item_class"};

			{""} or {} for add nothing
		};

		class weapons
		{
			weaponItems[] = { "rifle_weapon_class", "luncher_weapon_class", "pistol_weapon_class" };

			"" to add nothing weapon item
			{} to past this step

			accessoriesItems[] = {
									{ "rifle_weapon_mag_class", ..., "rifle_weapon_scope_class" },
									{ "luncher_weapon_accessory_class" ..., "luncher_weapon_accessory_class" },
									{ "pistol_weapon_mag_class", ..., "pistol_weapon_silencer_class" }
								};

			"" to add nothing accessory item
			{{}}  for past this step
		};

		class equipments
		{
			uniformItems[] = {{}};
			vestItems[] = {{ "rifle_weapon_mag_class", amout }, { "grenade_class", amout }};
			backpackItems[] = {{ "rifle_weapon_mag_class", amout }};

			"" or amout < 1 to add nothing item
			{{}} to past this step
		};
	};
*/

class CfgPlayerEquipment
{
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
			accessoriesItems[] = {{ "optic_Hamr", "acc_pointer_IR", "30Rnd_65x39_caseless_mag" }, { "" }, { "9Rnd_45ACP_Mag", "muzzle_snds_acp" }};
		};

		class equipments
		{
			uniformItems[] = {{}};
			vestItems[] = {{ "30Rnd_65x39_caseless_mag", 5 }, { "9Rnd_45ACP_Mag", 3 }};
			backpackItems[] = {{ "FirstAidKit", 2 }};
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
