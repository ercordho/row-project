if (!(isNull deathCamera)) then
{
	deathCamera cameraEffect ["TERMINATE", "BACK"];
	camDestroy deathCamera;
};

if (!(isNull corpse)) then { deleteVehicle corpse; };

player playMove "AmovPercMstpSnonWnonDnon";
