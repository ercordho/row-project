/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_SetMapPos.sqf                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ercordho <ercordho@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/20 23:40:56 by ercordho          #+#    #+#             */
/*   Updated: 2020/11/20 23:40:57 by ercordho         ###   ########.fr       */
/*                                                                            */
/*   Description :                                                            */
/*   Update the camera position relative to the pre-selected spawn.           */
/* ************************************************************************** */

private
[
	"_ctrl",
	"_selectedIndex"
];
disableSerialization;

_ctrl = findDisplay 42000 displayCtrl 42002;
_selectedIndex = [_this, 1, 0, [1]] call BIS_fnc_param;

if (isNull _ctrl) exitWith {};

_ctrl ctrlMapAnimAdd [1, 0.1, getMarkerPos((spawnPoints select _selectedIndex) select 1)];
ctrlMapAnimCommit _ctrl;
