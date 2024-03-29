this.cultist_compassion_slave <- this.inherit("scripts/skills/skill", {
	m = {
		Master = null,
		Color = this.createColor("#ffffff"),
		IsActivated = false
	},
	function activate()
	{
		this.m.IsActivated = true;
	}

	function setMaster( _p )
	{
		if (_p == null)
		{
			this.m.Master = null;
		}
		else if (typeof _p == "instance")
		{
			this.m.Master = _p;
		}
		else
		{
			this.m.Master = this.WeakTableRef(_p);
		}
	}

	function setColor( _c )
	{
		this.m.Color = _c;
	}

	function isAlive()
	{
		return this.getContainer() != null && !this.getContainer().isNull() && this.getContainer().getActor() != null && this.getContainer().getActor().isAlive() && this.getContainer().getActor().getHitpoints() > 0;
	}

	function create()
	{
		this.m.ID = "effects.compassion_slave";
		this.m.Name = "Hex";
		this.m.KilledString = "Died from a hex";
		this.m.Icon = "skills/status_effect_84.png";
		this.m.IconMini = "status_effect_84_mini";
		this.m.SoundOnUse = [
			"sounds/enemies/dlc2/hexe_hex_damage_01.wav",
			"sounds/enemies/dlc2/hexe_hex_damage_02.wav",
			"sounds/enemies/dlc2/hexe_hex_damage_03.wav",
			"sounds/enemies/dlc2/hexe_hex_damage_04.wav"
		];
		this.m.Type = ::Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsRemovedAfterBattle = true;
		this.m.IsHidden = true;
	}

	function getDescription()
	{
		return "This character has been the recipient of compassion.";
	}

	function onRemoved()
	{
		local actor = this.getContainer().getActor();

		if (actor.hasSprite("status_compassion"))
		{
			actor.getSprite("status_compassion").Visible = false;
			actor.getSprite("status_compassion").Color = this.createColor("#ffffff");
		}

		actor.setDirty(true);

		if (this.m.Master != null && !this.m.Master.isNull() && !this.m.Master.getContainer().isNull())
		{
			local master = this.m.Master;
			this.m.Master = null;
			master.setSlave(null);
			master.removeSelf();
			master.getContainer().update();
		}
		
		local skills = actor.getSkills().getAllSkillsOfType(::Const.SkillType.PermanentInjury);
		foreach( s in skills )
		{
			if (s.m.IsRemovedAfterBattle == true) s.removeSelf();
		}
	}

	function onDeath( _fatalityType )
	{
		this.onRemoved();
	}

	function onUpdate( _properties )
	{
		local actor = this.getContainer().getActor();

		if (this.m.IsActivated && (this.m.Master == null || this.m.Master.isNull() || !this.m.Master.isAlive()))
		{
			this.removeSelf();
		}
		else if (actor.hasSprite("status_compassion"))
		{
			local hex = actor.getSprite("status_compassion");
			local fadeIn = !hex.Visible;

			if (fadeIn)
			{
				hex.setBrush("compassion_effect_sw");
				hex.Color = this.m.Color;
				hex.Alpha = 0;
				hex.Visible = true;
				hex.fadeIn(700);
				actor.setDirty(true);
			}
		}
	}

});

