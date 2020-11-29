/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_PlayerSpawn.sqf                                 :+:      :+:    :+:   */
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
	"_markerPos",
	"_building",
	"_buildingCfg",
	"_authorizedPos",
	"_spawnPos"
];

_index = lnbCurSelRow ((findDisplay 42000) displayCtrl 42003);
closeDialog 0;

0 cutText ["", "BLACK IN"];

_markerPos = getMarkerPos((spawnPoints select _index) select 1);
_building = nearestObjects [_markerPos, ["House_F"], 50] select 0;
_buildingCfg = missionConfigFile >> "CfgBuildings" >> worldName >> str (playerSide);
_authorizedPos = getArray (_buildingCfg >> typeOf (_building) >> "authorizedPos");
_spawnPos = (_building buildingPos (selectRandom _authorizedPos));
player setPosATL _spawnPos;
player setDir (getDir _building);
