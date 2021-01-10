/*
	Penser à appeler la fonction avec spawn et non call sinon le sleep marche pas mdr
*/

private
[
	"_cfgSurvival",
	"_naturalNeedsClass",
	"_naturalNeedsTime"
];

_cfgSurvival = missionConfigFile >> "CfgSurvival";
_naturalNeedsClass = [ "food", "water", "disease" ];
_naturalNeedsTime = [time, time, time];

while { alive player } do
{
	for "_i" from 0 to (count (_naturalNeedsClass) - 1) do
	{
		_timeValue = getNumber (_cfgSurvival >> (_naturalNeedsClass select _i) >> "timeValue");
		if (time - (_naturalNeedsTime select _i) > _timeValue) then
		{
			_actionValues = getArray (_cfgSurvival >> (_naturalNeedsClass select _i) >> "actionValues");
			_alertesMsg = getArray (_cfgSurvival >> (_naturalNeedsClass select _i) >> "alertesMsg");
			naturalNeeds set [_i, (naturalNeeds select _i) - 1];
			switch (naturalNeeds select _i) do
			{
				_killValue = getNumber (_cfgSurvival >> (_naturalNeedsClass select _i) >> "killValue");
				case (_actionValues select 0) : { hint localize (_alertesMsg select 0); };
				case (_actionValues select 1) : { hint localize (_alertesMsg select 1); };
				case (_actionValues select 2) : { hint localize (_alertesMsg select 2); };
				case (_killValue) : { hint "Vous êtes morts"; player setDamage 1; };
			};
			_naturalNeedsTime set [_i, time];
		};
	};
	uiSleep 1;
};
