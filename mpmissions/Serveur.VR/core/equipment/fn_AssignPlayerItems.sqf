/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_AssignPlayerItems.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ercordho <ercordho@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/28 19:37:31 by ercordho          #+#    #+#             */
/*   Updated: 2020/11/28 19:37:35 by ercordho         ###   ########.fr       */
/*                                                                            */
/*   Description :                                                            */
/*   Assigns items to the player.                                             */
/* ************************************************************************** */

private
[
	"_playerEquipmentCfg",
	"_loadout"
];

_playerEquipmentCfg = _this select 0;
_loadout = _this select 1;

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