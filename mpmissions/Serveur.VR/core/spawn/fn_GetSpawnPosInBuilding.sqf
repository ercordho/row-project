private
[
	"_building",
	"_buildingCfg",
	"_authorizedPos",
	"_length",
	"_buildingsPos"
];
disableSerialization;

_building = _this select 0;
_buildingCfg = missionConfigFile >> "CfgBuildings" >> worldName >> str(playerSide);
_authorizedPos = getArray(_buildingCfg >> _building >> "authorizedPos");
_length = getNumber(_buildingCfg >> _building >> "nbrOfPos");
_buildingsPos = [];

for "_i" from 0 to (_length - 1) do
{
	if (_i in _authorizedPos) then
	{
		_buildingsPos pushBack (buildingPos _i);
	};
};

_buildingsPos;
