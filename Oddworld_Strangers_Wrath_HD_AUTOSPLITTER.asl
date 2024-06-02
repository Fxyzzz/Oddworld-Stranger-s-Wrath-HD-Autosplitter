// 19-02-2021 by Fxyz#1329

state ("stranger", "Steam 1.5")

{
	int platform : 0x1DEAFC, 0x4;
	int resetload : 0x2A6968, 0x8;		//Changes only when inside the load menu and the quit menu
	int bounty : 0x1DE930, 0x10;		//Capture count (alive only)
	byte bountynoboss : 0x64C458, 0x844, 0x24;
	int primeguy : 0x1DFA94, 0x90;		//Talking to the guy in the bounty store
	int cutscene : 0x3403C0, 0x18;		//When black stripes appear on screen
	int IGT : 0x10F854, 0x18;
	long IGT2 : 0x34A040, 0x114;		//Always 0 except during cinematics
	int quicksave : 0x341274, 0x138;	//When a quicksave / automatic save is done
	int quickload : 0x24A6A8, 0x24;
	int mchest : 0x1DE930, 0x4;
	int barrel : 0x2FB8FC, 0x104;
	int zone : 0x1CFFC8, 0x18;			//The ID of every chunks in the game
	int resettimer : 0x1E4AB4, 0x14;	//Set to 257 only in the main menu
	float health: 0x65178C, 0x0, 0x78;
	int statusobject: 0x1EE794, 0x18;
	int mpots: 0x64CE68, 0x40, 0x8, 0x1C, 0x9C, 0x8;
	float moolah: 0x65178C, 0x0, 0x204, 0x0C;
	int healthigt: 0x5D2F70, 0x170;
	float xCoordBH : 0x65178C, 0x0, 0x54, 0x1A4, 0x3C;
	float zCoordBH : 0x65178C, 0x0, 0x54, 0x1A4, 0x40;
	float yCoordBH : 0x65178C, 0x0, 0x54, 0x1A4, 0x44;
	float xHeadBH : 0x65178C, 0x0, 0x54, 0x1A4, 0x48;
	float zHeadBH : 0x65178C, 0x0, 0x54, 0x1A4, 0x4C;
	float yHeadBH : 0x65178C, 0x0, 0x54, 0x1A4, 0x50;
	float xVelBH : 0x65178C, 0x0, 0x54, 0x1A4, 0x54;
	float zVelBH : 0x65178C, 0x0, 0x54, 0x1A4, 0x58;
	float yVelBH : 0x65178C, 0x0, 0x54, 0x1A4, 0x5C;
	float xCoordSteef : 0x65178C, 0x0, 0x54, 0x188, 0x3C;
	float zCoordSteef : 0x65178C, 0x0, 0x54, 0x188, 0x40;
	float yCoordSteef : 0x65178C, 0x0, 0x54, 0x188, 0x44;
	float xHeadSteef : 0x65178C, 0x0, 0x54, 0x188, 0x48;
	float zHeadSteef : 0x65178C, 0x0, 0x54, 0x188, 0x4C;
	float yHeadSteef : 0x65178C, 0x0, 0x54, 0x188, 0x50;
	float xVelSteef : 0x65178C, 0x0, 0x54, 0x188, 0x54;
	float zVelSteef : 0x65178C, 0x0, 0x54, 0x188, 0x58;
	float yVelSteef : 0x65178C, 0x0, 0x54, 0x188, 0x5C;
	byte regionID : 0x6525F4;
	byte gameState : 0x63B7DA;
	double regionTimer : 0x3F7B40;
	double regionIGT : 0x5D5540;
}

state ("stranger", "GOG 1.5")

{
	int platform : 0x1E120C, 0x64;
	int resetload : 0x2A5DD8, 0x8;
	int bounty : 0x1DEA10, 0x10;
	int primeguy : 0x1DFB74, 0x90;
	int cutscene : 0x33F690, 0x18;		
	int IGT : 0x10F1E4, 0x18;
	long IGT2 : 0x0349330, 0x114;
	int quicksave : 0x1DFB74, 0x88;
	int quickload : 0x249AA8, 0x24;
	int mchest : 0x1DEA10, 0x4;
	int barrel : 0x2FAA18, 0x104;
	int zone : 0x1D00B8, 0x18;
	int resettimer : 0x1E4C04, 0x14;
	int health: 0x64CBAC, 0x0, 0x78;
	int statusobject: 0x1EE8C4, 0x18;
	int mpots: 0x648288, 0x10, 0x34, 0x0, 0x9C, 0x8;
	float moolah: 0x64CBAC, 0x0, 0x204, 0x0C;
	int healthigt: 0x5CE390, 0x170;
	float xCoordBH : 0x64CBAC, 0x0, 0x54, 0x1A4, 0x3C;
	float zCoordBH : 0x64CBAC, 0x0, 0x54, 0x1A4, 0x40;
	float yCoordBH : 0x64CBAC, 0x0, 0x54, 0x1A4, 0x44;
	float xHeadBH : 0x64CBAC, 0x0, 0x54, 0x1A4, 0x48;
	float zHeadBH : 0x64CBAC, 0x0, 0x54, 0x1A4, 0x4C;
	float yHeadBH : 0x64CBAC, 0x0, 0x54, 0x1A4, 0x50;
	float zVelBH : 0x64CBAC, 0x0, 0x54, 0x1A4, 0x54;
	float xVelBH : 0x64CBAC, 0x0, 0x54, 0x1A4, 0x58;
	float yVelBH : 0x64CBAC, 0x0, 0x54, 0x1A4, 0x5C;
	float xCoordSteef : 0x64CBAC, 0x0, 0x54, 0x188, 0x3C;
	float zCoordSteef : 0x64CBAC, 0x0, 0x54, 0x188, 0x40;
	float yCoordSteef : 0x64CBAC, 0x0, 0x54, 0x188, 0x44;
	float xHeadSteef : 0x64CBAC, 0x0, 0x54, 0x188, 0x48;
	float zHeadSteef : 0x64CBAC, 0x0, 0x54, 0x188, 0x4C;
	float yHeadSteef : 0x64CBAC, 0x0, 0x54, 0x188, 0x50;
	float zVelSteef : 0x64CBAC, 0x0, 0x54, 0x188, 0x54;
	float xVelSteef : 0x64CBAC, 0x0, 0x54, 0x188, 0x58;
	float yVelSteef : 0x64CBAC, 0x0, 0x54, 0x188, 0x5C;
	byte regionID : 0x64DA14;
	byte gameState : 0x636BFA;
	double regionTimer : 0x3F6B40;
	double regionIGT : 0x5D0958;
}


init
{	
	vars.barrel = 0;
	vars.barrelqs = 0;
	vars.mchest = 0;
	vars.mchestqs = 0;
	vars.mpots = 0;
	vars.mpotsqs = 0;
	vars.mchestmem = current.mchest;
	vars.mpotsmem = current.mpots;
	vars.barrelregion = 0;
	vars.mchestregion = 0;
	vars.mpotregion = 0;
	vars.moolah = 0;
	vars.death = 0;
	vars.hit = 0;
	vars.dead = 1;
	vars.healthblock = 1;
	vars.moolahqs = 0;
	vars.counterstore = 0;
	vars.ctutorial = 0;
	vars.cfloyd = 0;
	vars.cfloydbs = 0;
	vars.clooten = 0;
	vars.clootenbs = 0;
	vars.cboilz = 0;
	vars.cboilzbs = 0;
	vars.cgizzardgulchend = 0;
	vars.cjomomma = 0;
	vars.cjomommabs = 0;
	vars.ceugene = 0;
	vars.ceugenebs = 0;
	vars.cmeagly = 0;
	vars.cmeaglybs = 0;
	vars.cpackrat = 0;
	vars.cpackratbs = 0;
	vars.cbuzzartonend = 0;
	vars.cnewyolkcityentrance = 0;
	vars.cmcgeeminecart = 0;
	vars.cmcgee = 0;
	vars.cmcgeebs = 0;
	vars.cfattycabin = 0;
	vars.cfatty = 0;
	vars.cfattybs = 0;
	vars.celboze = 0;
	vars.celbozebs = 0;
	vars.clefty = 0;
	vars.cleftybs = 0;
	vars.csleg = 0;
	vars.cnewyolkcityend = 0;
	vars.ccabin = 0;
	vars.cdusky = 0;
	vars.crng = 0;
	vars.cdocksstart = 0;
	vars.cdockselevator = 0;
	vars.cdocksend = 0;
	vars.cboatstart = 0;
	vars.cboatdam = 0;
	vars.cboatend = 0;
	vars.clastlegsenter = 0;
	vars.clastlegsarmor = 0;
	vars.clastlegsend = 0;
	vars.cboattunelstart = 0;
	vars.cboattunelend = 0;
	vars.cdamstart = 0;
	vars.cdammid = 0;
	vars.cgloktigi = 0;
	vars.cdoor = 0;
	vars.celevator = 0;
	vars.ctimerrushstart = 0;
	vars.ctimerrushend = 0;
	vars.cbossstart = 0;
	vars.csektostart = 0;
	vars.csektoend = 0;


	if(current.platform == 1)
	{
		version = "Steam 1.5";
	}
	
	if(current.platform == 0)
	{
		version = "GOG 1.5";
	}
	
	if(settings["Refresh rate of the autosplitter"])
	{
		if(settings["50Rate"])
		{
			refreshRate = 50;
		}
		if(settings["40Rate"])
		{
			refreshRate = 40;
		}
		if(settings["30Rate"])
		{
			refreshRate = 30;
		}
		if(settings["10Rate"])
		{
			refreshRate = 10;			
		}
	}
	else
	{
		refreshRate = 100;
	}
}


