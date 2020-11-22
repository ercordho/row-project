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
_gears = _playerEquipmentCfg >> "gears";
if (!((_uniform = getText (_gears >> "uniform")) isEqualTo "")) then { player forceAddUniform _uniform; _loadout pushBack _uniform; };
if (!((_vest = getText (_gears >> "vest")) isEqualTo "")) then { player addVest _vest; _loadout pushBack _vest; };
if (!((_backpack = getText (_gears >> "backpack")) isEqualTo "")) then { player addBackpack _backpack; _loadout pushBack _backpack; };

/*
**	Add player weapons and weapon accessories
*/
_weapons = _playerEquipmentCfg >> "weapons";
{
	if (!((_weapon = getText (_weapons >> _x)) isEqualTo "")) then
	{
		player addWeapon _weapon;
		_weaponItemsCfg = _playerEquipmentCfg >> "weaponItems";
		{
			if (!((_weaponItems = getArray (_weaponItemsCfg >> _x)) isEqualTo [])) then
			{
				for "_i" from 0 to (count (_weaponItems) - 1) do
				{
					player addPrimaryWeaponItem (_weaponItems select _i);
				};
			};
		} forEach _weaponItemsCfg;
	};
} forEach _weapons;

/*
**	Add player equipment
*/
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
