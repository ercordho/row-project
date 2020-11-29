/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_AssignPlayerWeapons.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ercordho <ercordho@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/28 19:37:46 by ercordho          #+#    #+#             */
/*   Updated: 2020/11/28 19:37:47 by ercordho         ###   ########.fr       */
/*                                                                            */
/*   Description :                                                            */
/*   Assigns weapons and weapon accessories to the player.                    */
/* ************************************************************************** */

private [ "_playerEquipmentCfg" ];

_playerEquipmentCfg = _this select 0;
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
			if (count (_accessoriesItems) isEqualTo 3) then
			{
				for "_j" from 0 to (count (_accessoriesItems select _i) - 1) do
				{
					_accessoriesItem = (_accessoriesItems select _i) select _j;
					if (!(_accessoriesItem isEqualTo "")) then
					{
						switch (_i) do
						{
							case 0: { player addPrimaryWeaponItem _accessoriesItem; };
							case 1: { player addSecondaryWeaponItem _accessoriesItem; };
							case 2: { player addHandgunItem _accessoriesItem; };
						};
					};
				};
			};
		};
	};
};