startup
{
	//1st tabs
	
	settings.Add("Splits", true, "Splits");
	settings.Add("Extra", false, "Extra");
	settings.Add("Refresh rate of the autosplitter", true, "Refresh rate of the autosplitter");
	
	//End of 1st tabs
	
	settings.CurrentDefaultParent = "Splits";
	settings.Add("il", false, "Individual Level Runs");
	settings.SetToolTip("il", "Tick this only if you are running individual levels. If doing full game runs, leave this blank");
	settings.Add("GizzardGulchHEADER", true, "Gizzard Gulch");
	settings.Add("BuzzartonHEADER", true, "Buzzarton");
	settings.Add("NewYolkCityHEADER", true, "New Yolk City");
	settings.Add("AmbushGrubbWolvakHEADER", true, "Ambush / Grubb Village / Wolvark Docks");
	settings.Add("BoatHEADER", true, "Boat / Last Legs");
	settings.Add("DamHEADER", true, "Sekto's Dam");
	
	//Gizzard Gulch Splits
	
	settings.CurrentDefaultParent = "GizzardGulchHEADER";
	
	settings.Add("CTutorial", false, "Tutorial");
	settings.SetToolTip("CTutorial", "Split at the end of the tutorial upon talking to the clakker");
	
	settings.Add("CFloyd", false, "Filthy Hands Floyd capture");
	settings.SetToolTip("CFloyd", "Split when capturing Filthy Hands Floyd");
	
	settings.Add("CFloydBS", false, "Filthy Hands Floyd bounty store");
	settings.SetToolTip("CFloydBS", "Split when delivering Filthy Hands Floyd at the bounty store");
	
	settings.Add("CLooten", false, "Looten Duke capture");
	settings.SetToolTip("CLooten", "Split when capturing Looten Duke");
	
	settings.Add("CLootenBS", false, "Looten Duke bounty store");
	settings.SetToolTip("CLootenBS", "Split when delivering Looten Duke at the bounty store");
	
	settings.Add("CBoilz", false, "Boilz Booty capture");
	settings.SetToolTip("CBoilz", "Split when capturing Boilz Booty");
	
	settings.Add("CGizzardGulchEnd", false, "Gizzard Gulch end");
	settings.SetToolTip("CGizzardGulchEnd", "Split when reaching the cutscene with the broken bridge");
	
	
	//Buzzarton Splits
		
	settings.CurrentDefaultParent = "BuzzartonHEADER";
		
	settings.Add("CBoilzBS", false, "Boilz Booty bounty store");
	settings.SetToolTip("CBoilzBS", "Split when delivering Boilz Booty at the bounty store");
	
	settings.Add("CJoMomma", false, "Jo Momma capture");
	settings.SetToolTip("CJoMomma", "Split when capturing Jo Momma");
	
	settings.Add("CJoMommaBS", false, "Jo Momma bounty store");
	settings.SetToolTip("CJoMommaBS", "Split when delivering Jo Momma at the bounty store");
	
	settings.Add("CEugene", false, "Eugene Ius rescue");
	settings.SetToolTip("CEugene", "Split when rescuing Eugene Ius");
	
	settings.Add("CEugeneBS", false, "Eugene Ius bounty store");
	settings.SetToolTip("CEugeneBS", "Split when getting paid for Eugene Ius's bounty at the bounty store");
	
	settings.Add("CMeagly", false, "Meagly McGraw capture");
	settings.SetToolTip("CMeagly", "Split when capturing Meagly McGraw");
	
	settings.Add("CMeaglyBS", false, "Meagly McGraw bounty store");
	settings.SetToolTip("CMeaglyBS", "Split when delivering Meagly McGraw at the bounty store");
	
	settings.Add("CPackrat", false, "Packrat Palooka capture");
	settings.SetToolTip("CPackrat", "Split when capturing Packrat Palooka");
	
	settings.Add("CPackratBS", false, "Packrat Palooka bounty store");
	settings.SetToolTip("CPackratBS", "Split when delivering Packrat Palooka at the bounty store");
	
	settings.Add("CBuzzartonEnd", false, "Buzzarton end");
	settings.SetToolTip("CBuzzartonEnd", "Split when reaching the cutscene before the snipers jungle");
	
	
	//New Yolk City Splits
	
	settings.CurrentDefaultParent = "NewYolkCityHEADER";
	settings.Add("CNewYolkCityEntrance", false, "New Yolk City entrance");
	settings.SetToolTip("CNewYolkCityEntrance", "Split when reaching the entrance of New Jolk City");
		
	settings.Add("CMcGeeMinecart", false, "Xplosives McGee 2nd minecart");
	settings.SetToolTip("CMcGeeMinecart", "Split when opening the door leading to the 2nd minecart");
	
	settings.Add("CMcGee", false, "Xplosives McGee capture");
	settings.SetToolTip("CMcGee", "Split when capturing Xplosives McGee");
	
	settings.Add("CMcGeeBS", false, "Xplosives McGee bounty store");
	settings.SetToolTip("CMcGeeBS", "Split when delivering Xplosives McGee at the bounty store");
	
	settings.Add("CFattyCabin", false, "Fatty McBoomboom sky cart cabine");
	settings.SetToolTip("CFattyCabin", "Split entering the cabin at the end of the sky cart line");
	
	settings.Add("CFatty", false, "Fatty McBoomboom capture");
	settings.SetToolTip("CFatty", "Split when capturing Fatty McBoomboom");
	
	settings.Add("CFattyBS", false, "Fatty McBoomboom bounty store");
	settings.SetToolTip("CFattyBS", "Split when delivering Fatty McBoomboom at the bounty store");
	
	settings.Add("CElboze", false, "Elboze Freely capture");
	settings.SetToolTip("CElboze", "Split when capturing Elboze Freely");
	
	settings.Add("CElbozeBS", false, "Elboze Freely bounty store");
	settings.SetToolTip("CElbozeBS", "Split when delivering Elboze Freely at the bounty store");
	
	settings.Add("CLefty", false, "Lefty Lugnutz capture");
	settings.SetToolTip("CLefty", "Split when capturing Lefty Lugnutz");
	
	settings.Add("CLeftyBS", false, "Lefty Lugnutz bounty store");
	settings.SetToolTip("CLeftyBS", "Split when delivering Lefty Lugnutz at the bounty store");
	
	settings.Add("CSleg", false, "Giant Sleg kill");
	settings.SetToolTip("CSleg", "Split when killing the Giant Sleg for Lugnutz's Bounty");
	
	settings.Add("CNewYolkCityEnd", false, "New Yolk City end");
	settings.SetToolTip("CNewYolkCityEnd", "Split when speaking to the captain of the boat");
	
	
	//Ambush / Grubb Village / Wolvark Docks
	
	settings.CurrentDefaultParent = "AmbushGrubbWolvakHEADER";
	
	settings.Add("CCabin", false, "Cabin fight");
	settings.SetToolTip("CCabin", "Split going through the window upon exiting the cabin");
	
	settings.Add("CDusky", false, "Dusky Hollow");
	settings.SetToolTip("CDusky", "Split when reaching the cutscene after going through Dusky Hollow");
	
	settings.Add("CRNG", false, "Boombat RNG");
	settings.SetToolTip("CRNG", "Split when reaching the cutscene at the exit of the Grubb village");
	
	settings.Add("CDocksStart", false, "Wolvark Dock's entrance");
	settings.SetToolTip("CDocksStart", "Split when reaching the top of the slope leading to the start of the docks");
	
	settings.Add("CDocksElevator", false, "Wolvark Dock's elevator");
	settings.SetToolTip("CDocksElevator", "Split when entering the elevator inside the docks");
	
	settings.Add("CDocksEnd", false, "Wolvark Dock's end");
	settings.SetToolTip("CDocksEnd", "Split when reaching the cutscene with the boken boat");
	
	
	//Boat / Last Legs
	
	settings.CurrentDefaultParent = "BoatHEADER";
	
	settings.Add("CBoatStart", false, "Boat start");
	settings.SetToolTip("CBoatStart", "Split when reaching the cutscene after getting the boat");
	
	settings.Add("CBoatDam", false, "Boat 1st dam");
	settings.SetToolTip("CBoatDam", "Split when reaching the cutscene after the 1st dam");
	
	settings.Add("CBoatEnd", false, "Boat end");
	settings.SetToolTip("CBoatEnd", "Split when reaching the cutscene leading to Last Legs");
	
	settings.Add("CLastLegsEnter", false, "Last Legs entrance");
	settings.SetToolTip("CLastLegsEnter", "Split when entering Last Legs");
	
	settings.Add("CLastLegsArmor", false, "Last Legs armor");
	settings.SetToolTip("CLastLegsArmor", "Split when acquiring the upgraded Armor");
	
	settings.Add("CLastLegsEnd", false, "Last Legs end");
	settings.SetToolTip("CLastLegsEnd", "Split when reaching the cutscene by the end of Last Legs");
	
	settings.Add("CBoatTunnelStart", false, "Boat tunnel entrance");
	settings.SetToolTip("CBoatTunnelStart", "Split when entering the tunnel after leaving Last Legs");
	
	settings.Add("CBoatTunnelEnd", false, "Boat tunnel exit");
	settings.SetToolTip("CBoatTunnelEnd", "Split when reaching the exit of the tunnel");
	
	
	//Sekto's Dam
	
	settings.CurrentDefaultParent = "DamHEADER";
	
	settings.Add("CDamStart", false, "Dam entrance");
	settings.SetToolTip("CDamStart", "Split when entering the dam");
	
	settings.Add("CDamMid", false, "2nd water elevator");
	settings.SetToolTip("CDamMid", "Split when entering the 2nd water elevator");
	
	settings.Add("CGloktigi", false, "1st Gloktigi");
	settings.SetToolTip("CGloktigi", "Split when entering the Gloktigi's elevator");
	
	settings.Add("CDoor", false, "Slow opening door");
	settings.SetToolTip("CDoor", "Split when going through the slow opening door after the room with a lot of ammunition boxes");
	
	settings.Add("CElevator", false, "Final elevator entrance");
	settings.SetToolTip("CElevator", "Split when entering the final elevator before the timed section");
	
	settings.Add("CTimerRushStart", false, "Timer Rush start");
	settings.SetToolTip("CTimerRushStart", "Split when entering the timed section");
	
	settings.Add("CTimerRushEnd", false, "Timer Rush end");
	settings.SetToolTip("CTimerRushEnd", "Split when exiting the timed section");
	
	settings.Add("CBossStart", false, "Gloktigi fight start");
	settings.SetToolTip("CBossStart", "Split when starting the Gloktigi fight");
	
	settings.Add("CSektoStart", false, "Gloktigi death");
	settings.SetToolTip("CSektoStart", "Split when killing the last Gloktigi");
	
	settings.Add("CSektoEnd", true, "Sekto");
	settings.SetToolTip("CSektoEnd", "Split when killing Sekto");
	
	
	//Extra
	
	settings.CurrentDefaultParent = "Extra";
	
	settings.Add("Counters", false, "100% Counters");
	settings.SetToolTip("Counters", "Displays counters in your layout for some of the objectives of the run");
	
	settings.Add("speedometer", false, "Speedometer");
	settings.SetToolTip("speedometer", "Adds a row in you layout to display a speedometer");
	
	settings.Add("speedround", false, "Round to whole number", "speedometer");
	settings.Add("speedometerY", false, "Speedometer (vertical speed)");
	
	settings.SetToolTip("speedometerY", "Adds a row in you layout to display a speedometer for vertical speed");
	settings.Add("speedroundY", false, "Round to whole number", "speedometerY");
	
	settings.Add("Hit Counter", false, "Hit Counter");
	settings.SetToolTip("Hit Counter", "Adds a row in you layout to display how many times you have been hit");
	
	settings.Add("Death Counter", false, "Death Counter");
	settings.SetToolTip("Death Counter", "Adds a row in you layout to display how many times you died");
	
	settings.Add("Moolah Counter", false, "Moolah Counter");
	settings.SetToolTip("Moolah Counter", "Adds a row in you layout to display a live counter of the Moolah you currently have");
	
	
	//Refreshrate of the autosplitter
	
	settings.CurrentDefaultParent = "Refresh rate of the autosplitter";
	settings.SetToolTip("Refresh rate of the autosplitter", "Sets the autosplitter to refresh 100 times per second. Leaving all options unckeched will set refresh rate to 100 by default anyway.");
	
	settings.Add("10Rate", false, "10 refreshes per second");
	settings.SetToolTip("10Rate", "Sets the autosplitter to refresh 10 times per second. Perfect for potato computers. Inaccurate times may happen.");
	
	settings.Add("30Rate", false, "30 refreshes per second");
	settings.SetToolTip("30Rate", "Sets the autosplitter to refresh 30 times per second. Splits might sometimes not happen with low refresh rates");
	
	settings.Add("40Rate", false, "40 refreshes per second");
	settings.SetToolTip("40Rate", "Sets the autosplitter to refresh 40 times per second. Should help getting a bit more accurate times.");
	
	settings.Add("50Rate", false, "50 refreshes per second");
	settings.SetToolTip("50Rate", "Sets the autosplitter to refresh 50 times per second. Should help getting very accurate times.");
	
	settings.Add("100Rate", true, "100 refreshes per second (DEFAULT)");
	settings.SetToolTip("100Rate", "Sets the autosplitter to refresh 100 times per second. Leaving all options unckeched will set refresh rate to 100 by default anyway.");


//The following ~50 lines are heavily inspired on the Ghostrunner asl. I would never have been able to do this without it.
	
	vars.SetTextComponent = (Action<string, string>)((id, text) =>
	{
        var textSettings = timer.Layout.Components.Where(x => x.GetType().Name == "TextComponent").Select(x => x.GetType().GetProperty("Settings").GetValue(x, null));
        var textSetting = textSettings.FirstOrDefault(x => (x.GetType().GetProperty("Text1").GetValue(x, null) as string) == id);
        if (textSetting == null){
            var textComponentAssembly = Assembly.LoadFrom("Components\\LiveSplit.Text.dll");
            var textComponent = Activator.CreateInstance(textComponentAssembly.GetType("LiveSplit.UI.Components.TextComponent"), timer);
            timer.Layout.LayoutComponents.Add(new LiveSplit.UI.Components.LayoutComponent("LiveSplit.Text.dll", textComponent as LiveSplit.UI.Components.IComponent));
            textSetting = textComponent.GetType().GetProperty("Settings", BindingFlags.Instance | BindingFlags.Public).GetValue(textComponent, null);
            textSetting.GetType().GetProperty("Text1").SetValue(textSetting, id);
        }
        if (textSetting != null);
            textSetting.GetType().GetProperty("Text2").SetValue(textSetting, text);
	});
	
	vars.UpdateSpeedometer = (Action<float, float, bool>)((x, z, round) =>
	{
        double hvel = Math.Floor(Math.Sqrt(x*x + z*z)+0.5);
        if(round)
            vars.SetTextComponent("Speed", Math.Floor(hvel/2).ToString("") + " m/s");
        else
            vars.SetTextComponent("Speed", (hvel/2).ToString("0.00") + " m/s");
	});
	
	vars.UpdateSpeedometerY = (Action<float, bool>)((y, round) =>
	{
        double hvelY = Math.Floor(Math.Sqrt(y*y)+0.5);
        if(round)
            vars.SetTextComponent("Vertical Speed", Math.Floor(hvelY/2).ToString("") + " m/s");
        else
            vars.SetTextComponent("Vertical Speed", (hvelY/2).ToString("0.00") + " m/s");
	});
}

