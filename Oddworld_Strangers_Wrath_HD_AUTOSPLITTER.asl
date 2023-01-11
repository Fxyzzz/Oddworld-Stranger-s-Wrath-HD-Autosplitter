// 19-02-2021 by Fxyz#1329

state ("stranger", "Steam 1.5")

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
	long IGT3 : 0x34A040, 0x114;		//Always 0 except during cinematics
	int quicksave : 0x341274, 0x138;	//When a quicksave / automatic save is done
	int quickload : 0x24A6A8, 0x24;
	int mchest : 0x1DE930, 0x4;
	//int crystal : 0x1DE930, 0x8;
	int barrel : 0x2FB8FC, 0x104;
	int zone : 0x1CFFC8, 0x18;			//The ID of every chunks in the game
	int resettimer : 0x1E4AB4, 0x14;	//Set to 257 only in the main menu
	int ilstart : 0x20C44C, 0x20;
	int health: 0x5D2F70, 0x170;
	int statusobject: 0x1EE794, 0x18;
	int mpots: 0x64CE68, 0x40, 0x8, 0x1C, 0x9C, 0x8;
	float moolah: 0x65178C, 0x0, 0x204, 0x0C;
}

state ("stranger", "GOG 1.5")

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
	long IGT3 : 0x0349330, 0x114;
	int quicksave : 0x1DFB74, 0x88;
	int quickload : 0x249AA8, 0x24;
	int mchest : 0x1DEA10, 0x4;
	//int crystal : 0x1DEA10, 0x8;
	int barrel : 0x2FAA18, 0x104;
	int zone : 0x1D00B8, 0x18;
	int resettimer : 0x1E4C04, 0x14;
	int ilstart : 0x020B7EC, 0x20;
	int health: 0x5CE390, 0x170;
	int statusobject: 0x1EE8C4, 0x18;
	int mpots: 0x648288, 0x10, 0x34, 0x0, 0x9C, 0x8;
	float moolah: 0x64CBAC, 0x0, 0x204, 0x0C;
}

/*state ("stranger", "GOGSD")

{
	int diffmenu : 0x1EE15C, 0x10;
	//int godvalue : 
	//int nerfshop : 
	//int river : 
	//int bounty : 
	//int primeguy : 
	//int cutscene : 
	int IGT : 0x33ABDC, 0x18;
	long IGT3 : 0x20AD24, 0x48;
	//int quicksave : 
	short quickload : 0x0BC484, 0x78;
	//int mchest : 
	//int crystal : 
	//int zone : 0x1EA958, 0x28;
	int resettimer : 0x20060C, 0x18;
	//int ilstart : 
	int health: 0x411CFC, 0x240;
	//int mpots: 
	//float moolah: 
}
*/
init
{	

	vars.split = 0;
	vars.capture = 0;
	vars.rendu = 0;
	vars.cutscene = 0;
	vars.end = 0;
	vars.boat = 0;
	vars.barrel = 0;
	vars.barrelqs = 0;
	vars.mchest = 0;
	vars.mchestqs = 0;
	vars.mpots = 0;
	vars.mpotsqs = 0;
	vars.mchestmem = current.mchest;
	vars.mpotsmem = current.mpots;
	vars.zone = 0;
	vars.barrelsplit = 0;
	vars.chestsplit = 0;
	vars.potsplit = 0;
	vars.idol = 0;
	vars.idolqs = 0;
	vars.idolsplit = 0;
	vars.moolah = 0;
	
	/*if(settings["Platform"]){
		
		if(settings["Steam"]){
			version = "Steam 1.5";
		}
		
		if(settings["GOG"]){
			if(settings["HD"]){
				version = "GOG 1.5";
			}
			if(settings["SD"]){
				version = "GOGSD";
			}
		}
	}	
	*/
	
	if(current.diffmenu == 1){
		version = "Steam 1.5";
	}
	
	if(current.diffmenu == 0){
		version = "GOG 1.5";
	}
	
	if(settings["Refresh rate of the autosplitter"]){
	
		if(settings["500Rate"]){
			refreshRate = 500;
		}
	
		if(settings["250Rate"]){
			refreshRate = 250;
		}
	
		if(settings["200Rate"]){
			refreshRate = 200;
		}	
	
		if(settings["150Rate"]){
			refreshRate = 150;
		}
		
		if(settings["50Rate"]){
			refreshRate = 50;
			
		}
		if(settings["40Rate"]){
			refreshRate = 40;
		}
		
		if(settings["30Rate"]){
			refreshRate = 30;
		}
		
		if(settings["10Rate"]){
			refreshRate = 10;			
		}
		
	} else {
		refreshRate = 100;
	}
}


startup
{
	//1st tabs
	
	//settings.Add("Platform", true, "Platform");
	//settings.SetToolTip("Platform", "SET THIS UP BEFORE LAUNCHING THE GAME");
	settings.Add("Full Game Category", false, "Full Game Category");
	settings.Add("Individual Levels", false, "Individual Levels");
	settings.Add("Refresh rate of the autosplitter", true, "Refresh rate of the autosplitter");
	settings.Add("Extra", false, "Extra");
	
	//End of 1st tabs
	
	/*settings.CurrentDefaultParent = "Platform";
	settings.Add("Steam", true, "Steam (Default)");
	settings.Add("GOG", false, "GOG");
	
	settings.CurrentDefaultParent = "GOG";
	settings.Add("HD", true, "HD (Default)");
	settings.Add("SD", false, "SD (Only has Load time remover)");
	*/
	settings.CurrentDefaultParent = "Full Game Category";
	settings.Add("Category", true, "Category");
	settings.SetToolTip("Category", "Choose the category you're running, CHECK ONLY ONE");
	settings.CurrentDefaultParent = "Category";
	settings.Add("Any%", false, "Any%");
	settings.Add("All Bounties", false, "All Bounties");
	settings.Add("100%", false, "100%");
	settings.Add("Misc", false, "Misc");
	
	settings.CurrentDefaultParent = "100%";
	settings.Add("Counters", true, "Counters");
	settings.SetToolTip("Counters", "Displays counters in your layout for some of the objectives of the run");
	
	settings.CurrentDefaultParent = "Full Game Category";
	settings.Add("Restriction", true, "Restriction");
	
	settings.CurrentDefaultParent = "Restriction";
	settings.SetToolTip("Restriction", "Choose the restriction you're running, CHECK ONLY ONE");
	settings.Add("Unrestricted", false, "Unrestricted (works only with Any%)");
	settings.Add("No Ghost", false, "No Ghost");
	settings.Add("NMG", false, "NMG");
	settings.SetToolTip("NMG", "No Major Glitch");
	
	settings.CurrentDefaultParent = "Misc";
	settings.Add("20k", false, "20k");
	
	settings.CurrentDefaultParent = "20k";
	settings.Add("Moolah Counter", false, "Moolah Counter");
	settings.SetToolTip("Moolah Counter", "Adds a row in you layout to display a live counter of the Moolah you currently have");
	settings.Add("Split every:", false, "(Optional) Split every:");
	settings.SetToolTip("Split every:", "Will split on each X Moolah level you reach (Doesn't affect the final split of the run)");
	settings.CurrentDefaultParent = "Split every:";
	settings.Add("4k", false, "4k");
	settings.Add("5k", false, "5k");
	settings.Add("10k", false, "10k");
	
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
	
	settings.Add("150Rate", false, "150 refreshes per second");
	settings.SetToolTip("150Rate", "Sets the autosplitter to refresh 150 times per second.");
	
	settings.Add("200Rate", false, "200 refreshes per second");
	settings.SetToolTip("200Rate", "Sets the autosplitter to refresh 200 times per second.");
	
	settings.Add("250Rate", false, "250 refreshes per second");
	settings.SetToolTip("250Rate", "Sets the autosplitter to refresh 250 times per second.");
	
	settings.Add("500Rate", false, "500 refreshes per second");
	settings.SetToolTip("500Rate", "Sets the autosplitter to refresh 500 times per second. If you are playing on NASA computer");
	
	settings.CurrentDefaultParent = "Extra";
	settings.Add("Shopping", false, "Shopping");
	
	
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
}

