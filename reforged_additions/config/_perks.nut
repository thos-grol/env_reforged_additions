::Const.Strings.PerkName.EldritchBlast <- "Eldritch Blast"
// ::Const.Strings.PerkDescription.LegendSpecCultHood = "With face obscured by a cultist hood, gain " + ::MSU.Text.colorGreen( 15 ) + "% of your base resolve as a bonus to melee and ranged defense. Also works with cultist leather hood, leather helmet, sack, decayed sack helm, warlock hood or mask of davkul.\n Also unlocks a crafting recipe to make cultist hoods and sacks.";
::Const.Strings.PerkDescription.EldritchBlast <- "Blast your foes with eldritch energy.";

::Const.Strings.PerkName.SacrificialRitual <- "Sacrificial Ritual"
::Const.Strings.PerkDescription.SacrificialRitual <- "Perform a sacrifical ritual for davkul. Davkul will now claim all the souls of the enemies you have slain. Based on your piety, Davkul will award you.";

::Const.Strings.PerkName.PainRitual <- "Pain Ritual"
::Const.Strings.PerkDescription.PainRitual <- "";

::Const.Strings.PerkName.CompassionRitual <- "Compassion Ritual"
::Const.Strings.PerkDescription.CompassionRitual <- "All Dharmas are forms of emptiness..." +
"\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Passive:[/u][/color]" +
"\n• Curse a target with all of this character's permanent injuries." +
"\n• This curse acts upon strange, incomprehensible laws. The window to use this curse is mysterious, but can be partially influenced by the ammount of permenant injuries this character has." +
"\n• Only one target can be cursed at a time.";

::Const.Strings.PerkName.SpiritVessel <- "Spirit Vessel"
::Const.Strings.PerkDescription.SpiritVessel <- "Not all doors are wounds, but all wounds are doors..." +
"\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Passive:[/u][/color]" +
"\n• This character loses " + ::MSU.Text.colorRed( "44%" ) + " initiative, health, and fatigue." +
"\n• They act as vessel for spirits, summoning them around them on turn end or when hit. Every time a spirit is summoned, the chance decreases." +
"\n• Each permenant injury increases the chance of this effect."+
"\n• Being rewarded Perfect Spirit Vessel will strengthen the effects.";

::Const.Strings.PerkName.WrithingFlesh <- "Writhing Flesh"
::Const.Strings.PerkDescription.WrithingFlesh <- "Flesh writhes beneath the surface. Something has about this character has changed..." +
"\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Passive:[/u][/color]" +
"\n• +" + ::MSU.Text.colorGreen( "25%" ) + " Hitpoints" +
"\n• This character is no longer affected by fresh temporary injuries.";

::Const.Strings.PerkName.EyesOnTheInside <- "Eyes on the Inside"
::Const.Strings.PerkDescription.EyesOnTheInside <- "Grant us eyes, for we are blind..." +
"\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Passive:[/u][/color]" +
"\n• On turn start, gaze into the soul of a non-ally, and have a 44% chance to morale check and to drain them." +
"\n• The range of the effect is this character's vision. They become unaffected by night time";

::Const.Strings.PerkName.Devotion <- "Devotion"
::Const.Strings.PerkDescription.Devotion <- "In Pain we find the truth of ourselves. We have no identity beyond servitude, our glory is agony."+
"\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Passive:[/u][/color]" +
"\n• With face obscured by a cultist hood, gain " + ::MSU.Text.colorGreen( 15 ) + "% of your base resolve as a bonus to melee and ranged defense." +
"\n• Unwillingness to avoid pain decreases the effectiveness of the Dodge to 5% of initiative." + 
"\n• Each permenant injury increases this bonus by  " + ::MSU.Text.colorGreen( "5%" ) +
"\n• Also works with cultist leather hood, leather helmet, sack, decayed sack helm, warlock hood or mask of davkul." +
"\n• Will refund dodge.";

::Const.Strings.PerkName.Penance <- "Penance"
::Const.Strings.PerkDescription.Penance <- "One has wounds but cannot be wounded..."+
"\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Passive:[/u][/color]" +
"\n• Morale is no longer affected by allies dying or by taking damage." +
"\n• Reduce the effects that permenant injuries has on this character or transform the injury in some eldritch way.";

