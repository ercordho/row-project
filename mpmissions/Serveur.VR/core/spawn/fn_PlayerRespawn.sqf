player playMove "AmovPercMstpSnonWnonDnon";

if (!(isNull corpse)) then { deleteVehicle corpse; };

if (!(isNull deathCamera)) then
{
	deathCamera cameraEffect ["TERMINATE", "BACK"];
	camDestroy deathCamera;
};
