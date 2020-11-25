/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_GetSpawnPoints.sqf                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ercordho <ercordho@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/20 23:10:12 by ercordho          #+#    #+#             */
/*   Updated: 2020/11/20 23:10:21 by ercordho         ###   ########.fr       */
/*                                                                            */
/*   Return Value :                                                           */
/*   Array composed of the data of each spawn.                                */
/*   1) spawn name                                                            */
/*   2) marker name                                                           */
/*   3) icon path                                                             */
/* ************************************************************************** */

private
[
	"_spawnPoints",
	"_spawnCfg"
];
disableSerialization;

_spawnPoints = [];
_spawnCfg = missionConfigFile >> "CfgSpawnPoints" >> worldName >> str (playerSide);

{
	private _tmpCfg = [];

	_tmpCfg pushBack getText (_x >> "displayName");
	_tmpCfg pushBack getText (_x >> "spawnMarker");
	_tmpCfg pushBack getText (_x >> "icon");
	_spawnPoints pushBack _tmpCfg;	
} forEach _spawnCfg;

_spawnPoints;
