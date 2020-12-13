class CfgSurvival
{
	class food
	{
		name = "Faim";
		alertesMsg[] = {
			"Vous commencez à avoir faim.",
			"Vous commencez à vous auto-digérer.",
			"Vous risquez de mourir de faim !"
		};
		startValue = 100;
		timeValue = 75;
		actionValues[] = { 30, 20, 10 };
		killValue = 5;
	};

	class water
	{
		name = "Soif";
		alertesMsg[] = {
			"Vous commencez à avoir soif.",
			"Vous commencez à voir la bouche totalement sèche.",
			"Vous risquez de mourir de soif !"
		};
		startValue = 100;
		timeValue = 85;
		actionValues[] = { 30, 20, 10 };
		killValue = 5;
	};

	class disease
	{
		name = "Santé";
		alertesMsg[] = {
			"Vous commencez à avoir tomber malade.",
			"Vous commencez à avoir beaucoup de fièvre.",
			"Vous risquez de mourir de maladie !"
		};
		startValue = 100;
		timeValue = 90;
		actionValues[] = { 30, 20, 10 };
		killValue = 5;
	};
};
