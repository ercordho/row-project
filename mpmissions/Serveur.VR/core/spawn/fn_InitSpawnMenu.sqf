/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_InitSpawnMenu.sqf                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ercordho <ercordho@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/20 23:26:33 by ercordho          #+#    #+#             */
/*   Updated: 2020/11/20 23:26:33 by ercordho         ###   ########.fr       */
/*                                                                            */
/*   Description :                                                            */
/*   Initialize the spawn menu.                                               */
/* ************************************************************************** */

private
[
	"_display",
	"_ctrl"
];
disableSerialization;

0 cutText ["", "BLACK FADED", 99999999];

[] call row_client_fnc_AssignPlayerEquipment;
[] call row_client_fnc_PlayerRespawn;

if (dialog) then { closeDialog 0; };

waitUntil {!(isNull findDisplay 46)};
createDialog "row_spawn_selection";
_display = findDisplay 42000;
_display displaySetEventHandler ["keyDown", "_this call row_client_fnc_DisplayHandler"];
_ctrl = (_display displayCtrl 42003);

{
	_ctrl lnbAddRow [(spawnPoints select _forEachIndex) select 0, (spawnPoints select _forEachIndex) select 0];
	_ctrl lnbSetData [[_forEachIndex, 0], (spawnPoints select _forEachIndex) select 1];
	_ctrl lnbSetPicture [[_forEachIndex, 0], (spawnPoints select _forEachIndex) select 2];
} forEach spawnPoints;

[(_display displayCtrl 42002), 0] call row_client_fnc_SetMapPos;
_ctrl lnbSetCurSelRow 0;
