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

_uniform = getText (_playerEquipmentCfg >> "gears" >> "uniform");
_vest = getText (_playerEquipmentCfg >> "gears" >> "vest");
_backpack = getText (_playerEquipmentCfg >> "gears" >> "backpack");
_headGear = getText (_playerEquipmentCfg >> "gears" >> "headGear");
_goggles = getText (_playerEquipmentCfg >> "gears" >> "goggles");

_loadout = [];
_loadout pushBack _uniform;
_loadout pushBack _vest;
_loadout pushBack _backpack;

if (!(_uniform isEqualTo "")) then { player forceAddUniform _uniform; };
if (!(_vest isEqualTo "")) then { player addVest _vest; };
if (!(_backpack isEqualTo "")) then { player addBackpack _backpack; };
if (!(_headGear isEqualTo "")) then { player addHeadgear _headGear; };
if (!(_goggles isEqualTo "")) then { player addGoggles _goggles; };

// tester avec _items = [];
_items = getArray (_playerEquipmentCfg >> "gears" >> "items");
{
	player linkItem _x;
} forEach _items;

_weaponItems = getArray (_playerEquipmentCfg >> "weapons" >> "weaponItems");
if (count (_weaponItems) isEqualTo 3) then
{
	for "_i" from 0 to (2) do
	{
		_weaponItem = _weaponItems select _i;
		if (!(_weaponItem isEqualTo "")) then
		{
			player addWeapon _weaponItem;
			_accessoriesItems = getArray (_playerEquipmentCfg >> "weapons" >> "accessoriesItems");
			if (count (_accessoriesItems) isEqualTo 3)) then
			{
				for "_j" from 0 to (2) do
				{
					_accessoryItem = (_accessoriesItems select _i) select _j;
					if (!(_accessoryItem isEqualTo ""))
					{
						switch (_i) do
						{
							case 0: { player addPrimaryWeaponItem _accessoryItem; };
							case 1: { player addSecondaryWeaponItem _accessoryItem; };
							case 2: { player addHandgunItem _accessoryItem; };
						};
					};
				};
			};
		};
	};
};

for "_i" from 0 to (count (_loadout) - 1) do
{
	if (!((_loadout select _i) isEqualTo "")) then
	{
		_equipments = switch (_i) do
		{
			case 0: { "uniformItems" };
			case 1: { "vestItems" };
			case 2: { "backpackItems" };
		};
		_equipments = getArray (_playerEquipmentCfg >> "equipments" >> _equipments);
		for "_j" from 0 to (count (_equipments) - 1) do
		{
			if (count (_equipments select _j) isEqualTo 2) then
			{
				_item = (_equipments select _j) select 0;
				_amout = (_equipments select _j) select 1;
				if (!(_item isEqualTo "") || _amout > 0) then
				{
					for "_k" from 0 to (_amout - 1) do
					{
						switch (_i) do
						{
							case 0: { if (player canAddItemToUniform [_item, 1]) then { player addItemToUniform _item; };};
							case 1: { if (player canAddItemToVest [_item, 1]) then { player addItemToVest _item; };};
							case 2: { if (player canAddItemToBackpack [_item, 1]) then { player addItemToBackpack _item; };};
						};
					};
				};
			};
		};
	};
};
