::mods_hookExactClass("skills/injury_permanent/permanent_injury", function (o)
{  
    o.has_penance <- function()
    {
        return this.getContainer() != null && this.getContainer().hasSkill("perk.penance")
    }

    o.getName <- function()
	{
		return this.has_penance() ? this.getNameP() : this.m.Name;
	}

    o.getNameP <- function() { return "" }
    o.isContent <- function() { return true; }
    o.getTooltip <- function()
	{
		local ret = [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			}
		];

		local has = this.has_penance();

        ret.extend(this.getTooltipHelper(has));
		
        if (has)
        {
            ret.push({
                id = 11,
                type = "text",
                icon = "ui/icons/special.png",
                text = "The severity of this injury has been transformed by some eldritch power"
            });
        }

        if (isContent)
        {
            ret.push({
                id = 16,
                type = "text",
                icon = "ui/icons/special.png",
                text = "Is always content with being in reserve"
            });
        }

		this.addTooltipHint(ret);
		return ret;
	}

    o.getTooltipHelper <- function( has )
    {
        local ret = [];
        return ret;
    }

});