update
{
	if(settings["Counters"])
	{
		vars.SetTextComponent("Barrels", (vars.barrel).ToString() + " / " + (vars.barrelregion).ToString());
		vars.SetTextComponent("Chests", (vars.mchest).ToString() + " / " + (vars.mchestregion).ToString());
		vars.SetTextComponent("Pots + Idol", (vars.mpots).ToString() + " / " + (vars.mpotregion).ToString());
	}
	if(settings["speedometer"])
	{
		if(current.xVelBH != 0)
		{
			vars.UpdateSpeedometer(current.xVelBH, current.zVelBH, settings["speedround"]);
		}
		else if(current.zVelBH != 0)
		{
			vars.UpdateSpeedometer(current.xVelBH, current.zVelBH, settings["speedround"]);
		}
		else
		{
		vars.UpdateSpeedometer(current.xVelSteef, current.zVelSteef, settings["speedround"]);
		}
	}
	
	if(settings["speedometerY"])
	{
		if(current.yVelBH != 0)
		{
			vars.UpdateSpeedometerY(current.yVelBH, settings["speedroundY"]);
		}
		else
		{
		vars.UpdateSpeedometerY(current.yVelSteef, settings["speedroundY"]);
		}
	}
	
	
	if(settings["Hit Counter"])
	{
		vars.SetTextComponent("Hits", (vars.hit).ToString());
	}
	
	if(settings["Death Counter"])
	{
		vars.SetTextComponent("Deaths", (vars.death).ToString());
	}
	
	if(settings["Moolah Counter"])
	{
		vars.SetTextComponent("Moolah", (vars.moolah).ToString());
	}
	
	return true;
}