::Const.Strings.PerkName.GruesomeFeast <- "Penance"
::Const.Strings.PerkDescription.GruesomeFeast <- "One has wounds but cannot be wounded..."+
"\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Passive:[/u][/color]" +
"\n• Morale is no longer affected by allies dying or by taking damage." +
"\n• Reduce the effects that permenant injuries has on this character or transform the injury in some eldritch way.";

//FEATURE_6: adapt perks to reforged
// local perks = [
// 	{
// 		ID = "perk.devotion",
// 	    Script = "scripts/skills/perks/cultist_devotion",
// 	    Name = ::Const.Strings.PerkName.Devotion,
// 		Tooltip = ::Const.Strings.PerkDescription.Devotion,
// 		Icon = "ui/perks/dedication_circle2.png",
//         IconDisabled = "ui/perks/dedication_circle2_bw.png",
// 	},
// 	{
// 		ID = "perk.penance",
// 	    Script = "scripts/skills/perks/cultist_penance",
// 	    Name = ::Const.Strings.PerkName.Penance,
// 		Tooltip = ::Const.Strings.PerkDescription.Penance,
// 		Icon = "ui/perks/penance_circle2.png",
//         IconDisabled = "ui/perks/penance_circle2_bw.png",
// 	},
// 	{
// 		ID = "perk.eldritch_blast",
// 	    Script = "scripts/skills/perks/cultist_eldritch_blast",
// 	    Name = ::Const.Strings.PerkName.EldritchBlast,
// 		Tooltip = ::Const.Strings.PerkDescription.EldritchBlast,
// 		Icon = "ui/perks/eldritch_blast.png",
//         IconDisabled = "ui/perks/eldritch_blast_bw.png",
// 	},
// 	{
// 		ID = "perk.sacrificial_ritual",
// 	    Script = "scripts/skills/perks/cultist_sacrificial_ritual",
// 	    Name = ::Const.Strings.PerkName.SacrificialRitual,
// 		Tooltip = ::Const.Strings.PerkDescription.SacrificialRitual,
// 		Icon = "ui/perks/sacrificial_ritual.png",
//         IconDisabled = "ui/perks/sacrificial_ritual_bw.png",
// 	},
// 	{
// 		ID = "perk.pain_ritual",
// 	    Script = "scripts/skills/perks/cultist_pain_ritual",
// 	    Name = ::Const.Strings.PerkName.PainRitual,
// 		Tooltip = ::Const.Strings.PerkDescription.PainRitual,
// 		Icon = "ui/perks/pain_ritual.png",
//         IconDisabled = "ui/perks/pain_ritual_bw.png",
// 	},
// 	{
// 		ID = "perk.writhing_flesh",
// 	    Script = "scripts/skills/perks/cultist_writhing_flesh",
// 	    Name = ::Const.Strings.PerkName.WrithingFlesh,
// 		Tooltip = ::Const.Strings.PerkDescription.WrithingFlesh,
// 		Icon = "ui/perks/writhing_flesh.png",
//         IconDisabled = "ui/perks/writhing_flesh_bw.png",
// 	},
// 	{
// 		ID = "perk.eyes_on_the_inside",
// 	    Script = "scripts/skills/perks/cultist_eyes_on_the_inside",
// 	    Name = ::Const.Strings.PerkName.EyesOnTheInside,
// 		Tooltip = ::Const.Strings.PerkDescription.EyesOnTheInside,
// 		Icon = "ui/perks/eyes_on_the_inside.png",
//         IconDisabled = "ui/perks/eyes_on_the_inside_bw.png",
// 	},
// 	{
// 		ID = "perk.spirit_vessel",
// 	    Script = "scripts/skills/perks/cultist_spirit_vessel",
// 	    Name = ::Const.Strings.PerkName.SpiritVessel,
// 		Tooltip = ::Const.Strings.PerkDescription.SpiritVessel,
// 		Icon = "ui/perks/spirit_vessel.png",
//         IconDisabled = "ui/perks/spirit_vessel_bw.png",
// 	},
// 	{
// 		ID = "perk.compassion_ritual",
// 	    Script = "scripts/skills/perks/cultist_compassion_ritual",
// 	    Name = ::Const.Strings.PerkName.CompassionRitual,
// 		Tooltip = ::Const.Strings.PerkDescription.CompassionRitual,
// 		Icon = "ui/perks/compassion_ritual.png",
//         IconDisabled = "ui/perks/compassion_ritual_bw.png",
// 	}
// ];
// ::DynamicPerks.Perks.addPerks(perks);