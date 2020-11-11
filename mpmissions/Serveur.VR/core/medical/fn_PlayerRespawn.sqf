player playMove "AmovPercMstpSnonWnonDnon";

// Charger l'équipement du joueur pour sa nouvelle vie
switch (playerSide) do
{
	private ["_loadEquipment"];

	case west: {
		;
	};
	case civilian: {
		;
	};
	case independent: {
		;
	};
	waitUntil{ scriptDone _loadEquipment };
};

// Destruction de la caméra
