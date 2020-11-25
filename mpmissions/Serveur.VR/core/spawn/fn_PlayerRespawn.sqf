if (!(objNull deathCamera)) then
{
	deathCamera cameraEffect ["TERMINATE","BACK"];
	camDestroy deathCamera;
};

if (!isNull bodyLists) then { deleteVehicle bodyLists; };
player playMove "AmovPercMstpSnonWnonDnon";
