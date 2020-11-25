/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_GetSpawnPosInBuilding.sqf                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ercordho <ercordho@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/20 23:18:44 by ercordho          #+#    #+#             */
/*   Updated: 2020/11/20 23:18:46 by ercordho         ###   ########.fr       */
/*                                                                            */
/*   Return Value :                                                           */
/*   Vector3 corresponding to the player's spawn                              */
/*   location in the nearest building.                                        */
/* ************************************************************************** */

private
[
	"_buildingCfg",
	"_authorizedPos",
	"_index"
];
disableSerialization;

_buildingCfg = missionConfigFile >> "CfgBuildings" >> worldName >> str (playerSide);
_authorizedPos = getArray (_buildingCfg >> typeOf (_this select 0) >> "authorizedPos");
_index = selectRandom _authorizedPos;
(_this select 0) buildingPos _index;
