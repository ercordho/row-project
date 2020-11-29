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

_newPerk = _this select 0;
if (!(perk isEqualTo _newPerk)) then { perk = _newPerk; };

_playerEquipmentCfg = missionConfigFile >> "CfgPlayerEquipment" >> str (playerSide) >> perk;

[] call row_client_fnc_CleanPlayerEquipment;

_loadout = [_playerEquipmentCfg] call row_client_fnc_AssignPlayerGears;
[_playerEquipmentCfg] call row_client_fnc_AssignPlayerWeapons;
[_playerEquipmentCfg, _loadout] call row_client_fnc_AssignPlayerItems;
