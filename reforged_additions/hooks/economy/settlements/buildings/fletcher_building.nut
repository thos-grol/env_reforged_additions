::mods_hookExactClass("entity/world/settlements/buildings/fletcher_building", function(o) {
	o.onUpdateShopList = function()
	{
		local list = [
			{
				R = 10,
				P = 1.0,
				S = "weapons/short_bow"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/short_bow"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/hunting_bow"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/hunting_bow"
			},
			{
				R = 20,
				P = 1.0,
				S = "weapons/war_bow"
			},
			{
				R = 20,
				P = 1.0,
				S = "weapons/war_bow"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/light_crossbow"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/light_crossbow"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/crossbow"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/crossbow"
			},
			{
				R = 30,
				P = 1.0,
				S = "weapons/heavy_crossbow"
			},
			{
				R = 30,
				P = 1.0,
				S = "weapons/heavy_crossbow"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/javelin"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/throwing_axe"
			},
			{
				R = 0,
				P = 1.0,
				S = "ammo/quiver_of_arrows"
			},
			{
				R = 0,
				P = 1.0,
				S = "ammo/quiver_of_bolts"
			},
			{
				R = 0,
				P = 1.0,
				S = "supplies/ammo_item"
			}
		];

		if (this.Const.DLC.Unhold)
		{
			list.extend([
				{
					R = 90,
					P = 1.0,
					S = "weapons/throwing_spear"
				}
			]);
		}

		foreach( i in this.Const.Items.NamedRangedWeapons )
		{
			if (this.Math.rand(1, 100) <= 50)
			{
				list.push({
					R = 99,
					P = 2.0,
					S = i
				});
			}
		}

		this.m.Settlement.onUpdateShopList(this.m.ID, list);
		this.fillStash(list, this.m.Stash, 1.25, false);
	}

	o.onUpdateDraftList = function( _list )
	{
		_list.push("bowyer_background");
	}

});