start
{
	vars.barrel = 0;
	vars.barrelqs = 0;
	vars.mchest = 0;
	vars.mchestqs = 0;
	vars.mpots = 0;
	vars.mpotsqs = 0;
	vars.mchestmem = current.mchest;
	vars.mpotsmem = current.mpots;
	vars.barrelregion = 0;
	vars.mchestregion = 0;
	vars.mpotregion = 0;
	vars.moolah = 0;
	vars.death = 0;
	vars.hit = 0;
	vars.dead = 1;
	vars.healthblock = 1;
	vars.moolahqs = 0;
	vars.counterstore = 0;
	vars.ctutorial = 0;
	vars.cfloyd = 0;
	vars.cfloydbs = 0;
	vars.clooten = 0;
	vars.clootenbs = 0;
	vars.cboilz = 0;
	vars.cboilzbs = 0;
	vars.cgizzardgulchend = 0;
	vars.cjomomma = 0;
	vars.cjomommabs = 0;
	vars.ceugene = 0;
	vars.ceugenebs = 0;
	vars.cmeagly = 0;
	vars.cmeaglybs = 0;
	vars.cpackrat = 0;
	vars.cpackratbs = 0;
	vars.cbuzzartonend = 0;
	vars.cnewyolkcityentrance = 0;
	vars.cmcgeeminecart = 0;
	vars.cmcgee = 0;
	vars.cmcgeebs = 0;
	vars.cfattycabin = 0;
	vars.cfatty = 0;
	vars.cfattybs = 0;
	vars.celboze = 0;
	vars.celbozebs = 0;
	vars.clefty = 0;
	vars.cleftybs = 0;
	vars.csleg = 0;
	vars.cnewyolkcityend = 0;
	vars.ccabin = 0;
	vars.cdusky = 0;
	vars.crng = 0;
	vars.cdocksstart = 0;
	vars.cdockselevator = 0;
	vars.cdocksend = 0;
	vars.cboatstart = 0;
	vars.cboatdam = 0;
	vars.cboatend = 0;
	vars.clastlegsenter = 0;
	vars.clastlegsarmor = 0;
	vars.clastlegsend = 0;
	vars.cboattunelstart = 0;
	vars.cboattunelend = 0;
	vars.cdamstart = 0;
	vars.cdammid = 0;
	vars.cgloktigi = 0;
	vars.cdoor = 0;
	vars.celevator = 0;
	vars.ctimerrushstart = 0;
	vars.ctimerrushend = 0;
	vars.cbossstart = 0;
	vars.csektostart = 0;
	vars.csektoend = 0;
	
	if(settings["Splits"])
	{
		if(old.gameState == 30 && current.gameState == 0){
			return true;
		}
	}
	
	if(settings["il"])
	{
		if(current.regionTimer > old.regionTimer && current.gameState == 0 || current.regionIGT > old.regionIGT && current.gameState == 20)
		{
			return true;
		}
	}
}

reset
{
	if(current.resettimer == 257)
	{
		vars.barrel = 0;
		vars.barrelqs = 0;
		vars.mchest = 0;
		vars.mchestqs = 0;
		vars.mpots = 0;
		vars.mpotsqs = 0;
		vars.mchestmem = current.mchest;
		vars.mpotsmem = current.mpots;
		vars.zone = 0;
		vars.barrelregion = 0;
		vars.mchestregion = 0;
		vars.mpotregion = 0;
		vars.moolah = 0;
		vars.death = 0;
		vars.hit = 0;
		vars.dead = 1;
		vars.healthblock = 1;
		vars.moolahqs = 0;
		vars.counterstore = 0;
		vars.ctutorial = 0;
		vars.cfloyd = 0;
		vars.cfloydbs = 0;
		vars.clooten = 0;
		vars.clootenbs = 0;
		vars.cboilz = 0;
		vars.cboilzbs = 0;
		vars.cgizzardgulchend = 0;
		vars.cjomomma = 0;
		vars.cjomommabs = 0;
		vars.ceugene = 0;
		vars.ceugenebs = 0;
		vars.cmeagly = 0;
		vars.cmeaglybs = 0;
		vars.cpackrat = 0;
		vars.cpackratbs = 0;
		vars.cbuzzartonend = 0;
		vars.cnewyolkcityentrance = 0;
		vars.cmcgeeminecart = 0;
		vars.cmcgee = 0;
		vars.cmcgeebs = 0;
		vars.cfattycabin = 0;
		vars.cfatty = 0;
		vars.cfattybs = 0;
		vars.celboze = 0;
		vars.celbozebs = 0;
		vars.clefty = 0;
		vars.cleftybs = 0;
		vars.csleg = 0;
		vars.cnewyolkcityend = 0;
		vars.ccabin = 0;
		vars.cdusky = 0;
		vars.crng = 0;
		vars.cdocksstart = 0;
		vars.cdockselevator = 0;
		vars.cdocksend = 0;
		vars.cboatstart = 0;
		vars.cboatdam = 0;
		vars.cboatend = 0;
		vars.clastlegsenter = 0;
		vars.clastlegsarmor = 0;
		vars.clastlegsend = 0;
		vars.cboattunelstart = 0;
		vars.cboattunelend = 0;
		vars.cdamstart = 0;
		vars.cdammid = 0;
		vars.cgloktigi = 0;
		vars.cdoor = 0;
		vars.celevator = 0;
		vars.ctimerrushstart = 0;
		vars.ctimerrushend = 0;
		vars.cbossstart = 0;
		vars.csektostart = 0;
		vars.csektoend = 0;
		return true;
	}
	else if(settings["il"] && current.resetload > old.resetload && current.primeguy == 0)
	{
		vars.barrel = 0;
		vars.barrelqs = 0;
		vars.mchest = 0;
		vars.mchestqs = 0;
		vars.mpots = 0;
		vars.mpotsqs = 0;
		vars.mchestmem = current.mchest;
		vars.mpotsmem = current.mpots;
		vars.zone = 0;
		vars.barrelregion = 0;
		vars.mchestregion = 0;
		vars.mpotregion = 0;
		vars.moolah = 0;
		vars.death = 0;
		vars.hit = 0;
		vars.dead = 1;
		vars.healthblock = 1;
		vars.moolahqs = 0;
		vars.counterstore = 0;
		vars.ctutorial = 0;
		vars.cfloyd = 0;
		vars.cfloydbs = 0;
		vars.clooten = 0;
		vars.clootenbs = 0;
		vars.cboilz = 0;
		vars.cboilzbs = 0;
		vars.cgizzardgulchend = 0;
		vars.cjomomma = 0;
		vars.cjomommabs = 0;
		vars.ceugene = 0;
		vars.ceugenebs = 0;
		vars.cmeagly = 0;
		vars.cmeaglybs = 0;
		vars.cpackrat = 0;
		vars.cpackratbs = 0;
		vars.cbuzzartonend = 0;
		vars.cnewyolkcityentrance = 0;
		vars.cmcgeeminecart = 0;
		vars.cmcgee = 0;
		vars.cmcgeebs = 0;
		vars.cfattycabin = 0;
		vars.cfatty = 0;
		vars.cfattybs = 0;
		vars.celboze = 0;
		vars.celbozebs = 0;
		vars.clefty = 0;
		vars.cleftybs = 0;
		vars.csleg = 0;
		vars.cnewyolkcityend = 0;
		vars.ccabin = 0;
		vars.cdusky = 0;
		vars.crng = 0;
		vars.cdocksstart = 0;
		vars.cdockselevator = 0;
		vars.cdocksend = 0;
		vars.cboatstart = 0;
		vars.cboatdam = 0;
		vars.cboatend = 0;
		vars.clastlegsenter = 0;
		vars.clastlegsarmor = 0;
		vars.clastlegsend = 0;
		vars.cboattunelstart = 0;
		vars.cboattunelend = 0;
		vars.cdamstart = 0;
		vars.cdammid = 0;
		vars.cgloktigi = 0;
		vars.cdoor = 0;
		vars.celevator = 0;
		vars.ctimerrushstart = 0;
		vars.ctimerrushend = 0;
		vars.cbossstart = 0;
		vars.csektostart = 0;
		vars.csektoend = 0;
		return true;
	}
}


