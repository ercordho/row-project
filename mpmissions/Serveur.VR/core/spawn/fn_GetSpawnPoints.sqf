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

for "_i" from 0 to (count (_spawnCfg) - 1) do
{
	private _tmpCfg = [];
	private _condition = _spawnCfg >> getText ((_spawnCfg select _i) >> "condition");

	if ([_condition] call row_client_levelCheck) then
	{
		_tmpCfg pushBack getText ((_spawnCfg select _i) >> "displayName");
		_tmpCfg pushBack getText ((_spawnCfg select _i) >> "spawnMarker");
		_tmpCfg pushBack getText ((_spawnCfg select _i) >> "icon");
		_spawnPoints pushBack _tmpCfg;
	};
};

_spawnPoints;
