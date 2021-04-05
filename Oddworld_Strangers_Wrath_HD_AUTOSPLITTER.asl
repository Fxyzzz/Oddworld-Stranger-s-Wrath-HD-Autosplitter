// 19-02-2021 by Fxyz#1329

state ("stranger", "3.0 Steam 05-04-2021 Fxyz")

{
	int diffmenu : 0x1DEAFC, 0x4;
	int resetload : 0x2A6968, 0x8;		//Changes only when inside the load menu and the quit menu
	int godvalue : 0x1C8B60, 0x14;
	int nerfshop : 0x34092C, 0x98;
	int river : 0x34BA44, 0x18;
	int bounty : 0x1DE930, 0x10;		//Capture count (alive only)
	int primeguy : 0x1DFA94, 0x90;		//Talking to the guy in the bounty store
	int cutscene : 0x3403C0, 0x18;		//When black stripes appear on screen
	int IGT : 0x10F854, 0x18;
	int IGT2 : 0x228330, 0x18;
	long IGT3 : 0x34A040, 0x114;
	int end : 0x3388C4, 0x68;
	int quicksave : 0x341274, 0x138;		//When a quicksave / automatic save is done
	short quickload : 0x192D18, 0x18;
	int moolah : 0x1DE930, 0x4;
	int crystal : 0x1DE930, 0x8;
	int barrel : 0x2FB8FC, 0x104;
	int zone : 0x1CFFC8, 0x18;			//The ID of every chunks in the game
	int resettimer : 0x1E4AB4, 0x14;	//Set to 257 only in the main menu
	int ilstart: 0x20C44C, 0x20;
}

state ("stranger", "3.0 GOG 05-04-2021 Fxyz")

{
	int diffmenu : 0x1E120C, 0x64;
	int resetload : 0x2A5DD8, 0x8;
	int godvalue : 0x1C8AF0, 0x14;
	int nerfshop : 0x33FBFC, 0x98;
	int river : 0x34AD24, 0x18;
	int bounty : 0x1DEA10, 0x10;
	int primeguy : 0x1DFB74, 0x90;
	int cutscene : 0x33F690, 0x18;		
	int IGT : 0x10F1E4, 0x18;
	int IGT2 : 0x227560, 0x18;
	long IGT3 : 0x0349330, 0x114;
	int end : 0x337B84, 0x68;
	int quicksave : 0x1DFB74, 0x88;
	short quickload : 0x6462BC, 0x718;
	int moolah : 0x1DEA10, 0x4;
	int crystal : 0x1DEA10, 0x8;
	int barrel : 0x2FAA18, 0x104;
	int zone : 0x1D00B8, 0x18;
	int resettimer : 0x1E4C04, 0x14;
	int ilstart: 0x020B7EC, 0x20;
}


init
{	
	vars.split = 0;
	vars.capture = 0;
	vars.rendu = 0;
	vars.tuto = 0;
	vars.end = 0;
	
	if(settings["Platform"]){
		
		if(settings["Steam"]){
			version = "3.0 Steam 05-04-2021 Fxyz";
		}
		
		if(settings["GOG"]){
			version = "3.0 GOG 05-04-2021 Fxyz";
		}
	}	
	
	if(settings["Refresh rate of the autosplitter"]){
	
		if(settings["100Rate"]){
			refreshRate = 100;
		}
		
		if(settings["50Rate"]){
			refreshRate = 50;
			
		}
		if(settings["40Rate"]){
			refreshRate = 40;
			
		}
		if(settings["10Rate"]){
			refreshRate = 10;			
		}
		
	} else {
		refreshRate = 30;
	}
}


