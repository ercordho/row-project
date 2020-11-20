class row_spawn_selection
{
	idd = 42000;
	movingEnable = 0;
	enableSimulation = 1;

	class controlsBackground
	{
		class titleBackground : Row_RscText
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};

		class mainBackground : Row_RscText
		{
			colorBackground[] = {0,0,0,0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.8;
			h = 0.6 - (22 / 250);
		};

		class title : Row_RscTitle
		{
			colorBackground[] = {0,0,0,0};
			idc = -1;
			text = "hint str 'menu de spawn'";
			x = 0.1;
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};

		class spawnPointTitle : Title
		{
			idc = 42001;
			style = 1;
			text = "";
		};

		class mapView : Row_RscMapControl
		{
			idc = 42002;
			x = 0.328;
			y = 0.26;
			w = 0.56;
			h = 0.56 - (22 / 250);
			maxSatelliteAlpha = 0.75;
			alphaFadeStartScale = 1.15;
			alphaFadeEndScale = 1.29;
		};
	};

	class controls
	{
		class spawnPointList : Row_RscListNBox
		{
			idc = 42003;
			text = "";
			sizeEx = 0.041;
			coloumns[] = {0,0,0.9};
			drawSideArrows = 0;
			idcLeft = -1;
			idcRight = -1;
			rowHeight = 0.050;
			x = 0.105;
			y = 0.26;
			w = (8.8 / 40);
			h = (10 / 25);
			onLBSelChanged = "_this call row_client_fnc_SetMapPos";
		};

		class spawnButton : Row_RscButtonMenu
		{
			idc = -1;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "hint str 'spawn'";
	        onButtonClick = "call row_client_fnc_PlayerSpawn";
			x = 0.11;
			y = 0.69;
			w = (8 / 40);
			h = (1 / 25);
		};
	};
};
