private
[
	"_spawnPoints",
	"_spawnCfg"
];
disableSerialization;

_spawnPoints = [];
_spawnCfg = missionConfigFile >> "CfgSpawnPoints" >> worldName >> str(playerSide);

for "_i" from 0 to (count (_spawnCfg) - 1) do
{
	private _tmpCfg = [];

	_tmpCfg pushBack getText ((_spawnCfg select _i) >> "displayName");
	_tmpCfg pushBack getText ((_spawnCfg select _i) >> "spawnMarker");
	_tmpCfg pushBack getText ((_spawnCfg select _i) >> "icon");
	_spawnPoints pushBack _tmpCfg;
};

_spawnPoints;
