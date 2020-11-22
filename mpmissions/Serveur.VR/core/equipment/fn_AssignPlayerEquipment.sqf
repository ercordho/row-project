/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_AssignPlayerEquipment.sqf                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ercordho <ercordho@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/22 19:21:43 by ercordho          #+#    #+#             */
/*   Updated: 2020/11/22 19:21:44 by ercordho         ###   ########.fr       */
/*                                                                            */
/*   Description :                                                            */
/*   Assigns equipment to the player based on their role, rank or side.       */
/* ************************************************************************** */

private
[
	"_playerEquipmentCfg",
	"_loadout"
];
disableSerialization;

_playerEquipmentCfg = missionConfigFile >> "CfgPlayerEquipment" >> str(playerSide);
_loadout = [];

/*
**	Add player gears
*/
_uniform = getText (_playerEquipmentCfg >> "gears" >> "uniform");
_vest = getText (_playerEquipmentCfg >> "gears" >> "vest");
_backpack = getText (_playerEquipmentCfg >> "gears" >> "backpack");

if (!(_uniform isEqualTo "")) then { player forceAddUniform _uniform; _loadout pushBack _uniform; };
if (!(_vest isEqualTo "")) then { player addVest _vest; _loadout pushBack _vest; };
if (!(_backpack isEqualTo "")) then { player addBackpack _backpack; _loadout pushBack _backpack; };

/*
**	Add player weapons and weapon accessories
*/
_weaponItems = getArray(_playerEquipmentCfg >> "weapons" >> "weaponItems");
for "_i" from 0 to (count (_weaponItems) - 1) do
{
	_weaponItem = _weaponItems select _i;
	if (!(_weaponItem isEqualTo "")) then
	{
		player addWeapon _weaponItem;
		_accessoriesItems = getArray (_playerEquipmentCfg >> "weapons" >> "accessoriesItems");
		if (!(_accessoriesItems isEqualTo [[]])) then
		{
			for "_j" from 0 to (count ((_accessoriesItems select _i) - 1)) do
			{
				player addPrimaryWeaponItem ((_accessoriesItems select _i) select _j);
			};
		};
	};
};

/*
**	Add player equipment
*/
/*
_equipments = _playerEquipmentCfg >> "equipments";
_i = 0;
{
	if (!((_loadout select _i) isEqualTo "")) then
	{
		if (!((_items = getArray (_equipments >> _x >> "items")) isEqualTo [[]])) then
		{
			for "_j" from 0 to (count (_items) - 1) do
			{
				nbr = getNumber ((_items select _j) select 1);
				for "_k" from 0 to (nbr - 1) do
				{
					switch (_i) do
					{
						case 0: { player addItemToUniform ((_items select _j) select 0); };
						case 1: { player addItemToVest ((_items select _j) select 0); };
						case 2: { player addItemToBackpack ((_items select _j) select 0); };
					};
				};
			};
		};
	};
	_i = _i + 1;	
} forEach _equipments;
*/