split
{
	if(settings["Refresh rate of the autosplitter"])
	{
		if(settings["50Rate"])
		{
			refreshRate = 50;
		}
		if(settings["40Rate"])
		{
			refreshRate = 40;
		}
		
		if(settings["30Rate"])
		{
			refreshRate = 30;
		}
		
		if(settings["10Rate"])
		{
			refreshRate = 10;			
		}
	} 
	else
	{
		refreshRate = 100;
	}
	
	vars.FrameRate = refreshRate;
	
	
	//Custom autosplits
	
	if(settings["Splits"])
	{
		//Tutorial
		
		if(settings["CTutorial"])
		{
			if(current.xHeadBH <= -702.56 && current.xHeadBH >= -705.76 && current.zHeadBH <= 157.63 && current.zHeadBH >= 143.81 && current.yHeadBH <= 90 && current.yHeadBH >= 50 && vars.ctutorial == 0)
			{
				if(settings["il"])
				{
					vars.ctutorial++;
				}
				else if(current.regionID == 0)
				{
					vars.ctutorial++;
				}
			}
			if(vars.ctutorial == 1 && current.cutscene > old.cutscene)
			{
				vars.ctutorial++;
				return true;
			}
		}


		//Filthy Hands Floyd bounty store
		
		if(settings["CFloyd"] || settings["CFloydBS"])
		{
			if(current.zone == 12 && current.bounty > old.bounty && current.bountynoboss == old.bountynoboss && vars.cfloyd == 0)
			{
				if(settings["il"])
				{
					vars.cfloyd++;
					vars.cfloydbs++;
				}
				else if(current.regionID == 1)
				{
					vars.cfloyd++;
					vars.cfloydbs++;
				}
			}
		}
		if(settings["CFloyd"] && vars.cfloyd == 1 && current.cutscene > old.cutscene)
		{
			vars.cfloyd++;
			return true;
		}
			
		if(settings["CFloydBS"] && vars.cfloydbs == 1 && current.primeguy > old.primeguy)
		{
			vars.cfloydbs++;
			return true;
		}
		
		
		//Looten Duke
		
		if(settings["CLooten"] || settings["CLootenBS"])
		{
			if(current.zone == 13 && current.bounty > old.bounty && current.bountynoboss == old.bountynoboss && vars.clooten == 0)
			{
				if(settings["il"])
				{
					vars.clooten++;
					vars.clootenbs++;
				}
				else if(current.regionID == 1)
				{
					vars.clooten++;
					vars.clootenbs++;
				}
			}
		}
		if(settings["CLooten"] && vars.clooten == 1 && current.cutscene > old.cutscene)
		{
			vars.clooten++;
			return true;
		}
			
		if(settings["CLootenBS"] && vars.clootenbs == 1 && current.primeguy > old.primeguy)
		{
			vars.clootenbs++;
			return true;
		}
		
		
		//Boilz Booty
		
		if(settings["CBoilz"] || settings["CBoilzBS"])
		{
			if(current.zone == 2 && current.bounty > old.bounty && current.bountynoboss == old.bountynoboss && vars.cboilz == 0)
			{
				if(settings["il"])
				{
					vars.cboilz++;
					vars.cboilzbs++;
				}
				else if(current.regionID == 1)
				{
					vars.cboilz++;
					vars.cboilzbs++;
				}
			}
		}
		if(settings["CBoilz"] && vars.cboilz == 1)
		{
			vars.cboilz++;
			return true;
		}
			
		if(settings["CBoilzBS"] && vars.cboilzbs == 1 && current.primeguy > old.primeguy)
		{
			vars.cboilzbs++;
			return true;
		}
		
		
		
		//Gizzard Gulch end
		
		if(settings["CGizzardGulchEnd"])
		{
			if(current.xHeadBH <= 342.02 && current.xHeadBH >= 341.43 && current.zHeadBH <= -5.60 && current.zHeadBH >= -39.92 && current.yHeadBH <= 90 && current.yHeadBH >= 41 && vars.cgizzardgulchend == 0)
			{
				if(settings["il"])
				{
					vars.cgizzardgulchend++;
				}
				else if(current.regionID == 1)
				{
					vars.cgizzardgulchend++;
				}
			}
			if(vars.cgizzardgulchend == 1 && current.cutscene > old.cutscene)
			{
				while(vars.barrelqs < vars.barrel)
				{
					vars.barrelqs++;
				}
				while(vars.mchestqs < vars.mchest)
				{
					vars.mchestqs++;
				}
				while(vars.mpotsqs < vars.mpots)
				{
					vars.mpotsqs++;
				}
				vars.cgizzardgulchend++;
				return true;
			}
		}
		
		
		//Jo Momma
		
		if(settings["CJoMomma"] || settings["CJoMommaBS"])
		{
			if(current.zone == 60 && current.bounty > old.bounty && current.bountynoboss == old.bountynoboss && vars.cjomomma == 0)
			{
				if(settings["il"])
				{
					vars.cjomomma++;
					vars.cjomommabs++;
				}
				else if(current.regionID == 2)
				{
					vars.cjomomma++;
					vars.cjomommabs++;
				}
			}
		}
		if(settings["CJoMomma"] && vars.cjomomma == 1 && current.cutscene > old.cutscene)
		{
			vars.cjomomma++;
			return true;
		}
			
		if(settings["CJoMommaBS"] && vars.cjomommabs == 1 && current.primeguy > old.primeguy)
		{
			vars.cjomommabs++;
			return true;
		}
		
		
		//Eugene Ius
		
		if(settings["CEugene"] || settings["CEugeneBS"])
		{
			if(current.xCoordBH <= -4 && current.xCoordBH >= -5 && current.zCoordBH <= 376 && current.zCoordBH >= 375 && current.yCoordBH <= 23 && current.yCoordBH >= 22 && vars.ceugene == 0)
			{
				if(settings["il"])
				{
					vars.ceugene++;
					vars.ceugenebs++;
				}
				else if(current.regionID == 2)
				{
					vars.ceugene++;
					vars.ceugenebs++;
				}
			}
		}
		if(settings["CEugene"] && vars.ceugene == 1)
		{
			vars.ceugene++;
			return true;
		}
			
		if(settings["CEugeneBS"] && vars.ceugenebs == 1 && current.primeguy > old.primeguy)
		{
			vars.ceugenebs++;
			return true;
		}
		
		
		//Meagly McGraw
		
		if(settings["CMeagly"] || settings["CMeaglyBS"])
		{
			if(current.zone == 2 && current.bounty > old.bounty && current.bountynoboss == old.bountynoboss && vars.cmeagly == 0)
			{
				if(settings["il"])
				{
					vars.cmeagly++;
					vars.cmeaglybs++;
				}
				else if(current.regionID == 2)
				{
					vars.cmeagly++;
					vars.cmeaglybs++;
				}
			}
		}
		if(settings["CMeagly"] && vars.cmeagly == 1 && current.cutscene > old.cutscene)
		{
			vars.cmeagly++;
			return true;
		}
			
		if(settings["CMeaglyBS"] && vars.cmeaglybs == 1 && current.primeguy > old.primeguy)
		{
			vars.cmeaglybs++;
			return true;
		}
		
		
		//Packrat Palooka
		
		if(settings["CPackrat"] || settings["CPackratBS"])
		{
			if(current.zone == 51 && current.bounty > old.bounty && current.bountynoboss == old.bountynoboss && vars.cpackrat == 0)
			{
				if(settings["il"])
				{
					vars.cpackrat++;
					vars.cpackratbs++;
				}
				else if(current.regionID == 2)
				{
					vars.cpackrat++;
					vars.cpackratbs++;
				}
			}
		}
		if(settings["CPackrat"] && vars.cpackrat == 1 && current.cutscene > old.cutscene)
		{
			vars.cpackrat++;
			return true;
		}
			
		if(settings["CPackratBS"] && vars.cpackratbs == 1 && current.primeguy > old.primeguy)
		{
			vars.cpackratbs++;
			return true;
		}
		
		
		//Buzzarton end
		
		if(settings["CBuzzartonEnd"])
		{
			if(current.xHeadBH <= 242.07 && current.xHeadBH >= 234.66 && current.zHeadBH <= 297.41 && current.zHeadBH >= 292.01 && current.yHeadBH <= 50 && current.yHeadBH >= 30 && vars.cbuzzartonend == 0)
			{
				if(settings["il"])
				{
					vars.cbuzzartonend++;
				}
				else if(current.regionID == 2)
				{
					vars.cbuzzartonend++;
				}
			}
			if(vars.cbuzzartonend == 1 && current.cutscene > old.cutscene)
			{
				while(vars.barrelqs < vars.barrel)
				{
					vars.barrelqs++;
				}
				while(vars.mchestqs < vars.mchest)
				{
					vars.mchestqs++;
				}
				while(vars.mpotsqs < vars.mpots)
				{
					vars.mpotsqs++;
				}
				vars.cbuzzartonend++;
				return true;
			}
		}
		
		
		//New Yolk City entrance
		
		if(settings["CNewYolkCityEntrance"])
		{
			if(current.xHeadBH <= -221.09 && current.xHeadBH >= -231.54 && current.zHeadBH <= 435.21 && current.zHeadBH >= 432.56 && current.yHeadBH <= 98 && current.yHeadBH >= 87 && vars.cnewyolkcityentrance == 0)
			{
				if(settings["il"])
				{
					vars.cnewyolkcityentrance++;
				}
				else if(current.regionID == 3)
				{
					vars.cnewyolkcityentrance++;
				}
			}
			if(vars.cnewyolkcityentrance == 1 && current.cutscene > old.cutscene)
			{
				vars.cnewyolkcityentrance++;
				return true;
			}
		}
		
		
		//McGee 2nd minecart
		
		if(settings["CMcGeeMinecart"])
		{
			if(current.xHeadBH <= -668.93 && current.xHeadBH >= -670.05 && current.zHeadBH <= 1321.15 && current.zHeadBH >= 1311.29 && current.yHeadBH <= 71 && current.yHeadBH >= 60 && vars.cmcgeeminecart == 0)
			{
				if(settings["il"])
				{
					vars.cmcgeeminecart++;
				}
				else if(current.regionID == 3)
				{
					vars.cmcgeeminecart++;
				}
			}
			if(vars.cmcgeeminecart == 1 && current.cutscene > old.cutscene)
			{
				vars.cmcgeeminecart++;
				return true;
			}
			
		}
		
		
		//Xplosives McGee
		
		if(settings["CMcGee"] || settings["CMcGeeBS"])
		{
			if(current.zone == 45 && current.bounty > old.bounty && current.bountynoboss == old.bountynoboss && vars.cmcgee == 0)
			{
				if(settings["il"])
				{
					vars.cmcgee++;
					vars.cmcgeebs++;
				}
				else if(current.regionID == 3)
				{
					vars.cmcgee++;
					vars.cmcgeebs++;
				}
			}
		}
		if(settings["CMcGee"] && vars.cmcgee == 1 && current.cutscene > old.cutscene)
		{
			vars.cmcgee++;
			return true;
		}
			
		if(settings["CMcGeeBS"] && vars.cmcgeebs == 1 && current.primeguy > old.primeguy)
		{
			vars.cmcgeebs++;
			return true;
		}
		
		
		//Fatty sky cart
		
		if(settings["CFattyCabin"])
		{
			if(current.xHeadBH <= -352.05 && current.xHeadBH >= -364.47 && current.zHeadBH <= 131 && current.zHeadBH >= 130 && current.yHeadBH <= 103 && current.yHeadBH >= 89 && vars.cfattycabin == 0)
			{
				if(settings["il"])
				{
					vars.cfattycabin++;
				}
				else if(current.regionID == 3)
				{
					vars.cfattycabin++;
				}
			}
			if(vars.cfattycabin == 1)
			{
				vars.cfattycabin++;
				return true;
			}
		}
		
		
		//Fatty McBoomboom
		
		if(settings["CFatty"] || settings["CFattyBS"])
		{
			if(current.zone == 28 && current.bounty > old.bounty && current.bountynoboss == old.bountynoboss && vars.cfatty == 0)
			{
				if(settings["il"])
				{
					vars.cfatty++;
					vars.cfattybs++;
				}
				else if(current.regionID == 3)
				{
					vars.cfatty++;
					vars.cfattybs++;
				}
			}
		}
		if(settings["CFatty"] && vars.cfatty == 1 && current.cutscene > old.cutscene)
		{
			vars.cfatty++;
			return true;
		}
			
		if(settings["CFattyBS"] && vars.cfattybs == 1 && current.primeguy > old.primeguy)
		{
			vars.cfattybs++;
			return true;
		}
		
		
		//Elboze Freely
		
		if(settings["CElboze"] || settings["CElbozeBS"])
		{
			if(current.zone == 54 && current.bounty > old.bounty && vars.celboze == 0 || current.zone == 66 && current.bounty > old.bounty && vars.celboze == 0)
			{
				if(settings["il"])
				{
					vars.celboze++;
					vars.celbozebs++;
				}
				else if(current.regionID == 3)
				{
					vars.celboze++;
					vars.celbozebs++;
				}
			}
		}
		if(settings["CElboze"] && vars.celboze == 1 && current.cutscene > old.cutscene)
		{
			vars.celboze++;
			return true;
		}
			
		if(settings["CElbozeBS"] && vars.celbozebs == 1 && current.primeguy > old.primeguy)
		{
			vars.celbozebs++;
			return true;
		}
		
		
		//Giant Sleg
		
		if(settings["CSleg"])
		{
			if(current.xCoordBH <= -18 && current.xCoordBH >= -19 && current.zCoordBH <= -19 && current.zCoordBH >= -20 && current.yCoordBH <= 50 && current.yCoordBH >= 49 && vars.csleg == 0)
			{
				if(settings["il"])
				{
					vars.csleg++;
				}
				else if(current.regionID == 3)
				{
					vars.csleg++;
				}
			}
			
			if(current.quicksave > old.quicksave && vars.csleg == 1)
			{
				vars.csleg++;
			}
			
			if(current.regionTimer < old.regionTimer && vars.csleg == 1)
			{
				vars.csleg--;
			}
			
			if(vars.csleg == 1 && current.cutscene > old.cutscene || vars.csleg == 2  && current.cutscene > old.cutscene)
			{
				vars.csleg = 3;
				return true;
			}
		}
		
		
		//Lefty Lugnutz
		
		if(settings["CLefty"] || settings["CLeftyBS"])
		{
			if(current.zone == 17 && current.bounty > old.bounty && current.bountynoboss == old.bountynoboss && vars.clefty == 0)
			{
				if(settings["il"])
				{
					vars.clefty++;
					vars.cleftybs++;
				}
				else if(current.regionID == 3)
				{
					vars.clefty++;
					vars.cleftybs++;
				}
			}
		}
		if(settings["CLefty"] && vars.clefty == 1 && current.cutscene > old.cutscene)
		{
			vars.clefty++;
			return true;
		}
			
		if(settings["CLeftyBS"] && vars.cleftybs == 1 && current.primeguy > old.primeguy)
		{
			vars.cleftybs++;
			return true;
		}
		

		//New Yolk City end
		
		if(settings["CNewYolkCityEnd"])
		{
			if(current.xHeadBH <= 549 && current.xHeadBH >= 548 && current.zHeadBH <= 10 && current.zHeadBH >= 9 && current.yHeadBH <= 50 && current.yHeadBH >= 49 && vars.cnewyolkcityend == 0)
			{
				if(settings["il"])
				{
					vars.cnewyolkcityend++;
				}
				else if(current.regionID == 3)
				{
					vars.cnewyolkcityend++;
				}
			}
			if(vars.cnewyolkcityend == 1)
			{
				while(vars.barrelqs < vars.barrel)
				{
					vars.barrelqs++;
				}
				while(vars.mchestqs < vars.mchest)
				{
					vars.mchestqs++;
				}
				while(vars.mpotsqs < vars.mpots)
				{
					vars.mpotsqs++;
				}
				vars.cnewyolkcityend++;
				return true;
			}
		}
		
		
		//Cabin window
		
		if(settings["CCabin"])
		{
			if(current.xHeadSteef <= -90 && current.xHeadSteef >= -95 && current.zHeadSteef <= -309 && current.zHeadSteef >= -310 && current.yHeadSteef <= -100 && current.yHeadSteef >= -124 && vars.ccabin == 0)
			{
				if(settings["il"])
				{
					vars.ccabin++;
				}
				else if(current.regionID == 4)
				{
					vars.ccabin++;
				}
			}
			if(vars.ccabin == 1)
			{
				vars.ccabin++;
				return true;
			}
		}
		
		
		//Dusky Hollow
		
		if(settings["CDusky"])
		{
			if(current.xHeadSteef <= -594 && current.xHeadSteef >= -620 && current.zHeadSteef <= 274 && current.zHeadSteef >= 258 && current.yHeadSteef <= -139 && current.yHeadSteef >= -259 && vars.cdusky == 0)
			{
				if(settings["il"])
				{
					vars.cdusky++;
				}
				else if(current.regionID == 4)
				{
					vars.cdusky++;
				}
			}
			if(vars.cdusky == 1 && current.cutscene > old.cutscene)
			{
				vars.cdusky++;
				return true;
			}
		}
		
		
		//Boombat RNG
		
		if(settings["CRNG"])
		{
			if(current.xHeadSteef <= -89 && current.xHeadSteef >= -93 && current.zHeadSteef <= -673 && current.zHeadSteef >= -717 && current.yHeadSteef <= 80 && current.yHeadSteef >= 50 && vars.crng == 0)
			{
				if(settings["il"])
				{
					vars.crng++;
				}
				else if(current.regionID == 5)
				{
					vars.crng++;
				}
			}
			if(vars.crng == 1 && current.cutscene > old.cutscene)
			{
				vars.crng++;
				return true;
			}
		}
		
		
		//Wolvark Dock's entrance
		
		if(settings["CDocksStart"])
		{
			if(current.xHeadSteef <= 229 && current.xHeadSteef >= 228 && current.zHeadSteef <= -235 && current.zHeadSteef >= -256 && current.yHeadSteef <= 88 && current.yHeadSteef >= 58 && vars.cdocksstart == 0)
			{
				if(settings["il"])
				{
					vars.cdocksstart++;
				}
				else if(current.regionID == 5)
				{
					vars.cdocksstart++;
				}
			}
			if(vars.cdocksstart == 1)
			{
				vars.cdocksstart++;
				return true;
			}
		}
		
		
		//Wolvark Dock's elevator
		
		if(settings["CDocksElevator"])
		{
			if(current.xHeadSteef <= 566 && current.xHeadSteef >= 559 && current.zHeadSteef <= -364 && current.zHeadSteef >= -365 && current.yHeadSteef <= 110 && current.yHeadSteef >= 102 && vars.cdockselevator == 0)
			{
				if(settings["il"])
				{
					vars.cdockselevator++;
				}
				else if(current.regionID == 5)
				{
					vars.cdockselevator++;
				}
			}
			if(vars.cdockselevator == 1)
			{
				vars.cdockselevator++;
				return true;
			}
		}
		
		
		//Wolvark Dock's end
		
		if(settings["CDocksEnd"])
		{
			if(current.xHeadSteef <= 400 && current.xHeadSteef >= 369 && current.zHeadSteef <= -678 && current.zHeadSteef >= -679 && current.yHeadSteef <= 100 && current.yHeadSteef >= 40 && vars.cdocksend == 0 || current.xHeadSteef <= 351 && current.xHeadSteef >= 344 && current.zHeadSteef <= -709 && current.zHeadSteef >= -757 && current.yHeadSteef <= 100 && current.yHeadSteef >= 50 && vars.cdocksend == 0)
			{
				if(settings["il"])
				{
					vars.cdocksend++;
				}
				else if(current.regionID == 5)
				{
					vars.cdocksend++;
				}
			}
			if(vars.cdocksend == 1 && current.cutscene > old.cutscene)
			{
				vars.cdocksend++;
				return true;
			}
		}
		
		
		//Boat start
		
		if(settings["CBoatStart"])
		{
			if(current.xHeadSteef <= 396 && current.xHeadSteef >= 380 && current.zHeadSteef <= -821 && current.zHeadSteef >= -841 && current.yHeadSteef <= 100 && current.yHeadSteef >= 50 && vars.cboatstart == 0)
			{
				if(settings["il"])
				{
					vars.cboatstart++;
				}
				else if(current.regionID == 5)
				{
					vars.cboatstart++;
				}
			}
			if(vars.cboatstart == 1 && current.cutscene > old.cutscene)
			{
				vars.cboatstart++;
				return true;
			}
		}
		
		
		//Boat 1 dam
		
		if(settings["CBoatDam"])
		{
			if(current.xCoordSteef <= 637 && current.xCoordSteef >= 636 && current.zCoordSteef <= -690 && current.zCoordSteef >= -691 && current.yCoordSteef <= -30 && current.yCoordSteef >= -31 && vars.cboatdam == 0)
			{
				if(settings["il"])
				{
					vars.cboatdam++;
				}
				else if(current.regionID == 5)
				{
					vars.cboatdam++;
				}
			}
			if(vars.cboatdam == 1)
			{
				vars.cboatdam++;
				return true;
			}
		}
		
		
		//Boat end
		
		if(settings["CBoatEnd"])
		{
			if(current.xCoordSteef <= 1078 && current.xCoordSteef >= 1043 && current.zCoordSteef <= 29 && current.zCoordSteef >= -16 && current.yCoordSteef <= -10 && current.yCoordSteef >= -40 && vars.cboatend == 0)
			{
				if(settings["il"])
				{
					vars.cboatend++;
				}
				else if(current.regionID == 5)
				{
					vars.cboatend++;
				}
			}
			if(vars.cboatend == 1 && current.cutscene > old.cutscene)
			{
				vars.cboatend++;
				return true;
			}
		}
		
		
		//Last Legs entrance
		
		if(settings["CLastLegsEnter"])
		{
			if(current.xCoordSteef <= -2204 && current.xCoordSteef >= -2216 && current.zCoordSteef <= -1199 && current.zCoordSteef >= -1200 && current.yCoordSteef <= 40 && current.yCoordSteef >= 25 && vars.clastlegsenter == 0)
			{
				if(settings["il"])
				{
					vars.clastlegsenter++;
				}
				else if(current.regionID == 6)
				{
					vars.clastlegsenter++;
				}
			}
			if(vars.clastlegsenter == 1)
			{
				vars.clastlegsenter++;
				return true;
			}
		}
		
		
		//Last Legs armor
		
		if(settings["CLastLegsArmor"])
		{
			if(current.xCoordSteef <= -2112 && current.xCoordSteef >= -2113 && current.zCoordSteef <= -902 && current.zCoordSteef >= -903 && current.yCoordSteef <= 29 && current.yCoordSteef >= 28 && vars.clastlegsarmor == 0)
			{
				if(settings["il"])
				{
					vars.clastlegsarmor++;
				}
				else if(current.regionID == 6)
				{
					vars.clastlegsarmor++;
				}
			}
			if(vars.clastlegsarmor == 1)
			{
				vars.clastlegsarmor++;
				return true;
			}
		}
				
		
		//Last Legs end
		
		if(settings["CLastLegsEnd"])
		{
			if(current.xHeadSteef <= -2091 && current.xHeadSteef >= -2145 && current.zHeadSteef <= -1374 && current.zHeadSteef >= -1386 && current.yHeadSteef <= 50 && current.yHeadSteef >= 20 && vars.clastlegsend == 0 || current.xHeadSteef <= -2104 && current.xHeadSteef >= -2149 && current.zHeadSteef <= -1360 && current.zHeadSteef >= -1372 && current.yHeadSteef <= 50 && current.yHeadSteef >= 20 && vars.clastlegsend == 0)
			{
				if(settings["il"])
				{
					vars.clastlegsend++;
				}
				else if(current.regionID == 6)
				{
					vars.clastlegsend++;
				}
			}
			if(vars.clastlegsend == 1 && current.cutscene > old.cutscene)
			{
				vars.clastlegsend++;
				return true;
			}
		}
		
		
		//Boat tunnel entrance
		
		if(settings["CBoatTunnelStart"])
		{
			if(current.xHeadSteef <= -1232 && current.xHeadSteef >= -1238 && current.zHeadSteef <= -1577 && current.zHeadSteef >= -1597 && current.yHeadSteef <= 60 && current.yHeadSteef >= 10 && vars.cboattunelstart == 0)
			{
				if(settings["il"])
				{
					vars.cboattunelstart++;
				}
				else if(current.regionID == 6)
				{
					vars.cboattunelstart++;
				}
			}
			if(vars.cboattunelstart == 1)
			{
				vars.cboattunelstart++;
				return true;
			}
		}
		
		
		//Boat tunnel exit
		
		if(settings["CBoatTunnelEnd"])
		{
			if(current.xHeadSteef <= -5 && current.xHeadSteef >= -13 && current.zHeadSteef <= -1601 && current.zHeadSteef >= -1613 && current.yHeadSteef <= 60 && current.yHeadSteef >= 10 && vars.cboattunelend == 0)
			{
				if(settings["il"])
				{
					vars.cboattunelend++;
				}
				else if(current.regionID == 6)
				{
					vars.cboattunelend++;
				}
			}
			if(vars.cboattunelend == 1 && current.cutscene > old.cutscene)
			{
				vars.cboattunelend++;
				return true;
			}
		}
		
		
		//Dam entrance
		
		if(settings["CDamStart"])
		{
			if(current.xHeadSteef <= 70 && current.xHeadSteef >= 50 && current.zHeadSteef <= -1180 && current.zHeadSteef >= -1181 && current.yHeadSteef <= 60 && current.yHeadSteef >= 10 && vars.cdamstart == 0)
			{
				if(settings["il"])
				{
					vars.cdamstart++;
				}
				else if(current.regionID == 6)
				{
					vars.cdamstart++;
				}
			}
			if(vars.cdamstart == 1)
			{
				vars.cdamstart++;
				return true;
			}
		}
		
		
		//Dam 2nd water elevator
		
		if(settings["CDamMid"])
		{
			if(current.xHeadSteef <= 70 && current.xHeadSteef >= 50 && current.zHeadSteef <= -708 && current.zHeadSteef >= -709 && current.yHeadSteef <= 60 && current.yHeadSteef >= 10 && vars.cdammid == 0)
			{
				if(settings["il"])
				{
					vars.cdammid++;
				}
				else if(current.regionID == 6)
				{
					vars.cdammid++;
				}
			}
			if(vars.cdammid == 1)
			{
				vars.cdammid++;
				return true;
			}
		}
		
		
		//1st Gloktigi
		
		if(settings["CGloktigi"])
		{
			if(current.xHeadSteef <= 85 && current.xHeadSteef >= 36 && current.zHeadSteef <= -231 && current.zHeadSteef >= -232 && current.yHeadSteef <= 50 && current.yHeadSteef >= 25 && vars.cgloktigi == 0)
			{
				if(settings["il"])
				{
					vars.cgloktigi++;
				}
				else if(current.regionID == 6)
				{
					vars.cgloktigi++;
				}
			}
			if(vars.cgloktigi == 1 && current.cutscene > old.cutscene)
			{
				vars.cgloktigi++;
				return true;
			}
		}
		
		
		//Slow opening door
		
		if(settings["CDoor"])
		{
			if(current.xHeadSteef <= 165 && current.xHeadSteef >= 138 && current.zHeadSteef <= 1250 && current.zHeadSteef >= 1243 && current.yHeadSteef <= 40 && current.yHeadSteef >= 20 && vars.cdoor == 0)
			{
				if(settings["il"])
				{
					vars.cdoor++;
				}
				else if(current.regionID == 7)
				{
					vars.cdoor++;
				}
			}
			if(vars.cdoor == 1)
			{
				vars.cdoor++;
				return true;
			}
		}
		
		
		//Final elevator
		
		if(settings["CElevator"])
		{
			if(current.xHeadSteef <= -322 && current.xHeadSteef >= -327 && current.zHeadSteef <= 1523 && current.zHeadSteef >= 1517 && current.yHeadSteef <= 110 && current.yHeadSteef >= 70 && vars.celevator == 0)
			{
				if(settings["il"])
				{
					vars.celevator++;
				}
				else if(current.regionID == 7)
				{
					vars.celevator++;
				}
			}
			if(vars.celevator == 1)
			{
				vars.celevator++;
				return true;
			}
		}
		
		
		//Timer Rush start
		
		if(settings["CTimerRushStart"])
		{
			if(current.xHeadSteef <= -277 && current.xHeadSteef >= -297 && current.zHeadSteef <= 1419 && current.zHeadSteef >= 1397 && current.yHeadSteef <= 320 && current.yHeadSteef >= 290 && vars.ctimerrushstart == 0)
			{
				if(settings["il"])
				{
					vars.ctimerrushstart++;
				}
				else if(current.regionID == 7)
				{
					vars.ctimerrushstart++;
				}
			}
			if(vars.ctimerrushstart == 1 && current.cutscene > old.cutscene)
			{
				vars.ctimerrushstart++;
				return true;
			}
		}
		
		
		//Timer Rush end
		
		if(settings["CTimerRushEnd"])
		{
			if(current.xCoordSteef <= -150 && current.xCoordSteef >= -188 && current.zCoordSteef <= 1250 && current.zCoordSteef >= 1236 && current.yCoordSteef <= 400 && current.yCoordSteef >= 338 && vars.ctimerrushend == 0 || current.xCoordSteef <= -137 && current.xCoordSteef >= -150 && current.zCoordSteef <= 1250 && current.zCoordSteef >= 1213 && current.yCoordSteef <= 400 && current.yCoordSteef >= 338 && vars.ctimerrushend == 0)
			{
				if(settings["il"])
				{
					vars.ctimerrushend++;
				}
				else if(current.regionID == 7)
				{
					vars.ctimerrushend++;
				}
			}
			if(vars.ctimerrushend == 1 && current.cutscene > old.cutscene)
			{
				vars.ctimerrushend++;
				return true;
			}
		}
		
		
		//Final boss fight
		
		if(settings["CBossStart"] || settings["CSektoStart"] || settings["CSektoEnd"])
		{
			if(current.xHeadSteef <= -435 && current.xHeadSteef >= -450 && current.zHeadSteef <= 961 && current.zHeadSteef >= 949 && current.yHeadSteef <= 400 && current.yHeadSteef >= 350 && vars.cbossstart == 0)
			{
				if(settings["il"])
				{
					vars.cbossstart++;
				}
				else if(current.regionID == 7)
				{
					vars.cbossstart++;
				}
			}
		}
		if(vars.cbossstart == 1 && current.cutscene > old.cutscene)
		{
			if(settings["CBossStart"])
			{
				vars.cbossstart++;
				return true;
			}
			else
			{
				vars.cbossstart++;
			}
		}
		if(current.cutscene < old.cutscene && vars.cbossstart == 2 && vars.csektostart == 0)
		{
			vars.csektostart++;
		}
		if(vars.csektostart == 1 && current.cutscene > old.cutscene)
		{
			if(settings["CSektoStart"])
			{
				vars.csektostart++;
				return true;
			}
			else
			{
				vars.csektostart++;
			}
		}
		if(current.cutscene < old.cutscene && vars.csektostart == 2 && vars.csektoend == 0)
		{
			vars.csektoend++;
		}
		if(vars.csektoend == 1 && current.cutscene > old.cutscene)
		{
			if(settings["CSektoEnd"])
			{
				vars.csektoend++;
				return true;
			}
		}
	}
	
	if(settings["Extra"])
	{
	
		//100% COUNTERS
		
		if(settings["Counters"])
		{
		
			//Total region
			
			if(current.regionID == 0)
			{
				vars.barrelregion = 0;
				vars.mchestregion = 0;
				vars.mpotregion = 0;
			}
			if(current.regionID == 1)
			{
				vars.barrelregion = 2;
				vars.mchestregion = 14;
				vars.mpotregion = 0;
			}
			if(current.regionID == 2)
			{
				vars.barrelregion = 4;
				vars.mchestregion = 39;
				vars.mpotregion = 13;
			}
			if(current.regionID == 3)
			{
				vars.barrelregion = 6;
				vars.mchestregion = 69;
				vars.mpotregion = 19;
			}
			if(current.regionID == 5)
			{
				vars.barrelregion = 8;
				vars.mchestregion = 69;
				vars.mpotregion = 19;
			}
			if(current.regionID == 6)
			{
				vars.barrelregion = 9;
				vars.mchestregion = 69;
				vars.mpotregion = 19;
			}
			if(current.regionID == 7)
			{
				vars.barrelregion = 10;
				vars.mchestregion = 69;
				vars.mpotregion = 19;
			}
			

			//Region change counter save
			
			
			//Gizzard Gulch end
			
			if(current.xHeadBH <= 342.02 && current.xHeadBH >= 341.43 && current.zHeadBH <= -5.60 && current.zHeadBH >= -39.92 && current.yHeadBH <= 90 && current.yHeadBH >= 41 && current.regionID == 1)
			{
				vars.counterstore = 1;
			}

			//Buzzarton end
			
			if(current.xHeadBH <= 242.07 && current.xHeadBH >= 234.66 && current.zHeadBH <= 297.41 && current.zHeadBH >= 292.01 && current.yHeadBH <= 50 && current.yHeadBH >= 30 && current.regionID == 2)
			{
				vars.counterstore = 1;
			}
			
			//New Yolk City end
			
			if(current.xHeadBH <= 549 && current.xHeadBH >= 548 && current.zHeadBH <= 10 && current.zHeadBH >= 9 && current.yHeadBH <= 50 && current.yHeadBH >= 49 && current.regionID == 3)
			{
				vars.counterstore = 1;
			}
		
		
			if(current.regionID > old.regionID)
			{
				vars.counterstore = 0;
			}
			
			
			//Quick save counters qs update
			
			if(current.quicksave > old.quicksave || vars.counterstore == 1 && current.cutscene > old.cutscene)
			{
				while(vars.barrelqs < vars.barrel)
				{
					vars.barrelqs++;
				}
				while(vars.mchestqs < vars.mchest)
				{
					vars.mchestqs++;
				}
				while(vars.mpotsqs < vars.mpots)
				{
					vars.mpotsqs++;
				}
			}
			
			//Quick load counters descrease
			
			if(current.quickload == 0)
			{
				while(vars.barrel > vars.barrelqs)
				{
					vars.barrel--;
				}
				while(vars.mchest > vars.mchestqs)
				{
					vars.mchest--;
				}
				while(vars.mpots > vars.mpotsqs)
				{
					vars.mpots--;
				}
			}
			
		
			//Barrels
			
			if(current.barrel > old.barrel && current.statusobject != old.statusobject)
			{
				vars.barrel++;
			}
			
			//Moolah Chests
			
			if(current.mchest > old.mchest)
			{
				vars.mchest++;
				vars.mchestmem++;
			}
			while(vars.mchestmem < current.mchest)
			{
				vars.mchest++;
				vars.mchestmem++;
			}

			//Moolah Pots + Idol
			
			if(current.mpots != old.mpots)
			{
				vars.mpots++;
				vars.mpotsmem++;
			}
			if(vars.mpotsmem == 8)
			{
				vars.mpotsmem = 0;
			}
			while(vars.mpotsmem != current.mpots && vars.mpotsmem < 8)
			{
				vars.mpots++;
				vars.mpotsmem++;
			}
		}
		
		
		//Death counter
		
		if(settings["Death Counter"]){
		
			if(current.IGT > 0 && current.IGT2 == 0 && current.healthigt > 0)
			{
				vars.dead = 1;
			}
			
			if(current.health == 0 && vars.dead == 0)
			{
				vars.death++;
				vars.dead++;
			}
			if(current.health > 0 && current.IGT > 0 && current.IGT2 == 0)
			{
				vars.dead = 0;
			}
		}
		
		
		//Hit counter
		
		if(settings["Hit Counter"])
		{
		
			if(current.IGT > 0 && current.IGT2 == 0 && current.healthigt > 0)
			{
				vars.healthblock = 1;
			}
		
			if(current.health < old.health && vars.healthblock == 0 | current.health == 0 && vars.healthblock == 0)
			{
				vars.hit++;
			}
			
			if(current.health > 0 && current.IGT > 0 && current.IGT2 == 0)
			{
				vars.healthblock = 0;
			}
		}
		
		
		//Moolah counter
		
		if(settings["Moolah Counter"])
		{
			if(current.cutscene > old.cutscene)
			{
				while(vars.moolahqs < vars.moolah)
				{
					vars.moolahqs++;
				}
			}
			while(vars.moolah > current.moolah && current.moolah > 0)
			{
				vars.moolah--;
				vars.moolahqs--;
			}
			
			while(vars.moolah < current.moolah && current.moolah > 0)
			{
				vars.moolah++;
			}

			if(current.quicksave > old.quicksave)
			{
				while(vars.moolahqs < vars.moolah)
				{
					vars.moolahqs++;
				}
			}
			
			if(current.quickload == 0)
			{
				while(vars.moolah > vars.moolahqs)
				{
					vars.moolah--;
				}
			}
		}
	}
}


isLoading

{
	if(current.IGT > 0 && current.IGT2 == 0 && current.healthigt > 0)
	{
		return true;
	}
	else if(current.IGT > 0 && current.IGT2 == 0 && current.quickload == 1)
	{
		return true;
	} 
	else 
	{
		return false;
	}
}
