::mods_hookExactClass("entity/world/settlements/buildings/armorsmith_building", function(o) {
	o.onUpdateShopList = function()
	{
		local list = [
			{
				R = 20,
				P = 1.0,
				S = "armor/padded_leather"
			},
			{
				R = 20,
				P = 1.0,
				S = "armor/basic_mail_shirt"
			},
			{
				R = 30,
				P = 1.0,
				S = "armor/mail_shirt"
			},
			{
				R = 50,
				P = 1.0,
				S = "helmets/mail_coif"
			},
			{
				R = 60,
				P = 1.0,
				S = "helmets/closed_mail_coif"
			},
			{
				R = 60,
				P = 1.0,
				S = "helmets/nasal_helmet"
			},
			{
				R = 65,
				P = 1.0,
				S = "helmets/kettle_hat"
			},
			{
				R = 15,
				P = 1.0,
				S = "shields/buckler_shield"
			},
			{
				R = 30,
				P = 1.0,
				S = "shields/wooden_shield"
			},
			{
				R = 30,
				P = 1.0,
				S = "shields/wooden_shield"
			},
			{
				R = 30,
				P = 1.0,
				S = "shields/wooden_shield"
			},
			{
				R = 50,
				P = 1.0,
				S = "shields/heater_shield"
			},
			{
				R = 45,
				P = 1.0,
				S = "shields/kite_shield"
			},
			{
				R = 30,
				P = 1.0,
				S = "armor/leather_lamellar"
			},
			{
				R = 40,
				P = 1.0,
				S = "armor/mail_hauberk"
			},
			{
				R = 50,
				P = 1.0,
				S = "armor/reinforced_mail_hauberk"
			},
			{
				R = 75,
				P = 1.0,
				S = "armor/lamellar_harness"
			},
			{
				R = 50,
				P = 1.0,
				S = "helmets/padded_nasal_helmet"
			},
			{
				R = 55,
				P = 1.0,
				S = "helmets/padded_kettle_hat"
			},
			{
				R = 60,
				P = 1.0,
				S = "helmets/padded_flat_top_helmet"
			},
			{
				R = 50,
				P = 1.0,
				S = "armor/leather_lamellar"
			},
			{
				R = 40,
				P = 1.0,
				S = "armor/mail_hauberk"
			},
			{
				R = 50,
				P = 1.0,
				S = "armor/reinforced_mail_hauberk"
			},
			{
				R = 75,
				P = 1.0,
				S = "armor/lamellar_harness"
			},
			{
				R = 50,
				P = 1.0,
				S = "helmets/padded_nasal_helmet"
			},
			{
				R = 55,
				P = 1.0,
				S = "helmets/padded_kettle_hat"
			},
			{
				R = 60,
				P = 1.0,
				S = "helmets/padded_flat_top_helmet"
			},
			{
				R = 70,
				P = 1.0,
				S = "armor/scale_armor"
			},
			{
				R = 75,
				P = 1.0,
				S = "armor/heavy_lamellar_armor"
			},
			{
				R = 60,
				P = 1.0,
				S = "helmets/nasal_helmet_with_mail"
			},
			{
				R = 60,
				P = 1.0,
				S = "helmets/bascinet_with_mail"
			},
			{
				R = 60,
				P = 1.0,
				S = "helmets/kettle_hat_with_mail"
			},
			{
				R = 75,
				P = 1.0,
				S = "helmets/kettle_hat_with_closed_mail"
			},
			{
				R = 75,
				P = 1.0,
				S = "helmets/nasal_helmet_with_closed_mail"
			},
			{
				R = 45,
				P = 1.0,
				S = "helmets/reinforced_mail_coif"
			}
		];

		foreach( i in this.Const.Items.NamedArmors )
		{
			if (this.Math.rand(1, 100) <= 33)
			{
				list.push({
					R = 99,
					P = 2.0,
					S = i
				});
			}
		}

		foreach( i in this.Const.Items.NamedHelmets )
		{
			if (this.Math.rand(1, 100) <= 33)
			{
				list.push({
					R = 99,
					P = 2.0,
					S = i
				});
			}
		}

		if (this.Const.DLC.Unhold)
		{
			list.push({
				R = 45,
				P = 1.0,
				S = "armor/leather_scale_armor"
			});
			list.push({
				R = 55,
				P = 1.0,
				S = "armor/light_scale_armor"
			});
			list.push({
				R = 90,
				P = 1.0,
				S = "armor/noble_mail_armor"
			});
			list.push({
				R = 60,
				P = 1.0,
				S = "armor/sellsword_armor"
			});
			list.push({
				R = 50,
				P = 1.0,
				S = "armor/footman_armor"
			});
			list.push({
				R = 70,
				P = 1.0,
				S = "helmets/sallet_helmet"
			});
			list.push({
				R = 80,
				P = 1.0,
				S = "helmets/barbute_helmet"
			});
			list.push({
				R = 60,
				P = 1.0,
				S = "misc/paint_set_item"
			});
			list.push({
				R = 75,
				P = 1.0,
				S = "misc/paint_remover_item"
			});
			list.push({
				R = 75,
				P = 1.0,
				S = "misc/paint_black_item"
			});
			list.push({
				R = 75,
				P = 1.0,
				S = "misc/paint_red_item"
			});
			list.push({
				R = 75,
				P = 1.0,
				S = "misc/paint_orange_red_item"
			});
			list.push({
				R = 75,
				P = 1.0,
				S = "misc/paint_white_blue_item"
			});
			list.push({
				R = 75,
				P = 1.0,
				S = "misc/paint_white_green_yellow_item"
			});
			list.push({
				R = 85,
				P = 1.25,
				S = "armor_upgrades/metal_plating_upgrade"
			});
			list.push({
				R = 85,
				P = 1.25,
				S = "armor_upgrades/metal_pauldrons_upgrade"
			});
			list.push({
				R = 85,
				P = 1.25,
				S = "armor_upgrades/mail_patch_upgrade"
			});
			list.push({
				R = 85,
				P = 1.25,
				S = "armor_upgrades/leather_shoulderguards_upgrade"
			});
			list.push({
				R = 85,
				P = 1.25,
				S = "armor_upgrades/leather_neckguard_upgrade"
			});
			list.push({
				R = 85,
				P = 1.25,
				S = "armor_upgrades/joint_cover_upgrade"
			});
			list.push({
				R = 85,
				P = 1.25,
				S = "armor_upgrades/heraldic_plates_upgrade"
			});
			list.push({
				R = 85,
				P = 1.25,
				S = "armor_upgrades/double_mail_upgrade"
			});
		}

		if (this.Const.DLC.Wildmen && this.m.Settlement.getTile().SquareCoords.Y > this.World.getMapSize().Y * 0.7)
		{
			list.push({
				R = 70,
				P = 1.0,
				S = "helmets/nordic_helmet"
			});
			list.push({
				R = 70,
				P = 1.0,
				S = "helmets/steppe_helmet_with_mail"
			});
			list.push({
				R = 75,
				P = 1.0,
				S = "helmets/conic_helmet_with_closed_mail"
			});
			list.push({
				R = 75,
				P = 1.0,
				S = "helmets/nordic_helmet_with_closed_mail"
			});
			list.push({
				R = 80,
				P = 1.0,
				S = "helmets/conic_helmet_with_faceguard"
			});
		}
		else
		{
			list.push({
				R = 70,
				P = 1.0,
				S = "helmets/flat_top_helmet"
			});
			list.push({
				R = 75,
				P = 1.0,
				S = "helmets/flat_top_with_mail"
			});
			list.push({
				R = 75,
				P = 1.0,
				S = "helmets/flat_top_with_closed_mail"
			});
		}

		this.m.Settlement.onUpdateShopList(this.m.ID, list);
		this.fillStash(list, this.m.Stash, 1.25, false);
	}

});