startup
{
	//1st tabs
	
	settings.Add("Platform", true, "Platform");
	settings.SetToolTip("Platform", "SET THIS UP BEFORE LAUNCHING THE GAME");
	settings.Add("Full Game Category", false, "Full Game Category");
	settings.Add("Individual Levels", false, "Individual Levels");
	settings.Add("Refresh rate of the autosplitter", true, "Refresh rate of the autosplitter");
	
	//End of 1st tabs
	
	settings.CurrentDefaultParent = "Platform";
	settings.Add("Steam", true, "Steam (Default)");
	settings.Add("GOG", false, "GOG");

	settings.CurrentDefaultParent = "Full Game Category";
	settings.SetToolTip("Full Game Category", "Chose the category you're running, CHECK ONLY ONE");
	settings.Add("Any%", false, "Any%");
	settings.Add("Any% No Ghost", false, "Any% No Ghost");
	settings.Add("All Bounties", false, "All Bounties");
	settings.Add("100%", false, "100%");
	
	settings.CurrentDefaultParent = "Individual Levels";
	settings.Add("Splitting options", true, "Splitting options (SELECT ONLY ONE)");
	settings.CurrentDefaultParent = "Splitting options";
	settings.Add("Single split", true, "Single split (Default)");
	settings.SetToolTip("Single split", "The timer will split only once at the end of the level");
	settings.Add("Multiple splits", false, "Multiple splits");
	settings.SetToolTip("Multiple splits", "Additional splits during the level (if there's any)");
	
	settings.CurrentDefaultParent = "Individual Levels";
	settings.Add("Levels", true, "Levels");
	
	settings.CurrentDefaultParent = "Levels";
	settings.Add("Tutorial", false, "Tutorial");
	settings.Add("Bounties", false, "Bounties");
	settings.Add("Dusky Hollow", false, "Dusky Hollow");
	settings.Add("Grubb Village + Wolvark Docks", false, "Grubb Village + Wolvark Docks");
	settings.Add("Rowing", false, "Rowing");
	settings.Add("Last Legs", false, "Last Legs");
	settings.Add("Dam Entrance", false, "Dam Entrance");
	settings.Add("Inner Dam", false, "Inner Dam");
	settings.Add("Timer Rush", false, "Timer Rush");
	settings.Add("Sekto", false, "Sekto");
	settings.Add("Individual Regions", false, "Individual Regions");
	
	settings.CurrentDefaultParent = "Bounties";
	settings.Add("Eugene Ius", false, "Eugene Ius");
	settings.Add("Other Bounties", false, "Other Bounties");
	
	settings.CurrentDefaultParent = "Individual Regions";
	settings.Add("Gizzard Gulch", false, "Gizzard Gulch");
	settings.Add("Buzzarton", false, "Buzzarton");
	settings.Add("New Yolk City", false, "New Yolk City");
	
	settings.CurrentDefaultParent = "Refresh rate of the autosplitter";
	settings.SetToolTip("Refresh rate of the autosplitter", "Sets the autosplitter to refresh 30 times per second. Leaving all options unckeched will set refresh rate to 30 by default anyway.");
	
	settings.Add("10Rate", false, "10 refreshes per second");
	settings.SetToolTip("10Rate", "Sets the autosplitter to refresh 10 times per second. Perfect for potato computers. Inaccurate times may happen.");
	
	settings.Add("30Rate", true, "30 refreshes per second (DEFAULT)");
	settings.SetToolTip("30Rate", "Sets the autosplitter to refresh 30 times per second. Leaving all options unckeched will set refresh rate to 30 by default anyway.");
	
	settings.Add("40Rate", false, "40 refreshes per second");
	settings.SetToolTip("40Rate", "Sets the autosplitter to refresh 40 times per second. Should help getting a bit more accurate times.");
	
	settings.Add("50Rate", false, "50 refreshes per second");
	settings.SetToolTip("50Rate", "Sets the autosplitter to refresh 50 times per second. Should help getting very accurate times.");
	
	settings.Add("100Rate", false, "100 refreshes per second");
	settings.SetToolTip("100Rate", "Sets the autosplitter to refresh 100 times per second. R U crazy or wut m8?");
}
 
start
{
	vars.split = 0;
	vars.capture = 0;
	vars.rendu = 0;
	vars.tuto = 0;
	vars.end = 0;
	vars.FrameRate = 30;
	vars.splitAlt = true;
	
	if(settings["Individual Levels"]){
	
		
		if(settings["Tutorial"]){
		
			if(old.diffmenu == 0 && current.diffmenu != old.diffmenu){
				return true;
			}
		}
		
		if(settings["Bounties"]){
			
			if(current.primeguy < old.primeguy){
					return true;
			}
		}
		
		if(settings["Dusky Hollow"]){
		
			if(current.ilstart < old.ilstart){
				return true;
			}
		}
		
		if(settings["Grubb Village + Wolvark Docks"]){
		
			if(current.ilstart < old.ilstart){
				return true;
			}
		}
		
		if(settings["Rowing"]){
		
			if(current.zone == 35){
				return true;
			}
		}
		
		if(settings["Last Legs"]){
		
			if(current.ilstart < old.ilstart){
				return true;
			}
		}
		
		if(settings["Dam Entrance"]){
		
			if(current.cutscene < old.cutscene){
				return true;
			}
		}
		
		if(settings["Inner Dam"]){
		
			if(current.ilstart < old.ilstart){
				return true;
			}
		}
		
		if(settings["Timer Rush"]){
		
			if(current.river < old.river){
				return true;
			}
		}
		
		if(settings["Sekto"]){
		
			if(current.river > old.river){
				return true;
			}
		}
		
		if(settings["Individual Regions"]){
		
			if(settings["Gizzard Gulch"]){
				
				if(current.ilstart < old.ilstart){
					return true;
				}
			}
			
			if(settings["Buzzarton"]){
				
				if(current.ilstart < old.ilstart){
					return true;
				}
			}
			
			if(settings["New Yolk City"]){
				
				if(current.ilstart < old.ilstart){
					return true;
				}
			}
		}
	}
	
	else if(old.diffmenu == 0 && current.diffmenu != old.diffmenu){
		return true;
	}
}