update
{
	if(settings["100%"] && settings["Counters"]){
		vars.SetTextComponent("Barrels", (vars.barrel).ToString() + " / " + (vars.barrelsplit).ToString());
		vars.SetTextComponent("Chests", (vars.mchest).ToString() + " / " + (vars.chestsplit).ToString());
		vars.SetTextComponent("Pots", (vars.mpots).ToString() + " / " + (vars.potsplit).ToString());
		vars.SetTextComponent("Idol", (vars.idol).ToString() + " / " + (vars.idolsplit).ToString());
		return true;
	}
	if(settings["20k"] && settings["Moolah Counter"]){
		vars.SetTextComponent("Moolah", (vars.moolah).ToString() + " / " + "20000");
		return true;
	}
}

start
{
	vars.split = 0;
	vars.capture = 0;
	vars.rendu = 0;
	vars.cutscene = 0;
	vars.end = 0;
	vars.boat = 0;
	vars.barrel = 0;
	vars.barrelqs = 0;
	vars.mchest = 0;
	vars.mchestqs = 0;
	vars.mpots = 0;
	vars.mpotsqs = 0;
	vars.FrameRate = 100;
	vars.splitAlt = true;
	vars.mchestmem = current.mchest;
	vars.mpotsmem = current.mpots;
	vars.zone = 0;
	vars.barrelsplit = 0;
	vars.chestsplit = 0;
	vars.potsplit = 0;
	vars.idol = 0;
	vars.idolqs = 0;
	vars.idolsplit = 0;
	vars.moolah = 0;
	
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
	
	if(settings["Extra"]){
	
		if(settings["Shopping"]){
		
			if(current.godvalue < old.godvalue){
				return true;
			}
		}
	}
		
	if(settings["Full Game Category"]){

		if(old.diffmenu == 0 && current.diffmenu != old.diffmenu){
			return true;
		}
	}
}

reset
{
	if(settings["Individual Levels"]){
	
		if(settings["Tutorial"]){
		
			if(current.resettimer == 257){
				vars.split = 0;
				vars.capture = 0;
				vars.rendu = 0;
				vars.cutscene = 0;
				vars.end = 0;
				vars.boat = 0;
				vars.barrel = 0;
				vars.barrelqs = 0;
				vars.mchest = 0;
				vars.mchestqs = 0;
				vars.mpots = 0;
				vars.mpotsqs = 0;
				vars.mchestmem = current.mchest;
				vars.mpotsmem = current.mpots;
				vars.zone = 0;
				vars.barrelsplit = 0;
				vars.chestsplit = 0;
				vars.potsplit = 0;
				vars.idol = 0;
				vars.idolqs = 0;
				vars.idolsplit = 0;
				vars.moolah = 0;
				return true;
			}
		}
		
		else if(current.resetload > old.resetload && current.primeguy == 0){
		
			if(settings["Gizzard Gulch"] && current.zone == 4){
				return false;
			}
			
			else if(settings["Buzzarton"] && current.zone == 10){
				return false;
			}
				
			else if(settings["New Yolk City"] && current.zone == 3){
				return false;
			}
			else 
			vars.split = 0;
			vars.capture = 0;
			vars.rendu = 0;
			vars.cutscene = 0;
			vars.end = 0;
			vars.boat = 0;
			vars.barrel = 0;
			vars.barrelqs = 0;
			vars.mchest = 0;
			vars.mchestqs = 0;
			vars.mpots = 0;
			vars.mpotsqs = 0;
			vars.mchestmem = current.mchest;
			vars.mpotsmem = current.mpots;
			vars.zone = 0;
			vars.barrelsplit = 0;
			vars.chestsplit = 0;
			vars.potsplit = 0;
			vars.idol = 0;
			vars.idolqs = 0;
			vars.idolsplit = 0;
			vars.moolah = 0;
			return true;
		}
	}
	
	else if(current.resettimer == 257){
		vars.split = 0;
		vars.capture = 0;
		vars.rendu = 0;
		vars.cutscene = 0;
		vars.end = 0;
		vars.boat = 0;
		vars.barrel = 0;
		vars.barrelqs = 0;
		vars.mchest = 0;
		vars.mchestqs = 0;
		vars.mpots = 0;
		vars.mpotsqs = 0;
		vars.mchestmem = current.mchest;
		vars.mpotsmem = current.mpots;
		vars.zone = 0;
		vars.barrelsplit = 0;
		vars.chestsplit = 0;
		vars.potsplit = 0;
		vars.idol = 0;
		vars.idolqs = 0;
		vars.idolsplit = 0;
		vars.moolah = 0;
		return true;
	}
}

