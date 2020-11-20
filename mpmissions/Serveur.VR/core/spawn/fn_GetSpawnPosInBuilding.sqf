private
[
	"_buildingCfg",
	"_authorizedPos",
	"_index"
];
disableSerialization;

_buildingCfg = missionConfigFile >> "CfgBuildings" >> worldName >> str(playerSide);
_authorizedPos = getArray(_buildingCfg >> typeOf (_this select 0) >> "authorizedPos");
_index = selectRandom _authorizedPos;
(_this select 0) buildingPos _index;
