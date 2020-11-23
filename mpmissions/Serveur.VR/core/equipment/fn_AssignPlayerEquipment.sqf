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
_loadout pushBack _uniform;
_vest = getText (_playerEquipmentCfg >> "gears" >> "vest");
_loadout pushBack _vest;
_backpack = getText (_playerEquipmentCfg >> "gears" >> "backpack");
_loadout pushBack _backpack;

if (!(_uniform isEqualTo "")) then { player forceAddUniform _uniform; };
if (!(_vest isEqualTo "")) then { player addVest _vest; };
if (!(_backpack isEqualTo "")) then { player addBackpack _backpack; };

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
			for "_j" from 0 to (count (_accessoriesItems select _i) - 1) do
			{
				switch (_i) do
				{
					case 0: { player addPrimaryWeaponItem ((_accessoriesItems select _i) select _j); };
					case 1: { player addSecondaryWeaponItem ((_accessoriesItems select _i) select _j); };
					case 2: { player addHandgunItem ((_accessoriesItems select _i) select _j); };
				};
			};
		};
	};
};

/*
**	Add player equipment
*/
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
		_length = count (_equipments);
		for "_j" from 0 to (_length - 1) do
		{
			if (!((_equipments select _j) isEqualTo [])) then
			{
				_item = (_equipments select _j) select 0;
				_amount = (_equipments select _j) select 1;
				switch (_i) do
				{
					case 0: { if (player canAddItemToUniform [_item, _amount]) then { player addItemToUniform _item; };};
					case 1: { if (player canAddItemToVest [_item, _amount]) then { player addItemToVest _item; };};
					case 2: { if (player canAddItemToBackpack [_item, _amount]) then { player addItemToBackpack _item; };};
				};
			};
		};
	};
};
