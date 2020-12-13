private
[
	"_cfgSurvival",
	"_naturalNeedsClass",
	"_naturalNeedsTime"
];

_cfgSurvival = missionConfigFile >> "CfgSurvival";
_naturalNeedsClass = [ "food", "water", "disease" ];
_naturalNeedsTime = [];

for "_i" from 0 to (2) do { _naturalNeedsTime pushBack time; };

while { alive player } do
{
	for "_i" from to (count (_naturalNeedsClass) - 1) do
	{
		_timeValue = getNumber (_cfgSurvival >> _naturalNeedsClass >> "timeValue");
		if (time - (_naturalNeedsTime select _i) > _timeValue) then
		{
			_startValue = getNumber (_cfgSurvival >> _naturalNeedsClass >> "startValue");
			_actionValues = getArray (_cfgSurvival >> _naturalNeedsClass >> "actionValues");
			_alertesMsg = getArray (_cfgSurvival >> _naturalNeedsClass >> "alertesMsg");
			_startValue = _startValue - 1;
			switch (_startValue) do
			{
				_killValue = getNumber (_cfgSurvival >> _naturalNeedsClass >> "killValue");
				case (_actionValues select 0) : { hint localize (_alertesMsg select 0); };
				case (_actionValues select 1) : { hint localize (_alertesMsg select 1); };
				case (_actionValues select 2) : { hint localize (_alertesMsg select 2); };
				case (_killValue) :
				{
					exitWith { hint "Vous êtes morts"; player setDamage 1; };
				};
			};
		};
		_naturalNeedsTime select _i = time;
	};
	uiSleep 1;
};
