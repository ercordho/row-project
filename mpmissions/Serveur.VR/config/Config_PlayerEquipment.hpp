
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
		class default
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

	class west
	{
		class default
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

		class soldier
		{
			class gears
			{
				uniform = "U_B_T_Soldier_F";
				vest = "V_PlateCarrierSpec_tna_F";
				backpack = "B_AssaultPack_tna_F";
				headGear  = "H_HelmetB_Enh_tna_F";
				goggles = "G_Balaclava_oli";
				items[] = { "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "NVGoggles_tna_F" };
			};

			class weapons
			{
				weaponItems[] = { "arifle_SPAR_01_khk_F", "", "hgun_P07_khk_F" };
				accessoriesItems[] = {{ "muzzle_snds_m_khk_F", "optic_Hamr_khk_F", "30Rnd_556x45_Stanag_Tracer_Red", "bipod_01_F_khk" }, { "" }, { "muzzle_snds_L", "16Rnd_9x21_Mag" }};
			};

			class equipments
			{
				uniformItems[] = {{ "FirstAidKit", 2 }};
				vestItems[] = {{ "30Rnd_556x45_Stanag_Tracer_Red", 5 }, { "16Rnd_9x21_Mag", 3 }};
				backpackItems[] = {{}};
			};
		};

		class sapper
		{
			class gears
			{
				uniform = "U_B_T_Soldier_F";
				vest = "V_PlateCarrierSpec_tna_F";
				backpack = "B_AssaultPack_tna_F";
				headGear  = "H_HelmetB_Enh_tna_F";
				goggles = "G_Balaclava_oli";
				items[] = { "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "NVGoggles_tna_F" };
			};

			class weapons
			{
				weaponItems[] = { "arifle_SPAR_01_GL_khk_F", "", "hgun_P07_khk_F" };
				accessoriesItems[] = {{ "muzzle_snds_m_khk_F", "optic_Hamr_khk_F", "30Rnd_556x45_Stanag_Tracer_Red", "bipod_01_F_khk", "1Rnd_HE_Grenade_shell" }, { "" }, { "muzzle_snds_L", "16Rnd_9x21_Mag" }};
			};

			class equipments
			{
				uniformItems[] = {{ "FirstAidKit", 2 }};
				vestItems[] = {{ "30Rnd_556x45_Stanag_Tracer_Red", 5 }, { "1Rnd_HE_Grenade_shell", 2 }, { "16Rnd_9x21_Mag", 3 }};
				backpackItems[] = {{ "ATMine_Range_MAg", 1 }, { "SatchelCharge_Remote_Mag", 1 }};
			};
		};

		class machineGunner
		{
			class gears
			{
				uniform = "U_B_T_Soldier_F";
				vest = "V_PlateCarrierSpec_tna_F";
				backpack = "B_AssaultPack_tna_F";
				headGear  = "H_HelmetB_Enh_tna_F";
				goggles = "G_Balaclava_oli";
				items[] = { "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "NVGoggles_tna_F" };
			};

			class weapons
			{
				weaponItems[] = { "arifle_SPAR_02_khk_F", "", "hgun_P07_khk_F" };
				accessoriesItems[] = {{ "muzzle_snds_m_khk_F", "optic_Hamr_khk_F", "150Rnd_556x45_Drum_Mag_F", "bipod_01_F_khk" }, { "" }, { "muzzle_snds_L", "16Rnd_9x21_Mag" }};
			};

			class equipments
			{
				uniformItems[] = {{ "FirstAidKit", 2 }};
				vestItems[] = {{ "16Rnd_9x21_Mag", 3 }};
				backpackItems[] = {{ "150Rnd_556x45_Drum_Mag_F", 1 }};
			};
		};

		class sniper
		{
			class gears
			{
				uniform = "U_B_T_Sniper_F";
				vest = "V_TacChestrig_grn_F";
				backpack = "";
				headGear  = "H_HelmetB_Enh_tna_F";
				goggles = "G_Balaclava_oli";
				items[] = { "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "NVGoggles_tna_F" };
			};

			class weapons
			{
				weaponItems[] = { "arifle_SPAR_03_khk_F", "", "hgun_P07_khk_F" };
				accessoriesItems[] = {{ "muzzle_snds_B_khk_F", "optic_SOS_khk_F", "20Rnd_762x51_Mag", "bipod_01_F_khk" }, { "" }, { "muzzle_snds_L", "16Rnd_9x21_Mag" }};
			};

			class equipments
			{
				uniformItems[] = { { "FirstAidKit", 2 }};
				vestItems[] = {{ "20Rnd_762x51_Mag", 5 }, { "16Rnd_9x21_Mag", 3 }};
				backpackItems[] = {{}};
			};
		};
	};

	class east
	{
		class default
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

	class independant
	{
		class default
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
};
