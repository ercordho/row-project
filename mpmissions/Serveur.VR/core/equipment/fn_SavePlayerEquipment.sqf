_gearsData = [
	[uniform player, uniformItems player],
	[vest player, vestItems player],
	[backpack player, backPackItems player]
];

_weaponsData = [
	[primaryWeapon player, currentMagazine (primaryWeapon player), primaryWeaponItems player],
	[secondaryWeapon player, currentMagazine (secondaryWeapon player), secondaryWeaponItems player],
	[handgunWeapon player, currentMagazine (handgunWeapon player), handgunItems player]
];

_items = assignedItems player;
_headgear = headgear player;
_goggles = goggles player;
