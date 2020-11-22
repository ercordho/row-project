/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fn_CleanPlayerEquipment.sqf                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ercordho <ercordho@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/22 19:13:51 by ercordho          #+#    #+#             */
/*   Updated: 2020/11/22 19:13:51 by ercordho         ###   ########.fr       */
/*                                                                            */
/*   Description :                                                            */
/*   Cleans all player equipment.                                             */
/* ************************************************************************** */

removeAllWeapons player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;
removeAllAssignedItems player;
