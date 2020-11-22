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
			primaryWeapon = "";
			secondaryWeapon "";
		};

		class weaponItems
		{
			primaryWeaponItems[] = {};
			secondaryWeaponItems[] = {};
		};

		class equipments
		{
			class uniform
			{
				items[] = {{}};
			};

			class vest
			{
				items[] = {{}};
			};

			class backpack
			{
				items[] = {{"FirstAidKit", 1}};
			};
		};
	};

	class civilian
	{
		class gears
		{

		};

		class weapons
		{

		};

		class equipment
		{

		};
	};

	class east
	{
		class gears
		{

		};

		class weapons
		{

		};

		class equipment
		{

		};
	};

	class independant
	{
		class gears
		{

		};

		class weapons
		{

		};

		class equipment
		{

		};
	};
};
