/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_AssignPlayerGears.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ercordho <ercordho@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/28 19:37:20 by ercordho          #+#    #+#             */
/*   Updated: 2020/11/28 19:37:21 by ercordho         ###   ########.fr       */
/*                                                                            */
/*   Description :                                                            */
/*   Assigns gears to the player.                                             */
/* ************************************************************************** */

private [
	"_playerEquipmentCfg",
	"_loadout"
];

_playerEquipmentCfg = _this select 0;
_loadout = [];

_uniform = getText (_playerEquipmentCfg >> "gears" >> "uniform");
_vest = getText (_playerEquipmentCfg >> "gears" >> "vest");
_backpack = getText (_playerEquipmentCfg >> "gears" >> "backpack");
_headGear = getText (_playerEquipmentCfg >> "gears" >> "headGear");
_goggles = getText (_playerEquipmentCfg >> "gears" >> "goggles");

if (!(_uniform isEqualTo "")) then { player forceAddUniform _uniform; };
if (!(_vest isEqualTo "")) then { player addVest _vest; };
if (!(_backpack isEqualTo "")) then { player addBackpack _backpack; };
if (!(_headGear isEqualTo "")) then { player addHeadgear _headGear; };
if (!(_goggles isEqualTo "")) then { player addGoggles _goggles; };

_items = getArray (_playerEquipmentCfg >> "gears" >> "items");
{ player linkItem _x; } forEach _items;

_loadout pushBack _uniform;
_loadout pushBack _vest;
_loadout pushBack _backpack;

_loadout;