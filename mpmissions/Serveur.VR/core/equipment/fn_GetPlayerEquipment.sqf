private
[
	"_playerEquipmentCfg",
	"_gears",
	"_weapons"
];
/* G E A R S */
_gears = [uniform player, vest player, backpack player, headgear player, goggles player];
/*************/

/* W E A P O N S */
_weapons = [];
_weaponsCfg = [];
_playerWeapons = [primaryWeapon player, secondaryWeapon player, handgunWeapon player];
for "_i" from 0 to ( count (_playerWeapons) - 1) do
{
	_weapon = (_playerWeapons select _i);
	_weaponsCfg pushback _weapon;
	_content = switch (_i) do
	{ 
		case 0: { primaryWeaponMagazine player };
		case 1: { secondaryWeaponMagazine player };
		case 2: { handgunMagazine player };
	};
	_tmpCfg = [];
	for "_j" from 0 to (count (_content) - 1) do
	{
		_tmp = [];
		_tmp pushBack (_content select _j);
		_amout =  if (_j isEqualTo 0) then { player ammo (_weapon) } else { 1 };
		_tmp pushBack _amout;
		_tmpCfg pushBack _tmp;
	};
	_weaponsCfg pushBack _tmpCfg;
	_weaponsCfg pushBack (player weaponAccessories _weapon);
	_weapons pushBack _weaponsCfg;
};


hint format ["%1", _weapons];








/*
for "_i" from 0 to (count (_weapons) - 1) do
{
	_cfg = [];
	_cfg pushBack (_weapons select _i);
	_weaponAccessories = (player weaponAccessories (_weapons select _i));
	for "_j" from 0 to (count (_weaponAccessories) - 2) do
	{
		_cfg pushBack (_weaponAccessories select _j);
	};
	_cfg pushBack (_weaponAccessories select 3);
};
*/
// _weapons = weaponsItems player;

/*************/

/* I T E M S */
//_gearsItems = [uniformItems player, vestItems player, backpackItems player];
/*************/

/*
[
	[uniform, vest, backpack, headgear, goggles],
	[
		[primaryWeapon, muzzle, flashlight, optic, primaryMuzzleMagazine, secondaryMuzzleMagazine, bipod],
		[secondaryWeapon, muzzle, flashlight, optic, primaryMuzzleMagazine, secondaryMuzzleMagazine, bipod],
		[handgunWeapon, muzzle, flashlight, optic, primaryMuzzleMagazine, secondaryMuzzleMagazine, bipod]
	],
	[uniformItems, vestItems, backpackItems]
]
*/


//[_gears, _weapons, _gearsItems];