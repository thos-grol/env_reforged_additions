this.strange_eye_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.m.ID = "misc.strange_eye";
		this.m.Name = "Strange Eye";
		this.m.Description = "A peculiar eye, whose origin may not be of this world. Some even think it is cursed. Perhaps letting one of your men hold it in their bags will unveil it's mysteries.";
		this.m.Icon = "misc/strange_eye.png";
		this.m.SlotType = ::Const.ItemSlot.Bag;
		this.m.ItemType = ::Const.Items.ItemType.Misc;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 4000;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", ::Const.Sound.Volume.Inventory);
	}

});

