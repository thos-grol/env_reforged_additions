::mods_hookExactClass("entity/world/settlements/buildings/alchemist_building", function(o) {
	o.onUpdateShopList = function()
	{
		local list = [
			{
				R = 10,
				P = 1.0,
				S = "tools/daze_bomb_item"
			},
			{
				R = 10,
				P = 1.0,
				S = "tools/daze_bomb_item"
			},
			{
				R = 10,
				P = 1.0,
				S = "tools/fire_bomb_item"
			},
			{
				R = 10,
				P = 1.0,
				S = "tools/fire_bomb_item"
			},
			{
				R = 10,
				P = 1.0,
				S = "tools/smoke_bomb_item"
			},
			{
				R = 10,
				P = 1.0,
				S = "tools/smoke_bomb_item"
			},
			{
				R = 50,
				P = 1.0,
				S = "tools/acid_flask_item"
			},
			{
				R = 10,
				P = 1.0,
				S = "accessory/antidote_item"
			},
			{
				R = 30,
				P = 1.0,
				S = "accessory/antidote_item"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/oriental/firelance"
			},
			{
				R = 20,
				P = 1.0,
				S = "weapons/oriental/firelance"
			},
			{
				R = 35,
				P = 1.0,
				S = "weapons/oriental/handgonne"
			},
			{
				R = 0,
				P = 1.0,
				S = "ammo/powder_bag"
			},
			{
				R = 99,
				P = 2.0,
				S = "weapons/named/named_handgonne"
			}
		];

		if (this.Const.DLC.Unhold)
		{
			list.extend([
				{
					R = 40,
					P = 1.0,
					S = "accessory/cat_potion_item"
				},
				{
					R = 40,
					P = 1.0,
					S = "accessory/iron_will_potion_item"
				},
				{
					R = 40,
					P = 1.0,
					S = "accessory/lionheart_potion_item"
				},
				{
					R = 40,
					P = 1.0,
					S = "accessory/night_vision_elixir_item"
				},
				{
					R = 40,
					P = 1.0,
					S = "accessory/recovery_potion_item"
				},
				{
					R = 40,
					P = 1.0,
					S = "accessory/spider_poison_item"
				},
				{
					R = 40,
					P = 1.0,
					S = "misc/potion_of_knowledge_item"
				}
			]);
		}

		this.m.Settlement.onUpdateShopList(this.m.ID, list);
		this.fillStash(list, this.m.Stash, 1.0, false);
	}

	o.onUpdateDraftList = function( _list )
	{
		//FEATURE_6: Add alchemist background
		//FEATURE_6: Remove potion crafting from taxidermist
	}

});
