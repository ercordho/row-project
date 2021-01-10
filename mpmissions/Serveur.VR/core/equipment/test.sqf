_uniformContent = [];
_vestContent = [];
_backpackContent = [];
_others = [];
_storage = [_uniformContent, _vestContent, _backpackContent, _others];

_magazinesAmmoFull = magazinesAmmoFull player;

for "_i" from 0 to (count (_magazinesAmmoFull) - 1) do
{
	_item = (_magazinesAmmoFull select _i);
	_index = switch (_item select 4) do
	{
		case "Uniform": { 0 };
		case "Vest": { 1 };
		case "Backpack": { 2 };
		default { 3 };
	};
	(_storage select _index) pushBack _item;
};

_storageCpy = [];
for "_j" from 0 to (count (_storage) - 1) do
{
	_tmp = [];
	for "_k" from 0 to (count ((_storage select _j) - 1) do
	{
		_cfg = [];
		_cfg pushBack ((_storage select _j) select 0);
	};
	_tmp pushBack _cfg;
	_storageCpy pushBack _tmp;
};
