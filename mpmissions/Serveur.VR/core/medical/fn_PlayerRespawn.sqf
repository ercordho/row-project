player playMove "AmovPercMstpSnonWnonDnon";

// Charger l'équipement du joueur pour sa nouvelle vie
switch (playerSide) do
{
	private
	[
		"_loadEquipment"
	];

	case civilian:
	{
		;
	};
	case west:
	{
		;
	};
	case east:
	{
		;
	};
	case independent:
	{
		;
	};
	waitUntil { scriptDone _loadEquipment };
};

// Destruction de la caméra
