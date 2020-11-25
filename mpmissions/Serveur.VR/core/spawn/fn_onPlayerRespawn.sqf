/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_onPlayerRespawn.sqf                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ercordho <ercordho@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/20 23:30:33 by ercordho          #+#    #+#             */
/*   Updated: 2020/11/20 23:30:34 by ercordho         ###   ########.fr       */
/*                                                                            */
/*   Description :                                                            */
/*   Move the player to the spawn building and rotate it.                     */
/* ************************************************************************** */

private
[
	"_index",
	"_building",
	"_spawnPos",
	"_loadEquipment"
];
disableSerialization;

_index = lnbCurSelRow ((findDisplay 42000) displayCtrl 42003);
closeDialog 0;

_building = nearestObjects [getMarkerPos((spawnPoints select _index) select 1), ["House_F"], 50] select 0;
_spawnPos = [_building] call row_client_fnc_GetSpawnPosInBuilding;
player setPosATL _spawnPos;
player setDir (getDir _building);
