this.strange_eye_brain_damages_brother_event <- this.inherit("scripts/events/event", {
	m = {
		Addict = null,
		Item = null
	},
	function create()
	{
		this.m.ID = "event.strange_eye_brain_damages_brother";
		this.m.Title = "During camp...";
		this.m.Cooldown = 20.0 * this.World.getTime().SecondsPerDay;
		this.m.Screens.push({
			ID = "A",
			Text = "[img]gfx/ui/events/event_05.png[/img]{A loud cry startles all the men. They quickly find out the source is %addict% who has collapsed to the ground and is spasming. Moments later %addict% comes to. They seem to be alright, but not entirely there in the head, but they say that they've never felt better.",
			Image = "",
			List = [],
			Characters = [],
			Options = [
				{
					Text = "Grant us eyes...",
					function getResult( _event )
					{
						return 0;
					}

				}
			],
			function start( _event )
			{
				this.Characters.push(_event.m.Addict.getImagePath());

				local injury = _event.m.Addict.addInjury([{
					ID = "injury.brain_damage",
					Threshold = 0.25,
					Script = "injury_permanent/brain_damage_injury"
				}]);
				::R.addPerk(_event.m.Addict, ::Const.Perks.PerkDefs.EyesOnTheInside, 3);
				
				this.List.push({
					id = 10,
					icon = injury.getIcon(),
					text = _event.m.Addict.getName() + " suffers " + injury.getNameOnly()
				});
				this.List.push({
					id = 16,
					icon = "ui/perks/eyes_on_the_inside.png",
					text = _event.m.Addict.getName() + " gains Eyes on the Inside"
				});

				local bags = _event.m.Addict.getItems().getAllItemsAtSlot(::Const.ItemSlot.Bag);
				foreach(item in bags)
				{
					if (item.getID() == "misc.strange_eye")
					{
						item.removeSelf();
						break;
					}
				}
			}

		});
	}

	function onUpdateScore()
	{
		if (!::Const.DLC.Unhold) return;
		
		local brothers = this.World.getPlayerRoster().getAll();
		local canditates_brain_damage = [];

		foreach( bro in brothers )
		{
			if (bro.getBackground().isBackgroundType(::Const.BackgroundType.ConvertedCultist) || bro.getBackground().isBackgroundType(::Const.BackgroundType.Cultist)) continue;
			if (bro.getSkills().hasSkill("injury.brain_damage")) continue;
			if (bro.getSkills().hasSkill("perk.eyes_on_the_inside")) continue;

			local bags = bro.getItems().getAllItemsAtSlot(::Const.ItemSlot.Bag);
			foreach(item in bags)
			{
				if (item.getID() == "misc.strange_eye")
				{
					canditates_brain_damage.push(bro);
				}
			}
		}

		if (canditates_brain_damage.len() < 1) return;

		this.m.Addict = ::MSU.Array.rand(canditates_brain_damage);
		this.m.Item = ::new("scripts/items/misc/strange_eye_item");
		this.m.Score = canditates_brain_damage.len() * 50;
	}

	function onPrepare(){}

	function onPrepareVariables( _vars )
	{
		_vars.push([
			"addict",
			this.m.Addict.getName()
		]);
		_vars.push([
			"item",
			"Strange Eye"
		]);
	}

	function onClear()
	{
		this.m.Addict = null;
		this.m.Item = null;
	}

});