split
{
	if(settings["Refresh rate of the autosplitter"]){
	
		if(settings["500Rate"]){
			refreshRate = 500;
		}
	
		if(settings["250Rate"]){
			refreshRate = 250;
		}
	
		if(settings["200Rate"]){
			refreshRate = 200;
		}	
	
		if(settings["150Rate"]){
			refreshRate = 150;
		}
		
		if(settings["50Rate"]){
			refreshRate = 50;
			
		}
		if(settings["40Rate"]){
			refreshRate = 40;
		}
		
		if(settings["30Rate"]){
			refreshRate = 30;
		}
		
		if(settings["10Rate"]){
			refreshRate = 10;			
		}
		
	} else {
		refreshRate = 100;
	}

	
	vars.FrameRate = refreshRate;
	
	
	//Full Game Category
	
	if(settings["Full Game Category"]){


		//Any% Unrestricted
		
		if(settings["Any%"] && settings["Unrestricted"]){
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.cutscene++;
			}
			if(vars.split == 0 && vars.cutscene == 2){
				vars.split++;
				return true;
			//Tutorial
			}
		
			if(current.zone == 39 && current.cutscene > old.cutscene && vars.split == 1){
				vars.split++;
				return true;
			//Gizzard Gulch Skip	
			}
		
			if(current.zone == 77 && current.cutscene > old.cutscene && vars.split == 2){
				vars.split++;
				return true;
			//Buzzarton Skip
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 3){
				vars.split++;
				return true;
			}
			else if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 3){
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
		
			if(current.zone == 2 && current.cutscene > old.cutscene && vars.split == 6){
				vars.split++;
				return true;
			//Dusky Hollow
			}
			
			if(current.zone == 6 && current.cutscene > old.cutscene && vars.split == 7){
				vars.cutscene++;
			}
			if(vars.cutscene == 4 && vars.split == 7){
				vars.split++;
				return true;
			//RNG
			}
		
			if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				return true;
			//Boat Skip
			}
			
			if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 9){
				vars.boat++;
			}
			if(vars.boat == 2 && vars.split == 9){
				vars.split++;
				return true;
			}	
			else if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 9){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 10){
				vars.cutscene++;
			}
			if(vars.split == 10 && vars.cutscene == 6){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if(current.zone == 8 && current.cutscene > old.cutscene && vars.split == 11){
				vars.split++;
				return true;
			//Some More Boat
			}
			
			if(current.zone == 10 && current.godvalue > old.godvalue && vars.split == 12){
				vars.split++;
				return true;
			//Gloktigi Clip
			}
		
			if(current.zone == 8 && current.cutscene > old.cutscene && vars.split == 13){
				vars.split++;
				return true;
			//Sekto's Lair
			}
		
			if(current.zone == 12 && current.cutscene > old.cutscene && vars.split == 14){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.cutscene > old.cutscene && vars.split == 15){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.quicksave > old.quicksave && vars.split == 16 && vars.end == 0){
				vars.end++;
			}
			
			if(vars.end == 1 && current.cutscene > old.cutscene && vars.split == 16){
				vars.split++;
				return true;
			//Sekto
			}
		}
		
		
		
		
		//Any% No Ghost
		
		if(settings["Any%"] && settings["No Ghost"]){
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.cutscene++;
			}
			if(vars.split == 0 && vars.cutscene == 2){
				vars.split++;
				return true;
			//Tutorial
			}
		
			if(current.zone == 39 && current.cutscene > old.cutscene && vars.split == 1){
				vars.split++;
				return true;
			//Gizzard Gulch Skip	
			}
		
			if(current.zone == 77 && current.cutscene > old.cutscene && vars.split == 2){
				vars.split++;
				return true;
			//Buzzarton Skip
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 3){
				vars.split++;
				return true;
			}
			else if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 3){
				vars.split++;
				return true;
			//Welcome to the Jungle
			}
		
			if(current.bounty > old.bounty && vars.split == 4 && vars.capture == 0){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 4 && vars.rendu == 0 && vars.capture == 1){
				vars.rendu++;
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
		
			if(current.zone == 6 && current.cutscene > old.cutscene && vars.split == 8){
				vars.cutscene++;
			}
			if(vars.cutscene == 4 && vars.split == 8){
				vars.split++;
				return true;
			//RNG
			}
		
			if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 9){
				vars.split++;
				return true;
			//Boat Skip
			}
		
			if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 10){
				vars.boat++;
			}
			if(vars.boat == 2 && vars.split == 10){
				vars.split++;
				return true;
			}	
			else if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 10){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 11){
				vars.cutscene++;
			}
			if(vars.split == 11 && vars.cutscene == 6){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if(current.godvalue == current.nerfshop && vars.split == 12) {
				vars.split++;
				return true;
			//Some More Boat
			}
		
			if(current.zone == 10 && current.godvalue > old.godvalue && vars.split == 13){
				vars.split++;
				return true;
			//Gloktigi Skip
			}
		
			if(current.zone == 8 && current.cutscene > old.cutscene && vars.split == 14){
				vars.split++;
				return true;
			//Sekto's Lair
			}
		
			if(current.zone == 12 && current.cutscene > old.cutscene && vars.split == 15){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.cutscene > old.cutscene && vars.split == 16){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.quicksave > old.quicksave && vars.split == 17 && vars.end == 0){
				vars.end++;
			}
			
			if(vars.end == 1 && current.cutscene > old.cutscene && vars.split == 17){
				vars.split++;
				return true;
			//Sekto
			}
		}
		
		
		
		//Any% NMG
		
		if(settings["Any%"] && settings["NMG"]){
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.cutscene++;
			}
			if(vars.split == 0 && vars.cutscene == 2){
				vars.split++;
				return true;
			//Tutorial
			}
		
			if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 0){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 0 && vars.capture == 1){
				vars.rendu++;
				vars.split++;
				return true;
			//Filthy Hands Floyd
			}
		
			if(current.zone == 39 && current.cutscene > old.cutscene && vars.split == 2){
				vars.split++;
				return true;
			//Gizzard Gulch Skip	
			}
		
			if(current.zone == 77 && current.cutscene > old.cutscene && vars.split == 3){
				vars.split++;
				return true;
			//Buzzarton Skip
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 4){
				vars.split++;
				return true;
			}
			else if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 4){
				vars.split++;
				return true;
			//Welcome to the Jungle
			}
		
			if(current.zone == 2 && old.zone == 4 && vars.zone == 0 && vars.split == 5){
				vars.zone++;
			}
			if(current.zone == 4 && old.zone == 2 && vars.zone == 1 && vars.split == 5){
				vars.zone++;
			}
			if(current.primeguy > old.primeguy && vars.split == 5 && vars.rendu == 1 && vars.zone == 2){
				vars.split++;
				return true;
			//Xplosives McGee
			}
		
			if(current.zone == 69 && current.cutscene > old.cutscene && vars.split == 6){
				vars.split++;
				return true;
			//River Skip
			}
		
			if(current.river < old.river && current.godvalue == current.river && vars.split == 7){
				vars.split++;
				return true;
			//Ambush
			}
		
			if(current.zone == 2 &&  current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				return true;
			//Dusky Hollow
			}
		
			if(current.zone == 30 && current.cutscene > old.cutscene && vars.split == 9){
				vars.split++;
				return true;
			//Wolvark Docks
			}
		
			if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 10){
				vars.split++;
				return true;
			//Grubb Village fight
			}
		
			if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 11){
				vars.boat++;
			}
			if(vars.boat == 2 && vars.split == 11){
				vars.split++;
				return true;
			}	
			else if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 11){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 12){
				vars.cutscene++;
			}
			if(vars.split == 12 && vars.cutscene == 4){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if(current.godvalue == current.nerfshop && vars.split == 13) {
				vars.split++;
				return true;
			//Some More Boat
			}
		
			if(current.zone == 10 && current.godvalue > old.godvalue && vars.split == 14){
				vars.split++;
				return true;
			//Gloktigi Skip
			}
		
			if(current.zone == 8 && current.cutscene > old.cutscene && vars.split == 15){
				vars.split++;
				return true;
			//Sekto's Lair
			}
		
			if(current.zone == 12 && current.cutscene > old.cutscene && vars.split == 16){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.cutscene > old.cutscene && vars.split == 17){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.quicksave > old.quicksave && vars.split == 18 && vars.end == 0){
				vars.end++;
			}
			
			if(vars.end == 1 && current.cutscene > old.cutscene && vars.split == 18){
				vars.split++;
				return true;
			//Sekto
			}
		}

		
		
		//All Bounties No Ghost
		
		if(settings["All Bounties"] && settings["No Ghost"]){
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.cutscene++;
			}
			if(vars.split == 0 && vars.cutscene == 2){
				vars.split++;
				return true;
			//Tutorial
			}
		
			if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 0){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 0 && vars.capture == 1){
				vars.rendu++;
				vars.split++;
				return true;
			//Filthy Hands Floyd
			}
		
			if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 2 && vars.rendu == 1 && vars.capture == 2){
				vars.rendu++;
				vars.split++;
				return true;
			//Looten Duke
			}
		
			if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 3 && vars.rendu == 2 && vars.capture == 3){
				vars.rendu++;
				vars.split++;
				return true;
			//Boilz Booty
			}
		
			if(current.bounty > old.bounty && vars.split == 4 && vars.capture == 3){
				vars.capture++;
				vars.split++;
				return true;
			//Jo Momma
			}
		
			if(current.primeguy > old.primeguy && vars.split == 5 && vars.rendu == 3 && vars.capture == 4){
				vars.rendu++;
				vars.split++;
				return true;
			//Eugene Ius
			}
		
			if(current.bounty > old.bounty && vars.split == 6 && vars.capture == 4){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 6 && vars.rendu == 4 && vars.capture == 5){
				vars.rendu++;
				vars.split++;
				return true;
			//Meagly McGraw
			}
		
			if(current.bounty > old.bounty && vars.split == 7 && vars.capture == 5){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 7 && vars.rendu == 5 && vars.capture == 6){
				vars.rendu++;
				vars.split++;
				return true;
			//Packrat Palooka
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				return true;
			}
			else if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				return true;
			//Welcome to the jungle
			}
		
			if(current.bounty > old.bounty && vars.split == 9 && vars.capture == 6){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 9 && vars.rendu == 6 && vars.capture == 7){
				vars.rendu++;
				vars.split++;
				return true;
			//Xplosives McGee
			}
		
			if(current.bounty > old.bounty && vars.split == 10 && vars.capture == 7 && current.zone == 28){
				vars.capture++;
			}
			if(current.zone == 28 && current.cutscene > old.cutscene && vars.split == 10 && vars.capture == 8){
				vars.split++;
				return true;
			//Fatty McBoomboom
			}
			
			if(current.zone == 56 && current.cutscene > old.cutscene && vars.split == 11 && vars.capture == 8){
				vars.cutscene++;
			}
			if(current.zone == 56 && vars.split == 11 && vars.cutscene == 4 && vars.capture == 8){
				vars.split++;
				return true;
			//Giant Sleg
			}
			
			if(current.bounty > old.bounty && vars.split == 12 && vars.capture == 8 && current.zone == 66){
				vars.capture++;	
			}
			else if(current.bounty > old.bounty && vars.split == 12 && vars.capture == 8 && current.zone == 54){
				vars.capture++;
			}
			if(current.cutscene > old.cutscene && vars.split == 12 && vars.capture == 9){
				vars.split++;
				return true;
			//Elboze Freely
			}
		
			if(current.bounty > old.bounty && vars.split == 13 && vars.capture == 9){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 13 && vars.rendu == 7 && vars.capture == 10){
				vars.rendu++;
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
		
			if(current.zone == 6 && current.cutscene > old.cutscene && vars.split == 17){
				vars.cutscene++;
			}
			if(vars.cutscene == 6 && vars.split == 17){
				vars.split++;
				return true;
			//RNG
			}
		
			if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 18){
				vars.split++;
				return true;
			//Boat Skip
			}
		
			if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 19){
				vars.boat++;
			}
			if(vars.boat == 2 && vars.split == 19){
				vars.split++;
				return true;
			}	
			else if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 19){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 20){
				vars.cutscene++;
			}
			if(vars.split == 20 && vars.cutscene == 8){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if (current.godvalue == current.nerfshop && vars.split == 21){
				vars.split++;
				return true;
			//Some More Boat
			}
		
			if(current.zone == 10 && current.godvalue > old.godvalue && vars.split == 22){
				vars.split++;
				return true;
			//Gloktigi Skip
			}
		
			if(current.zone == 8 && current.cutscene > old.cutscene && vars.split == 23){
				vars.split++;
				return true;
			//Sekto's Lair
			}
		
			if(current.zone == 12 && current.cutscene > old.cutscene && vars.split == 24){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.cutscene > old.cutscene && vars.split == 25){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.quicksave > old.quicksave && vars.split == 26 && vars.end == 0){
				vars.end++;
			}
			
			if(vars.end == 1 && current.cutscene > old.cutscene && vars.split == 26){
				vars.split++;
				return true;
			//Sekto
			}
		}
		
		
		
		//All Bounties NMG
		
		if(settings["All Bounties"] && settings["NMG"]){
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.cutscene++;
			}
			if(vars.split == 0 && vars.cutscene == 2){
				vars.split++;
				return true;
			//Tutorial
			}
		
			if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 0){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 0 && vars.capture == 1){
				vars.rendu++;
				vars.split++;
				return true;
			//Filthy Hands Floyd
			}
		
			if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 2 && vars.rendu == 1 && vars.capture == 2){
				vars.rendu++;
				vars.split++;
				return true;
			//Looten Duke
			}
		
			if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 3 && vars.rendu == 2 && vars.capture == 3){
				vars.rendu++;
				vars.split++;
				return true;
			//Boilz Booty
			}
		
			if(current.bounty > old.bounty && vars.split == 4 && vars.capture == 3){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 4 && vars.rendu == 3 && vars.capture == 4){
				vars.rendu++;
				vars.split++;
				return true;
			//Jo Momma
			}
		
			if(current.primeguy > old.primeguy && vars.split == 5 && vars.rendu == 4 && vars.capture == 4){
				vars.rendu++;
				vars.split++;
				return true;
			//Eugene Ius
			}
		
			if(current.bounty > old.bounty && vars.split == 6 && vars.capture == 4){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 6 && vars.rendu == 5 && vars.capture == 5){
				vars.rendu++;
				vars.split++;
				return true;
			//Meagly McGraw
			}
		
			if(current.bounty > old.bounty && vars.split == 7 && vars.capture == 5){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 7 && vars.rendu == 6 && vars.capture == 6){
				vars.rendu++;
				vars.split++;
				return true;
			//Packrat Palooka
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				return true;
			}
			else if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				return true;
			//Welcome to the jungle
			}

			if(current.zone == 2 && old.zone == 4 && vars.zone == 0 && vars.split == 9){
				vars.zone++;
			}
			if(current.zone == 4 && old.zone == 2 && vars.zone == 1 && vars.split == 9){
				vars.zone++;
			}
			
			if(current.primeguy > old.primeguy && vars.split == 9 && vars.rendu == 7 && vars.zone == 2){
				vars.rendu++;
				vars.split++;
				return true;
			//Xplosives McGee
			}
		
			if(current.zone == 2 && old.zone == 4 && vars.zone == 2 && vars.split == 10){
				vars.zone++;
			}
			if(current.zone == 4 && old.zone == 2 && vars.zone == 3 && vars.split == 10){
				vars.zone++;
			}
			if(current.primeguy > old.primeguy && vars.split == 10 && vars.rendu == 8 && vars.zone == 4){
				vars.rendu++;
				vars.split++;
				return true;
			//Boss 1
			}
		
			if(current.zone == 2 && old.zone == 4 && vars.zone == 4 && vars.split == 11){
				vars.zone++;
			}
			if(current.primeguy > old.primeguy && vars.split == 11 && vars.rendu == 9 && vars.zone == 5){
				vars.rendu++;
				vars.split++;
				return true;
			//Boss 2
			}
		
			if(current.zone == 2 && old.zone == 4 && vars.zone == 5 && vars.split == 12){
				vars.zone++;
			}
			if(current.primeguy > old.primeguy && vars.split == 12 && vars.rendu == 10 && vars.zone == 6){
				vars.rendu++;
				vars.split++;
				return true;
			//Boss 3
			}
		
			if(current.zone == 9 && current.cutscene > old.cutscene && vars.split == 13){
				vars.split++;
				return true;
			//Mongo River
			}
		
			if(current.river < old.river && current.godvalue == current.river && vars.split == 14){
				vars.split++;
				return true;
			//Ambush
			}
		
			if(current.zone == 2 &&  current.cutscene > old.cutscene && vars.split == 15){
				vars.split++;
				return true;
			//Dusky Hollow
			}
		
			if(current.zone == 30 && current.cutscene > old.cutscene && vars.split == 16){
				vars.split++;
				return true;
			//Wolvark Docks
			}
		
			if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 17){
				vars.split++;
				return true;
			//Grubb Village fight
			}
		
			if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 18){
				vars.boat++;
			}
			if(vars.boat == 2 && vars.split == 18){
				vars.split++;
				return true;
			}	
			else if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 18){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 19){
				vars.cutscene++;
			}
			if(vars.split == 19 && vars.cutscene == 4){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if(current.godvalue == current.nerfshop && vars.split == 20) {
				vars.split++;
				return true;
			//Some More Boat
			}
		
			if(current.zone == 10 && current.godvalue > old.godvalue && vars.split == 21){
				vars.split++;
				return true;
			//Gloktigi Skip
			}
		
			if(current.zone == 8 && current.cutscene > old.cutscene && vars.split == 22){
				vars.split++;
				return true;
			//Sekto's Lair
			}
		
			if(current.zone == 12 && current.cutscene > old.cutscene && vars.split == 23){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.cutscene > old.cutscene && vars.split == 24){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.quicksave > old.quicksave && vars.split == 25 && vars.end == 0){
				vars.end++;
			}
			
			if(vars.end == 1 && current.cutscene > old.cutscene && vars.split == 25){
				vars.split++;
				return true;
			//Sekto
			}
		}

		

		//100% COUNTERS
		
		if(settings["100%"]){
		
			if(settings["Counters"]){
		
				//Barrels counter
				
				if(current.barrel > old.barrel && current.statusobject != old.statusobject){
					vars.barrel++;
				}

				if(current.quicksave > old.quicksave){
					while(vars.barrelqs < vars.barrel){
						vars.barrelqs++;
					}
				}
				if(vars.split == 3 && current.cutscene > old.cutscene){
					while(vars.barrelqs < vars.barrel){
						vars.barrelqs++;
					}
				}
				if(current.quickload == 0){
					while(vars.barrel > vars.barrelqs){
						vars.barrel--;
					}
				}
				
				//Moolah Chests counter
				
				if(current.mchest > old.mchest){
					vars.mchest++;
					vars.mchestmem++;
				}
				while(vars.mchestmem < current.mchest){
					vars.mchest++;
					vars.mchestmem++;
				}
				if(current.quicksave > old.quicksave){
					while(vars.mchestqs < vars.mchest){
						vars.mchestqs++;
					}
				}
				if(vars.split == 3 && current.cutscene > old.cutscene){
					while(vars.mchestqs < vars.mchest){
						vars.mchestqs++;
					}
				}
				if(current.quickload == 0){
					while(vars.mchest > vars.mchestqs){
						vars.mchest--;
					}
				}
				
				//Moolah Pots counter (+ Idol)
				
				if(current.mpots != old.mpots){
					vars.mpots++;
					vars.mpotsmem++;
				}
				if(vars.mpotsmem == 8){
					vars.mpotsmem = 0;
				}
				while(vars.mpotsmem != current.mpots && vars.mpotsmem < 8){
					vars.mpots++;
					vars.mpotsmem++;
				}
				
				if(vars.split == 5 && vars.mpots == 9){
					vars.mpots--;
					vars.idol++;
				}
				
				if(vars.split == 5 && vars.idol == 1 && current.quicksave > old.quicksave && vars.idolqs == 0){
					vars.idolqs++;
				}
				
				if(vars.split == 5 && vars.idol == 1 && current.quickload == 0 && vars.idolqs == 0){
					vars.idol = 0;
				}
				
				if(current.quicksave > old.quicksave){
					while(vars.mpotsqs < vars.mpots){
						vars.mpotsqs++;
					}
				}
				if(vars.split == 8 && current.cutscene > old.cutscene){
					while(vars.mpotsqs < vars.mpots){
						vars.mpotsqs++;
					}
				}
				if(current.quickload == 0){
					while(vars.mpots > vars.mpotsqs){
						vars.mpots--;
					}
				}
			}
		}
		
		//100% SPLITS

		
		
		//100% No Ghost
		
		if(settings["100%"] && settings["No Ghost"]){
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.cutscene++;
			}
			if(vars.split == 0 && vars.cutscene == 2){
				vars.split++;
				vars.barrelsplit = 1;
				return true;
			//Tutorial
			}
		
			if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 0){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 0 && vars.capture == 1){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 8;
				return true;
			//Filthy Hands Floyd
			}
		
			if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 2 && vars.rendu == 1 && vars.capture == 2){
				vars.rendu++;
				vars.split++;
				vars.barrelsplit = 3;
				vars.chestsplit = 14;
				return true;
			//Looten Duke
			}
		
			if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 3 && vars.rendu == 2 && vars.capture == 3){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 17;
				return true;
			//Boilz Booty
			}
		
			if(current.zone == 60 && current.bounty > old.bounty && vars.split == 4 && vars.capture == 3){
				vars.capture++;
			}
			if(current.cutscene > old.cutscene && vars.split == 4 && vars.capture == 4){
				vars.split++;
				vars.chestsplit = 26;
				vars.potsplit = 8;
				vars.idolsplit = 1;
				return true;
			//Jo Momma
			}
		
			if(current.primeguy > old.primeguy && vars.split == 5 && vars.rendu == 3 && vars.capture == 4){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 32;
				return true;
			//Eugene Ius
			}
		
			if(current.bounty > old.bounty && vars.split == 6 && vars.capture == 4){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 6 && vars.rendu == 4 && vars.capture == 5){
				vars.rendu++;
				vars.split++;
				vars.barrelsplit = 4;
				vars.chestsplit = 39;
				return true;
			//Meagly McGraw
			}
		
			if(current.bounty > old.bounty && vars.split == 7 && vars.capture == 5){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 7 && vars.rendu == 5 && vars.capture == 6){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 44;
				vars.potsplit = 13;
				return true;
			//Packrat Palooka
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				vars.barrelsplit = 5;
				vars.chestsplit = 47;
				return true;
			}
			else if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				vars.barrelsplit = 5;
				vars.chestsplit = 47;
				return true;
			//Welcome to the jungle
			}
		
			if(current.bounty > old.bounty && vars.split == 9 && vars.capture == 6){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 9 && vars.rendu == 6 && vars.capture == 7){
				vars.rendu++;
				vars.split++;
				vars.barrelsplit = 6;
				vars.chestsplit = 54;
				vars.potsplit = 15;
				return true;
			//Xplosives McGee
			}
		
			if(current.bounty > old.bounty && vars.split == 10 && vars.capture == 7 && current.zone == 28){
				vars.capture++;
			}
			if(current.zone == 28 && current.cutscene > old.cutscene && vars.split == 10 && vars.capture == 8){
				vars.split++;
				vars.chestsplit = 56;
				vars.potsplit = 17;
				return true;
			//Fatty McBoomboom
			}
			
			if(current.zone == 56 && current.cutscene > old.cutscene && vars.split == 11 && vars.capture == 8){
				vars.cutscene++;
			}
			if(current.zone == 56 && vars.split == 11 && vars.cutscene == 4 && vars.capture == 8){
				vars.split++;
				vars.chestsplit = 61;
				vars.potsplit = 18;
				return true;
			//Giant Sleg
			}
		
			if(current.bounty > old.bounty && vars.split == 12 && vars.capture == 8 && current.zone == 66){
				vars.capture++;	
			}
			else if(current.bounty > old.bounty && vars.split == 12 && vars.capture == 8 && current.zone == 54){
				vars.capture++;
			}
			if(current.cutscene > old.cutscene && vars.split == 12 && vars.capture == 9){
				vars.split++;
				vars.chestsplit = 69;
				return true;
			//Elboze Freely
			}
		
			if(current.bounty > old.bounty && vars.split == 13 && vars.capture == 9){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 13 && vars.rendu == 7 && vars.capture == 10){
				vars.rendu++;
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
				vars.barrelsplit = 8;
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
		
			if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 19){
				vars.boat++;
			}
			if(vars.boat == 2 && vars.split == 19){
				vars.split++;
				return true;
			}	
			else if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 19){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 20){
				vars.cutscene++;
			}
			if(vars.split == 20 && vars.cutscene == 6){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if (current.godvalue == current.nerfshop && vars.split == 21){
				vars.split++;
				vars.barrelsplit = 9;
				return true;
			//Some More Boat
			}
		
			if(current.zone == 10 && current.godvalue > old.godvalue && vars.split == 22){
				vars.split++;
				return true;
			//Gloktigi Skip
			}
		
			if(current.zone == 8 && current.cutscene > old.cutscene && vars.split == 23){
				vars.split++;
				vars.barrelsplit = 10;
				return true;
			//Sekto's Lair
			}
		
			if(current.zone == 12 && current.cutscene > old.cutscene && vars.split == 24){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.cutscene > old.cutscene && vars.split == 25){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.quicksave > old.quicksave && vars.split == 26 && vars.end == 0){
				vars.end++;
			}
			
			if(vars.end == 1 && current.cutscene > old.cutscene && vars.split == 26){
				vars.split++;
				return true;
			//Sekto
			}
		}
		
		
		
		//100% NMG
		
		if(settings["100%"] && settings["NMG"]){
		
			if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
				vars.cutscene++;
			}
			if(vars.split == 0 && vars.cutscene == 2){
				vars.split++;
				vars.barrelsplit = 1;
				return true;
			//Tutorial
			}
		
			if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 0){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 0 && vars.capture == 1){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 8;
				return true;
			//Filthy Hands Floyd
			}
		
			if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 2 && vars.rendu == 1 && vars.capture == 2){
				vars.rendu++;
				vars.split++;
				vars.barrelsplit = 3;
				vars.chestsplit = 14;
				return true;
			//Looten Duke
			}
		
			if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 3 && vars.rendu == 2 && vars.capture == 3){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 17;
				return true;
			//Boilz Booty
			}
		
			if(current.bounty > old.bounty && vars.split == 4 && vars.capture == 3){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 4 && vars.rendu == 3 && vars.capture == 4){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 26;
				vars.potsplit = 8;
				vars.idolsplit = 1;
				return true;
			//Jo Momma
			}
		
			if(current.primeguy > old.primeguy && vars.split == 5 && vars.rendu == 4 && vars.capture == 4){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 32;
				return true;
			//Eugene Ius
			}
		
			if(current.bounty > old.bounty && vars.split == 6 && vars.capture == 4){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 6 && vars.rendu == 5 && vars.capture == 5){
				vars.rendu++;
				vars.split++;
				vars.barrelsplit = 4;
				vars.chestsplit = 39;
				return true;
			//Meagly McGraw
			}
		
			if(current.bounty > old.bounty && vars.split == 7 && vars.capture == 5){
				vars.capture++;
			}
			if(current.primeguy > old.primeguy && vars.split == 7 && vars.rendu == 6 && vars.capture == 6){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 44;
				vars.potsplit = 13;
				return true;
			//Packrat Palooka
			}
		
			if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				vars.barrelsplit = 5;
				vars.chestsplit = 47;
				return true;
			}
			else if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 8){
				vars.split++;
				vars.barrelsplit = 5;
				vars.chestsplit = 47;
				return true;
			//Welcome to the jungle
			}
		
			if(current.zone == 2 && old.zone == 4 && vars.zone == 0 && vars.split == 9){
				vars.zone++;
			}
			if(current.zone == 4 && old.zone == 2 && vars.zone == 1 && vars.split == 9){
				vars.zone++;
			}
			
			if(current.primeguy > old.primeguy && vars.split == 9 && vars.rendu == 7 && vars.zone == 2){
				vars.rendu++;
				vars.split++;
				vars.barrelsplit = 6;
				vars.chestsplit = 56;
				vars.potsplit = 15;
				return true;
			//Xplosives McGee
			}
		
			if(current.zone == 2 && old.zone == 4 && vars.zone == 2 && vars.split == 10){
				vars.zone++;
			}
			if(current.zone == 4 && old.zone == 2 && vars.zone == 3 && vars.split == 10){
				vars.zone++;
			}
			if(current.primeguy > old.primeguy && vars.split == 10 && vars.rendu == 8 && vars.zone == 4){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 62;
				return true;
			//Boss 1 (Fatty)
			}
		
			if(current.zone == 2 && old.zone == 4 && vars.zone == 4 && vars.split == 11){
				vars.zone++;
			}
			if(current.primeguy > old.primeguy && vars.split == 11 && vars.rendu == 9 && vars.zone == 5){
				vars.rendu++;
				vars.split++;
				vars.chestsplit = 69;
				vars.potsplit = 18;
				return true;
			//Boss 2 (Elboze)
			}
		
			if(current.zone == 2 && old.zone == 4 && vars.zone == 5 && vars.split == 12){
				vars.zone++;
			}
			if(current.primeguy > old.primeguy && vars.split == 12 && vars.rendu == 10 && vars.zone == 6){
				vars.rendu++;
				vars.split++;
				return true;
			//Boss 3 (Lefty)
			}
		
			if(current.zone == 9 && current.cutscene > old.cutscene && vars.split == 13){
				vars.split++;
				return true;
			//Mongo River
			}
		
			if(current.river < old.river && current.godvalue == current.river && vars.split == 14){
				vars.split++;
				return true;
			//Ambush
			}
		
			if(current.zone == 2 &&  current.cutscene > old.cutscene && vars.split == 15){
				vars.split++;
				vars.barrelsplit = 8;
				return true;
			//Dusky Hollow
			}
		
			if(current.zone == 30 && current.cutscene > old.cutscene && vars.split == 16){
				vars.split++;
				return true;
			//Wolvark Docks
			}
		
			if(current.zone == 33 && current.cutscene > old.cutscene && vars.split == 17){
				vars.split++;
				return true;
			//Grubb Village fight
			}
		
			if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 18){
				vars.boat++;
			}
			if(vars.boat == 2 && vars.split == 18){
				vars.split++;
				return true;
			}	
			else if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 18){
				vars.split++;
				return true;
			//Row Your Boat
			}
		
			if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 19){
				vars.cutscene++;
			}
			if(vars.split == 19 && vars.cutscene == 4){
				vars.split++;
				return true;
			//Last Legs
			}
		
			if(current.godvalue == current.nerfshop && vars.split == 20) {
				vars.split++;
				vars.barrelsplit = 9;
				return true;
			//Some More Boat
			}
		
			if(current.zone == 10 && current.godvalue > old.godvalue && vars.split == 21){
				vars.split++;
				return true;
			//Gloktigi Skip
			}
		
			if(current.zone == 8 && current.cutscene > old.cutscene && vars.split == 22){
				vars.split++;
				vars.barrelsplit = 10;
				return true;
			//Sekto's Lair
			}
		
			if(current.zone == 12 && current.cutscene > old.cutscene && vars.split == 23){
				vars.split++;
				return true;
			//Timer Rush
			}
		
			if(current.cutscene > old.cutscene && vars.split == 24){
				vars.split++;
				return true;
			//Gloktigi Twins
			}
		
			if(current.quicksave > old.quicksave && vars.split == 25 && vars.end == 0){
				vars.end++;
			}
			
			if(vars.end == 1 && current.cutscene > old.cutscene && vars.split == 25){
				vars.split++;
				return true;
			//Sekto
			}
		}

			
		
		//Misc
		
		if(settings["Misc"]){
		
			//20k
		
			if(settings["20k"]){
			
				while(vars.moolah > current.moolah && current.moolah > 0){
					vars.moolah--;
				}
				while(vars.moolah < current.moolah && current.moolah > 0){
					vars.moolah++;
				}
				
				if(vars.moolah >= 20000 && current.cutscene > old.cutscene && current.zone == 69){
					return true;
				}
				
				if(settings["Split every:"]){
				
					if(settings["4k"]){
					
						if(current.moolah >= 4000 && vars.split == 0){
							vars.split++;
							return true;
						}
						if(current.moolah >= 8000 && vars.split == 1){
							vars.split++;
							return true;
						}
						if(current.moolah >= 12000 && vars.split == 2){
							vars.split++;
							return true;
						}
						if(current.moolah >= 16000 && vars.split == 3){
							vars.split++;
							return true;
						}
						if(current.moolah >= 20000 && vars.split == 4){
							vars.split++;
							return true;
						}
					}
					
					if(settings["5k"]){
				
						if(current.moolah >= 5000 && vars.split == 0){
							vars.split++;
							return true;
						}
						if(current.moolah >= 10000 && vars.split == 1){
							vars.split++;
							return true;
						}
						if(current.moolah >= 15000 && vars.split == 2){
							vars.split++;
							return true;
						}
						if(current.moolah >= 20000 && vars.split == 3){
							vars.split++;
							return true;
						}
					}
					
					if(settings["10k"]){
				
						if(current.moolah >= 10000 && vars.split == 0){
							vars.split++;
							return true;
						}
						if(current.moolah >= 20000 && vars.split == 1){
							vars.split++;
							return true;
						}
					}
				}
			}
		}
	}
	
	
	
	//Individual Levels
	
	if(settings["Individual Levels"]){
			
			
			
		//SINGLE SPLIT
			
		if(settings["Single split"]){
	
			if(settings["Tutorial"]){
		
				if(current.zone == 11 && current.cutscene > old.cutscene && vars.split == 0){
					vars.cutscene++;
				}
				if(vars.split == 0 && vars.cutscene == 2){
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
						vars.split++;
						return true;
					//Other Bounties
					}
				}
		
				if(settings["Eugene Ius"]){
			
					if(current.primeguy > old.primeguy && vars.rendu == 0){
						vars.rendu++;
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
		
				if(current.zone == 33 &&  current.cutscene > old.cutscene && vars.split == 0){
					vars.split++;
					return true;
				//Grubb Village + Wolvark Docks
				}
			}
		
			if(settings["Rowing"]){
		
				if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 0){
					vars.boat++;
				}
				if(vars.boat == 2 && vars.split == 0){
					vars.split++;
					return true;
				}	
				else if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 0){
					vars.split++;
					return true;
				//Rowing
				}
			}
		
			if(settings["Last Legs"]){
		
				if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 0){
					vars.cutscene++;
				}
				if(vars.split == 0 && vars.cutscene == 2){
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
		
				if(current.zone == 8 && current.cutscene > old.cutscene && vars.split == 0){
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
			
				if(current.cutscene > old.cutscene && vars.split == 0){
					vars.split++;
				}
				
				if(current.quicksave > old.quicksave && vars.split == 1 && vars.end == 0){
					vars.end++;
				}
				
				if(vars.end == 1 && current.cutscene > old.cutscene && vars.split == 1){
					vars.split++;
					return true;
				//Sekto
				}
			}
			
			if(settings["Individual Regions"]){
			
				if(settings["Gizzard Gulch"]){
				
					if(current.zone == 39 && current.cutscene > old.cutscene){
						vars.split++;
						return true;
					//Boilz Booty
					}
				}
				
				if(settings["Buzzarton"]){
					
					if(current.zone == 77 && current.cutscene > old.cutscene){
						vars.split++;
						return true;
					//End
					}
				}
				
				if(settings["New Yolk City"]){
				
					if(current.zone == 9 && current.cutscene > old.cutscene){
						vars.cutscene++;
					}
					if(vars.cutscene == 2){
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
					vars.cutscene++;
				}
				if(vars.split == 0 && vars.cutscene == 2){
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
						vars.split++;
						return true;
					//Other Bounties
					}
				}
		
				if(settings["Eugene Ius"]){
			
					if(current.primeguy > old.primeguy && vars.rendu == 0){
						vars.rendu++;
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
			
				if(current.zone == 6 && current.cutscene > old.cutscene && vars.split == 0){
					vars.cutscene++;
				}
				if(vars.cutscene == 2 && vars.split == 0){
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
		
				if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 0){
					vars.boat++;
				}
				if(vars.boat == 2 && vars.split == 0){
					vars.split++;
					return true;
				}	
				else if(current.zone == 5 && current.cutscene > old.cutscene && vars.split == 0){
					vars.split++;
					return true;
				//Rowing
				}
			}
		
			if(settings["Last Legs"]){
		
				if(current.zone == 1 && current.cutscene > old.cutscene && vars.split == 0){
					vars.cutscene++;
				}
				if(vars.split == 0 && vars.cutscene == 2){
					vars.split++;
					return true;
				//Last Legs
				}
			}
			
			if(settings["Dam Entrance"]){
			
				if(current.godvalue == current.nerfshop && vars.split == 0){
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
		
				if(current.zone == 8 && current.cutscene > old.cutscene && vars.split == 0){
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
			
				if(current.cutscene > old.cutscene && vars.split == 0){
					vars.split++;
					return true;
				//Gloktigi Twins
				}
				
				if(current.quicksave > old.quicksave && vars.split == 1 && vars.end == 0){
					vars.end++;
				}
				
				if(vars.end == 1 && current.cutscene > old.cutscene && vars.split == 1){
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
						vars.split++;
						return true;
					//Filthy Hands Floyd
					}
	
					if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 1){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 1 && vars.capture == 2){
						vars.rendu++;
						vars.split++;
						return true;
					//Looten Duke
					}
	
					if(current.zone == 39 && current.cutscene > old.cutscene && vars.split == 2){
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
						vars.split++;
						return true;
					//Eugene Ius
					}
	
					if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 2 && vars.rendu == 1 && vars.capture == 2){
						vars.rendu++;
						vars.split++;
						return true;
					//Meagly McGraw
					}
	
					if(current.bounty > old.bounty && vars.split == 3 && vars.capture == 2){
						vars.capture++;
					}
					
					if(current.primeguy > old.primeguy && vars.split == 3 && vars.rendu == 2 && vars.capture == 3){
						vars.rendu++;
						vars.split++;
						return true;
					//Packrat Palooka
					}
					
					if(current.zone == 77 && current.cutscene > old.cutscene && vars.split == 4){
						vars.split++;
						return true;
					//End
					}
					
				}
				
				if(settings["New Yolk City"]){
				
					if(current.zone == 16 && current.cutscene > old.cutscene && vars.split == 0){
						vars.split++;
						return true;
					}
					else if(current.zone == 4 && current.cutscene > old.cutscene && vars.split == 0){
						vars.split++;
						return true;
					//Welcome to the jungle
					}
	
					if(current.bounty > old.bounty && vars.split == 1 && vars.capture == 0){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 1 && vars.rendu == 0 && vars.capture == 1){
						vars.rendu++;
						vars.split++;
						return true;
					//Xplosives McGee
					}
	
	
					if(current.bounty > old.bounty && vars.split == 2 && vars.capture == 1 && current.zone == 28){
						vars.capture++;
					}
					if(current.cutscene > old.cutscene && vars.split == 2 && vars.capture == 2){
						vars.split++;
						return true;
					//Fatty McBoomboom
					}
					
					
					if(current.zone == 56 && current.cutscene > old.cutscene && vars.split == 3){
						vars.cutscene++;
					}
					if(vars.split == 3 && vars.cutscene == 2){
						vars.split++;
						return true;
					//Giant Sleg
					}
				
				
					if(current.bounty > old.bounty && vars.split == 4 && vars.capture == 2 && current.zone == 66){
						vars.capture++;	
					}
					else if(current.bounty > old.bounty && vars.split == 4 && vars.capture == 2 && current.zone == 54){
						vars.capture++;
					}
					if(current.cutscene > old.cutscene && vars.split == 4 && vars.capture == 3){
						vars.split++;
						return true;
					//Elboze Freely
					}
	
					if(current.bounty > old.bounty && vars.split == 5 && vars.capture == 3){
						vars.capture++;
					}
					if(current.primeguy > old.primeguy && vars.split == 5 && vars.rendu == 1 && vars.capture == 4){
						vars.rendu++;
						vars.split++;
						return true;
					//Lefty Lugnutz
					}
				
					if(current.zone == 9 && current.cutscene > old.cutscene && vars.split == 6){
						vars.split++;
						return true;
					//Mongo River
					}		
				}
			}
		}
	}
	
	if(settings["Extra"]){
	
		if(settings["Shopping"]){
		
			if(current.godvalue < old.godvalue){
				return true;
			}
		}
	}
}


isLoading

{
	if(current.IGT > 0 && current.IGT3 == 0 && current.health > 0){
		return true;
	} else if(current.IGT > 0 && current.IGT3 == 0 && current.quickload == 1){
		return true;
	} else {
		return false;
	}
}