reset
{

	if(settings["Tutorial"]){
		if(current.resettimer == 257){
			vars.split = 0;
			vars.capture = 0;
			vars.rendu = 0;
			vars.tuto = 0;
			vars.end = 0;
			return true;
		}
	}
		
	else if(settings["Individual Levels"]){
		
		if(current.resetload > old.resetload && current.primeguy == 0){
			vars.split = 0;
			vars.capture = 0;
			vars.rendu = 0;
			vars.tuto = 0;
			vars.end = 0;
			return true;
		}
		
	}
	
	else if(current.resettimer == 257){
		vars.split = 0;
		vars.capture = 0;
		vars.rendu = 0;
		vars.tuto = 0;
		vars.end = 0;
		return true;
	}
}

split
{	
	if (settings["Refresh rate of the autosplitter"]){
		if (settings["100Rate"]){
			refreshRate = 100;
		}
		if (settings["50Rate"]){
			refreshRate = 50;
			
		}
		if (settings["40Rate"]){
			refreshRate = 40;
			
		}
		if (settings["10Rate"]){
			refreshRate = 10;			
		}
	} else {
		refreshRate = 30;
	}
	
	vars.FrameRate = refreshRate;
	
	
	//Full Game Category
	
	if(settings["Full Game Category"]){


		//Any%
		
		if(settings["Any%"]){
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.tuto++;
			}
			if(vars.split == 0 && vars.tuto == 2){
				vars.split++;
				return true;
			//Tutorial
			}
		
			if(current.zone == 39 && current.cutscene > old.cutscene && vars.split == 1){
				vars.split++;
				return true;
			//Gizzard Gulch Skip	
			}
		
			if(current.zone == 78 && vars.split == 2){
				vars.split++;
				return true;
			//Buzzarton Skip
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 3){
				vars.split++;
				return true;
			//Welcome to the Jungle
			}
		
			if(current.zone == 69 && current.cutscene > old.cutscene && vars.split == 4){
				vars.split++;
				return true;
			//River Skip
			}
		
			if(current.river < old.river && current.godvalue == current.river && vars.split == 5){
				vars.split++;
				return true;
			//Ambush
			}
		
			if(current.zone == 2 &&  current.cutscene > old.cutscene && vars.split == 6){
				vars.split++;
				return true;
			//Dusky Hollow
			}
		
			if(current.godvalue == current.nerfshop && current.godvalue > old.godvalue && vars.split == 7){
				vars.split++;
				return true;
			//RNG
			}
		
			if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				return true;
			//Boat Skip
			}
			if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 9){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 10){
				vars.tuto++;
			}
			if(vars.split == 10 && vars.tuto == 4){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if(current.godvalue == current.nerfshop && vars.split == 11){
				vars.split++;
				return true;
			//Some More Boat
			}
		
			if(current.godvalue > old.godvalue && vars.split == 12){
				vars.split++;
				return true;
			//Gloktigi Clip
			}
		
			if(current.godvalue < old.godvalue && vars.split == 13){
				vars.split++;
				return true;
			//Sekto's Lair
			}
		
			if(current.godvalue < old.godvalue && vars.split == 14){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.godvalue > old.godvalue && vars.split == 15){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.end == 2 && current.quicksave > old.quicksave && vars.split == 16){
				vars.split++;
				return true;
			//Sekto
			}
		}
		
		
		
		
		//Any% No Ghost
		
		if(settings["Any% No Ghost"]){
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.tuto++;
			}
			if(vars.split == 0 && vars.tuto == 2){
				vars.split++;
				return true;
			//Tutorial
			}
		
			if(current.zone == 39 && current.cutscene > old.cutscene && vars.split == 1){
				vars.split++;
				return true;
			//Gizzard Gulch Skip	
			}
		
			if(current.zone == 78 && vars.split == 2){
				vars.split++;
				return true;
			//Buzzarton Skip
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 3){
				vars.split++;
				return true;
			//Welcome to the Jungle
			}
		
			if(current.bounty > old.bounty && vars.split == 4 && vars.capture == 0){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 4 && vars.rendu == 0 && vars.capture == 1){
				vars.rendu++;
			}
			if(vars.split == 4 && vars.capture == 1 && vars.rendu == 1){
				vars.split++;
				return true;
			//Xplosives McGee
			}
		
			if(current.zone == 69 && current.cutscene > old.cutscene && vars.split == 5){
				vars.split++;
				return true;
			//River Skip
			}
		
			if(current.river < old.river && current.godvalue == current.river && vars.split == 6){
				vars.split++;
				return true;
			//Ambush
			}
		
			if(current.zone == 2 &&  current.cutscene > old.cutscene && vars.split == 7){
				vars.split++;
				return true;
			//Dusky Hollow
			}
		
			if(current.godvalue == current.nerfshop && current.godvalue > old.godvalue && vars.split == 8){
				vars.split++;
				return true;
			//RNG
			}
		
			if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 9){
				vars.split++;
				return true;
			//Boat Skip
			}
		
			if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 10){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 11){
				vars.tuto++;
			}
			if(vars.split == 11 && vars.tuto == 4){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if(current.godvalue == current.nerfshop && vars.split == 12) {
				vars.split++;
				return true;
			//Some More Boat
			}
		
			if(current.godvalue > old.godvalue && vars.split == 13){
				vars.split++;
				return true;
			//Gloktigi Clip
			}
		
			if(current.godvalue < old.godvalue && vars.split == 14){
				vars.split++;
				return true;
			//Sekto's Lair
			}
		
			if(current.godvalue < old.godvalue && vars.split == 15){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.godvalue > old.godvalue && vars.split == 16){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.end == 2 && current.quicksave > old.quicksave && vars.split == 17){
				vars.split++;
				return true;
			//Sekto
			}
		}
		
		
		
		
		//All Bounties
		
		if(settings["All Bounties"]){
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.tuto++;
			}
			if(vars.split == 0 && vars.tuto == 2){
				vars.split++;
				return true;
			//Tutorial
			}
		
			if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 0){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 0 && vars.capture == 1){
				vars.rendu++;
			}
			if(vars.split == 1 && vars.capture == 1 && vars.rendu == 1){
				vars.split++;
				return true;
			//Filthy Hands Floyd
			}
		
			if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 2 && vars.rendu == 1 && vars.capture == 2){
				vars.rendu++;
			}
			if(vars.split == 2 && vars.capture == 2 && vars.rendu == 2){
				vars.split++;
				return true;
			//Looten Duke
			}
		
			if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 3 && vars.rendu == 2 && vars.capture == 3){
				vars.rendu++;
			}
			if(vars.split == 3 && vars.capture == 3 && vars.rendu == 3){
				vars.split++;
				return true;
			//Boilz Booty
			}
		
			if(current.zone == 60 && current.bounty > old.bounty && vars.split == 4 && vars.capture == 3){
				vars.capture++;
			}
			if(current.cutscene > old.cutscene && vars.split == 4 && vars.capture == 4){
				vars.split++;
				return true;
			//Jo Momma
			}
		
			if(current.primeguy > old.primeguy && vars.split == 5 && vars.rendu == 3 && vars.capture == 4){
				vars.rendu++;
			}
			if(vars.split == 5 && vars.capture == 4 && vars.rendu == 4){
				vars.split++;
				return true;
			//Eugene Ius
			}
		
			if(current.bounty > old.bounty && vars.split == 6 && vars.capture == 4){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 6 && vars.rendu == 4 && vars.capture == 5){
				vars.rendu++;
			}
			if(vars.split == 6 && vars.capture == 5 && vars.rendu == 5){
				vars.split++;
				return true;
			//Meagly McGraw
			}
		
			if(current.bounty > old.bounty && vars.split == 7 && vars.capture == 5){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 7 && vars.rendu == 5 && vars.capture == 6){
				vars.rendu++;
			}
			if(vars.split == 7 && vars.capture == 6 && vars.rendu == 6){
				vars.split++;
				return true;
			//Packrat Palooka
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				return true;
			//Welcome to the jungle
			}
		
			if(current.bounty > old.bounty && vars.split == 9 && vars.capture == 6){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 9 && vars.rendu == 6 && vars.capture == 7){
				vars.rendu++;
			}
			if(vars.split == 9 && vars.capture == 7 && vars.rendu == 7){
				vars.split++;
				return true;
			//Xplosives McGee
			}
		
			if(current.primeguy > old.primeguy && vars.split == 10 && vars.rendu == 7 && vars.capture == 7){
				vars.rendu++;
			}
			if(current.godvalue > old.godvalue && current.nerfshop == current.river && vars.split == 10 && vars.rendu == 8){
				vars.split++;
				return true;
			//Giant Sleg
			}
		
			if(current.bounty > old.bounty && vars.split == 11 && vars.capture == 7){
				vars.capture++;
			}
			if(current.river < old.river && vars.split == 11 && vars.capture == 8){
				vars.split++;
				return true;
			//Fatty McBoomboom
			}
		
			if(current.bounty > old.bounty && vars.split == 12 && vars.capture == 8){
				vars.capture++;
			}
			if(current.godvalue < old.godvalue && vars.split == 12 && vars.capture == 9){
				vars.split++;
				return true;
			//Elboze Freely
			}
		
			if(current.bounty > old.bounty && vars.split == 13 && vars.capture == 9){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 13 && vars.rendu == 8 && vars.capture == 10){
				vars.rendu++;
			}
			if(vars.split == 13 && vars.capture == 10 && vars.rendu == 9){
				vars.split++;
				return true;
			//Lefty Lugnutz
			}
		
			if(current.zone == 9 && current.cutscene > old.cutscene && vars.split == 14){
				vars.split++;
				return true;
			//Mongo River
			}
		
			if(current.river < old.river && current.godvalue == current.river && vars.split == 15){
				vars.split++;
				return true;
			//Ambush
			}
		
			if(current.zone == 2 &&  current.cutscene > old.cutscene && vars.split == 16){
				vars.split++;
				return true;
			//Dusky Hollow
			}
		
			if(current.godvalue == current.nerfshop && current.godvalue > old.godvalue && vars.split == 17){
				vars.split++;
				return true;
			//RNG
			}
		
			if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 18){
				vars.split++;
				return true;
			//Boat Skip
			}
		
			if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 19){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 20){
				vars.tuto++;
			}
			if(vars.split == 20 && vars.tuto == 4){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if (current.godvalue == current.nerfshop && vars.split == 21){
				vars.split++;
				return true;
			//Some More Boat
			}
		
			if(current.godvalue > old.godvalue && vars.split == 22){
				vars.split++;
				return true;
			//Gloktigi Clip
			}
		
			if(current.godvalue < old.godvalue && vars.split == 23){
				vars.split++;
				return true;
			//Sekto's Lair
			}
		
			if(current.godvalue < old.godvalue && vars.split == 24){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.godvalue > old.godvalue && vars.split == 25){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.end == 2 && current.quicksave > old.quicksave && vars.split == 26){
				vars.split++;
				return true;
			//Sekto
			}
		}
		
		
		
		
		//100%
		
		if(settings["100%"]){
		
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.tuto++;
			}
			if(vars.split == 0 && vars.tuto == 2){
				vars.split++;
				return true;
			//Tutorial
			}
		
			if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 0){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 0 && vars.capture == 1){
				vars.rendu++;
			}
			if(vars.split == 1 && vars.capture == 1 && vars.rendu == 1){
				vars.split++;
				return true;
			//Filthy Hands Floyd
			}
		
			if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 2 && vars.rendu == 1 && vars.capture == 2){
				vars.rendu++;
			}
			if(vars.split == 2 && vars.capture == 2 && vars.rendu == 2){
				vars.split++;
				return true;
			//Looten Duke
			}
		
			if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 3 && vars.rendu == 2 && vars.capture == 3){
				vars.rendu++;
			}
			if(vars.split == 3 && vars.capture == 3 && vars.rendu == 3){
				vars.split++;
				return true;
			//Boilz Booty
			}
		
			if(current.zone == 60 && current.bounty > old.bounty && vars.split == 4 && vars.capture == 3){
				vars.capture++;
			}
			if(current.cutscene > old.cutscene && vars.split == 4 && vars.capture == 4){
				vars.split++;
				return true;
			//Jo Momma
			}
		
			if(current.primeguy > old.primeguy && vars.split == 5 && vars.rendu == 3 && vars.capture == 4){
				vars.rendu++;
			}
			if(vars.split == 5 && vars.capture == 4 && vars.rendu == 4){
				vars.split++;
				return true;
			//Eugene Ius
			}
		
			if(current.bounty > old.bounty && vars.split == 6 && vars.capture == 4){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 6 && vars.rendu == 4 && vars.capture == 5){
				vars.rendu++;
			}
			if(vars.split == 6 && vars.capture == 5 && vars.rendu == 5){
				vars.split++;
				return true;
			//Meagly McGraw
			}
		
			if(current.bounty > old.bounty && vars.split == 7 && vars.capture == 5){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 7 && vars.rendu == 5 && vars.capture == 6){
				vars.rendu++;
			}
			if(vars.split == 7 && vars.capture == 6 && vars.rendu == 6){
				vars.split++;
				return true;
			//Packrat Palooka
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				return true;
			//Welcome to the jungle
			}
		
			if(current.bounty > old.bounty && vars.split == 9 && vars.capture == 6){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 9 && vars.rendu == 6 && vars.capture == 7){
				vars.rendu++;
			}
			if(vars.split == 9 && vars.capture == 7 && vars.rendu == 7){
				vars.split++;
				return true;
			//Xplosives McGee
			}
		
			if(current.primeguy > old.primeguy && vars.split == 10 && vars.rendu == 7 && vars.capture == 7){
				vars.rendu++;
			}
			if(current.godvalue > old.godvalue && current.nerfshop == current.river && vars.split == 10 && vars.rendu == 8){
				vars.split++;
				return true;
			//Giant Sleg
			}
		
			if(current.bounty > old.bounty && vars.split == 11 && vars.capture == 7){
				vars.capture++;
			}
			if(current.river < old.river && vars.split == 11 && vars.capture == 8){
				vars.split++;
				return true;
			//Fatty McBoomboom
			}
		
			if(current.bounty > old.bounty && vars.split == 12 && vars.capture == 8){
				vars.capture++;
			}
			if(current.godvalue < old.godvalue && vars.split == 12 && vars.capture == 9){
				vars.split++;
				return true;
			//Elboze Freely
			}
		
			if(current.bounty > old.bounty && vars.split == 13 && vars.capture == 9){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 13 && vars.rendu == 8 && vars.capture == 10){
				vars.rendu++;
			}
			if(vars.split == 13 && vars.capture == 10 && vars.rendu == 9){
				vars.split++;
				return true;
			//Lefty Lugnutz
			}
		
			if(current.zone == 9 && current.cutscene > old.cutscene && vars.split == 14){
				vars.split++;
				return true;
			//Mongo River
			}
		
			if(current.river < old.river && current.godvalue == current.river && vars.split == 15){
				vars.split++;
				return true;
			//Ambush
			}
		
			if(current.zone == 2 &&  current.cutscene > old.cutscene && vars.split == 16){
				vars.split++;
				return true;
			//Dusky Hollow
			}
		
			if(current.zone == 30 && current.cutscene > old.cutscene && vars.split == 17){
				vars.split++;
				return true;
			//Wolvark Docks
			}
		
			if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 18){
				vars.split++;
				return true;
			//Grubb Village fight
			}
		
			if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 19){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 20){
				vars.tuto++;
			}
			if(vars.split == 20 && vars.tuto == 4){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if (current.godvalue == current.nerfshop && vars.split == 21){
				vars.split++;
				return true;
			//Some More Boat
			}
		
			if(current.godvalue > old.godvalue && vars.split == 22){
				vars.split++;
				return true;
			//Gloktigi Clip
			}
		
			if(current.godvalue < old.godvalue && vars.split == 23){
				vars.split++;
				return true;
			//Sekto's Lair
			}
		
			if(current.godvalue < old.godvalue && vars.split == 24){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.godvalue > old.godvalue && vars.split == 25){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.end == 2 && current.quicksave > old.quicksave && vars.split == 26){
				vars.split++;
				return true;
			//Sekto
			}
		}
	}
	
	
	
	//Individual Levels
	
	if(settings["Individual Levels"]){
			
			
			
		//SINGLE SPLIT
			
		if(settings["Single split"]){
	
			if(settings["Tutorial"]){
		
				if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
					vars.tuto++;
				}
				if(vars.split == 0 && vars.tuto == 2){
					vars.split++;
					return true;
				//Tutorial
				}
			}
		
			if(settings["Bounties"]){
		
				if(settings["Other Bounties"]){
			
					if(current.bounty > old.bounty && vars.capture == 0){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.rendu == 0 && vars.capture == 1){
						vars.rendu++;
					}
					if(vars.capture == 1 && vars.rendu == 1 && vars.split == 0){
						vars.split++;
						return true;
					//Other Bounties
					}
				}
		
				if(settings["Eugene Ius"]){
			
					if(current.primeguy > old.primeguy && vars.rendu == 0){
						vars.rendu++;
					}
					if(vars.rendu == 1 && vars.split == 0){
						vars.split++;
						return true;
					//Eugene Ius
					}
				}
			}
		
			if(settings["Dusky Hollow"]){
				
				if(current.river < old.river && current.godvalue == current.river && vars.split == 0){
					vars.split++;
				//Cabin Fight
				}
		
				if(current.zone == 2 &&  current.cutscene > old.cutscene && vars.split == 1){
					vars.split++;
					return true;
				//Dusky Hollow
				}
			}
		
			if(settings["Grubb Village + Wolvark Docks"]){
		
				if(current.zone == 33 &&  current.godvalue < current.nerfshop && vars.split == 0){
					vars.split++;
					return true;
				//Grubb Village + Wolvark Docks
				}
			}
		
			if(settings["Rowing"]){
		
				if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 0){
					vars.split++;
					return true;
				//Rowing
				}
			}
		
			if(settings["Last Legs"]){
		
				if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 0){
					vars.tuto++;
				}
				if(vars.split == 0 && vars.tuto == 2){
					vars.split++;
					return true;
				//Last Legs
				}
			}
			
			if(settings["Dam Entrance"]){
		
				if(current.zone == 10 && current.godvalue > old.godvalue && vars.split == 0){
					vars.split++;
					return true;
				//Dam Entrance
				}
			}
		
			if(settings["Inner Dam"]){
		
				if(current.godvalue < old.godvalue && vars.split == 0){
					vars.split++;
					return true;
				//Inner Dam
				}
			}
		
			if(settings["Timer Rush"]){
		
				if(current.river > old.river && vars.split == 0){
					vars.split++;
					return true;
				//Timer Rush
				}
			}
		
			if(settings["Sekto"]){
			
				if(current.godvalue > old.godvalue && vars.split == 0){
					vars.split++;
					vars.end++;
				}
			
				if(current.end == 2 && current.quicksave > old.quicksave && vars.end == 1 && vars.split == 1){
					vars.split++;
					return true;
				//Sekto
				}
			}
			
			if(settings["Individual Regions"]){
			
				if(settings["Gizzard Gulch"]){
				
					if(current.bounty > old.bounty && vars.split == 0 && vars.capture == 0){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 0 && vars.rendu == 0 && vars.capture == 1){
						vars.rendu++;
					}
					if(vars.split == 0 && vars.capture == 1 && vars.rendu == 1){
						vars.split++;
					//Filthy Hands Floyd
					}
	
					if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 1){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 1 && vars.capture == 2){
						vars.rendu++;
					}
					if(vars.split == 1 && vars.capture == 2 && vars.rendu == 2){
						vars.split++;
					//Looten Duke
					}
	
					if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 2){
						vars.capture++;
					}
					if(current.zone == 39 && current.cutscene > old.cutscene && vars.split == 2 && vars.capture == 3){
						vars.split++;
						return true;
					//Boilz Booty
					}
				}
				
				if(settings["Buzzarton"]){
				
					if(current.zone == 60 && current.bounty > old.bounty && vars.split == 0 && vars.capture == 0){
						vars.capture++;
					}
					if(current.cutscene > old.cutscene && vars.split == 0 && vars.capture == 1){
						vars.split++;
					//Jo Momma
					}
	
					if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 0 && vars.capture == 1){
						vars.rendu++;
					}
					if(vars.split == 1 && vars.capture == 1 && vars.rendu == 1){
						vars.split++;
					//Eugene Ius
					}
	
					if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 2 && vars.rendu == 1 && vars.capture == 2){
						vars.rendu++;
					}
					if(vars.split == 2 && vars.capture == 2 && vars.rendu == 2){
						vars.split++;
					//Meagly McGraw
					}
	
					if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
						vars.capture++;
					}
					
					if(current.primeguy > old.primeguy && vars.split == 3 && vars.rendu == 2 && vars.capture == 3){
						vars.rendu++;
					}
					if(vars.split == 3 && vars.capture == 3 && vars.rendu == 3){
						vars.split++;
					//Packrat Palooka
					}
					
					if(current.zone == 78 && vars.capture == 3 && vars.split == 4){
						vars.split++;
						return true;
					//End
					}
					
				}
				
				if(settings["New Yolk City"]){
				
					if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 0){
						vars.split++;
					//Welcome to the jungle
					}
	
					if(current.bounty > old.bounty && vars.split == 0 && vars.capture == 0){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 0 && vars.rendu == 0 && vars.capture == 1){
						vars.rendu++;
					}
					if(vars.split == 0 && vars.capture == 1 && vars.rendu == 1){
						vars.split++;
					//Xplosives McGee
					}
	
					if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 1 && vars.capture == 1){
						vars.rendu++;
					}
					if(current.godvalue > old.godvalue && current.nerfshop == current.river && vars.split == 1 && vars.rendu == 2){
						vars.split++;
					//Giant Sleg
					}
	
					if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
						vars.capture++;
					}
					if(current.river < old.river && vars.split == 2 && vars.capture == 2){
						vars.split++;
					//Fatty McBoomboom
					}
	
					if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
						vars.capture++;
					}
					if(current.godvalue < old.godvalue && vars.split == 3 && vars.capture == 3){
						vars.split++;
					//Elboze Freely
					}
	
					if(current.bounty > old.bounty && vars.split == 4 && vars.capture == 3){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 4 && vars.rendu == 2 && vars.capture == 4){
						vars.rendu++;
					}
					if(vars.split == 4 && vars.capture == 4 && vars.rendu == 3){
						vars.split++;
					//Lefty Lugnutz
					}
				
					if(current.zone == 9 && current.cutscene > old.cutscene && vars.split == 5){
						vars.split++;
						return true;
					//Mongo River
					}		
				}		
			}
		}
		
	

		//MULTIPLE SPLITS
	
		if(settings["Multiple splits"]){
			
			if(settings["Tutorial"]){
		
				if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
					vars.tuto++;
				}
				if(vars.split == 0 && vars.tuto == 2){
					vars.split++;
					return true;
				//Tutorial
				}
			}
		
			if(settings["Bounties"]){
		
				if(settings["Other Bounties"]){
			
					if(current.bounty > old.bounty && vars.capture == 0){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.rendu == 0 && vars.capture == 1){
						vars.rendu++;
					}
					if(vars.capture == 1 && vars.rendu == 1 && vars.split == 0){
						vars.split++;
						return true;
					//Other Bounties
					}
				}
		
				if(settings["Eugene Ius"]){
			
					if(current.primeguy > old.primeguy && vars.rendu == 0){
						vars.rendu++;
					}
					if(vars.rendu == 1 && vars.split == 0){
						vars.split++;
						return true;
					//Eugene Ius
					}
				}
			}
		
			if(settings["Dusky Hollow"]){
				
				if(current.river < old.river && current.godvalue == current.river && vars.split == 0){
					vars.split++;
					return true;
				//Cabin Fight
				}
		
				if(current.zone == 2 &&  current.cutscene > old.cutscene && vars.split == 1){
					vars.split++;
					return true;
				//Dusky Hollow
				}
			}
		
			if(settings["Grubb Village + Wolvark Docks"]){
			
				if(current.godvalue == current.nerfshop && current.godvalue > old.godvalue && vars.split == 0){
					vars.split++;
					return true;
				//RNG
				}
		
				if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 1){
					vars.split++;
					return true;
				//Grubb Village + Wolvark Docks
				}
			}
		
			if(settings["Rowing"]){
		
				if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 0){
					vars.split++;
					return true;
				//Rowing
				}
			}
		
			if(settings["Last Legs"]){
		
				if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 0){
					vars.tuto++;
				}
				if(vars.split == 0 && vars.tuto == 2){
					vars.split++;
					return true;
				//Last Legs
				}
			}
			
			if(settings["Dam Entrance"]){
			
				if (current.godvalue == current.nerfshop && vars.split == 0){
					vars.split++;
					return true;
				//Boats Boats Boats
				}
		
				if(current.zone == 10 && current.godvalue > old.godvalue && vars.split == 1){
					vars.split++;
					return true;
				//Dam Entrance
				}
			}
		
			if(settings["Inner Dam"]){
		
				if(current.godvalue < old.godvalue && vars.split == 0){
					vars.split++;
					return true;
				//Inner Dam
				}
			}
		
			if(settings["Timer Rush"]){
		
				if(current.river > old.river && vars.split == 0){
					vars.split++;
					return true;
				//Timer Rush
				}
			}
		
			if(settings["Sekto"]){
			
				if(current.godvalue > old.godvalue && vars.split == 0){
					vars.split++;
					return true;
				//Gloktigi Twins
				}
			
				if(current.end == 2 && current.quicksave > old.quicksave && vars.split == 1){
					vars.split++;
					return true;
				//Sekto
				}
			}
			
			if(settings["Individual Regions"]){
			
				if(settings["Gizzard Gulch"]){
				
					if(current.bounty > old.bounty && vars.split == 0 && vars.capture == 0){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 0 && vars.rendu == 0 && vars.capture == 1){
						vars.rendu++;
					}
					if(vars.split == 0 && vars.capture == 1 && vars.rendu == 1){
						vars.split++;
						return true;
					//Filthy Hands Floyd
					}
	
					if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 1){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 1 && vars.capture == 2){
						vars.rendu++;
					}
					if(vars.split == 1 && vars.capture == 2 && vars.rendu == 2){
						vars.split++;
						return true;
					//Looten Duke
					}
	
					if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 2){
						vars.capture++;
					}
					if(current.zone == 39 && current.cutscene > old.cutscene && vars.split == 2 && vars.capture == 3){
						vars.split++;
						return true;
					//Boilz Booty
					}
				}
				
				if(settings["Buzzarton"]){
				
					if(current.zone == 60 && current.bounty > old.bounty && vars.split == 0 && vars.capture == 0){
						vars.capture++;
					}
					if(current.cutscene > old.cutscene && vars.split == 0 && vars.capture == 1){
						vars.split++;
						return true;
					//Jo Momma
					}
	
					if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 0 && vars.capture == 1){
						vars.rendu++;
					}
					if(vars.split == 1 && vars.capture == 1 && vars.rendu == 1){
						vars.split++;
						return true;
					//Eugene Ius
					}
	
					if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 2 && vars.rendu == 1 && vars.capture == 2){
						vars.rendu++;
					}
					if(vars.split == 2 && vars.capture == 2 && vars.rendu == 2){
						vars.split++;
						return true;
					//Meagly McGraw
					}
	
					if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
						vars.capture++;
					}
					
					if(current.primeguy > old.primeguy && vars.split == 3 && vars.rendu == 2 && vars.capture == 3){
						vars.rendu++;
					}
					if(vars.split == 3 && vars.capture == 3 && vars.rendu == 3){
						vars.split++;
						return true;
					//Packrat Palooka
					}
					
					if(current.zone == 78 && vars.capture == 3 && vars.split == 4){
						vars.split++;
						return true;
					//End
					}
					
				}
				
				if(settings["New Yolk City"]){
				
					if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 0){
						vars.split++;
						return true;
					//Welcome to the jungle
					}
	
					if(current.bounty > old.bounty && vars.split == 0 && vars.capture == 0){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 0 && vars.rendu == 0 && vars.capture == 1){
						vars.rendu++;
					}
					if(vars.split == 0 && vars.capture == 1 && vars.rendu == 1){
						vars.split++;
						return true;
					//Xplosives McGee
					}
	
					if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 1 && vars.capture == 1){
						vars.rendu++;
					}
					if(current.godvalue > old.godvalue && current.nerfshop == current.river && vars.split == 1 && vars.rendu == 2){
						vars.split++;
						return true;
					//Giant Sleg
					}
	
					if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
						vars.capture++;
					}
					if(current.river < old.river && vars.split == 2 && vars.capture == 2){
						vars.split++;
						return true;
					//Fatty McBoomboom
					}
	
					if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
						vars.capture++;
					}
					if(current.godvalue < old.godvalue && vars.split == 3 && vars.capture == 3){
						vars.split++;
						return true;
					//Elboze Freely
					}
	
					if(current.bounty > old.bounty && vars.split == 4 && vars.capture == 3){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 4 && vars.rendu == 2 && vars.capture == 4){
						vars.rendu++;
					}
					if(vars.split == 4 && vars.capture == 4 && vars.rendu == 3){
						vars.split++;
						return true;
					//Lefty Lugnutz
					}
				
					if(current.zone == 9 && current.cutscene > old.cutscene && vars.split == 5){
						vars.split++;
						return true;
					//Mongo River
					}		
				}
			}
		}
	}
}


isLoading

{
	if(current.IGT > 0 && current.IGT3 == 0){
		return true;
	} else if(current.IGT2 > 0 && current.IGT3 == 0){
		return true;
	} else {
		return false;
	}
}
