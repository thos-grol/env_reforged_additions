::mods_hookExactClass("entity/world/attached_location/ore_smelters_location", function(o) {
	o.onUpdateDraftList = function( _list )
	{
		if (!this.isActive())
		{
			return;
		}

		_list.push("apprentice_background");
		_list.push("deserter_background");
	}

	o.onUpdateShopList = function( _id, _list )
	{
		if (_id == "building.marketplace")
		{
			_list.push({
				R = 35,
				P = 1.0,
				S = "weapons/dagger"
			});
			_list.push({
				R = 25,
				P = 1.0,
				S = "supplies/armor_parts_item"
			});
		}
		else if (_id == "building.specialized_trader")
		{
		}
		else if (_id == "building.weaponsmith")
		{
			_list.push({
				R = 35,
				P = 1.0,
				S = "weapons/fighting_axe"
			});
			_list.push({
				R = 45,
				P = 1.0,
				S = "weapons/noble_sword"
			});
			_list.push({
				R = 45,
				P = 1.0,
				S = "weapons/warhammer"
			});
			_list.push({
				R = 35,
				P = 1.0,
				S = "weapons/flail"
			});
			_list.push({
				R = 45,
				P = 1.0,
				S = "weapons/greatsword"
			});
			_list.push({
				R = 35,
				P = 1.0,
				S = "weapons/warbrand"
			});
			_list.push({
				R = 40,
				P = 1.0,
				S = "weapons/greataxe"
			});
			_list.push({
				R = 50,
				P = 1.0,
				S = "weapons/longaxe"
			});
			_list.push({
				R = 50,
				P = 1.0,
				S = "weapons/two_handed_hammer"
			});
		}
		else if (_id == "building.armorsmith")
		{
		}
	}

});
