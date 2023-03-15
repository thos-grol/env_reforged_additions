//TODO: log price mults and come up with more sane buy sell price formula
//TODO: figure out why wages are getting fucked up
//TODO: armor repair tools price is bugged
::mods_hookExactClass("entity/world/settlement", function(o)
{
    o.getBuyPriceMult = function()
    {
        local p = this.getPriceMult() * this.World.Assets.getBuyPriceMult();
        local r = this.World.FactionManager.getFaction(this.m.Factions[0]).getPlayerRelation();
        ::logInfo("Calculating getBuyPriceMult");
        ::logInfo("p= " + this.getPriceMult() + " * " + this.World.Assets.getBuyPriceMult() + " = " + p);
        ::logInfo("r= " + r);

        if (r < 50)
        {
            local p_old = p;
            p = p + (50.0 - r) * 0.006;
            ::logInfo("p = " + p_old + " + (50.0 - " + r + ") * 0.006 = " + p);
        }
        else if (r > 50)
        {
            local p_old = p;
            p = p - (r - 50.0) * 0.003;
            ::logInfo("p = " + p_old + " - (" + r + " - 50) * 0.003 = " + p);
            
        }

        local p_old = p;
        p = p * this.m.Modifiers.BuyPriceMult;
        ::logInfo("p = " + p_old + " * " + this.m.Modifiers.BuyPriceMult + " = " + p);
        return p;
    }

    o.getSellPriceMult = function()
    {
        local p = this.getPriceMult() * this.World.Assets.getSellPriceMult();
        local r = this.World.FactionManager.getFaction(this.m.Factions[0]).getPlayerRelation();

        ::logInfo("Calculating getSellPriceMult");
        ::logInfo("p= " + this.getPriceMult() + " * " + this.World.Assets.getSellPriceMult() + " = " + p);
        ::logInfo("r= " + r);

        if (r < 50)
        {
            local p_old = p;
            p = p - (50.0 - r) * 0.006;
            ::logInfo("p = " + p_old + " - (50.0 - " + r + ") * 0.006 = " + p);
        }
        else if (r > 50)
        {
            p = p + (r - 50.0) * 0.003;
            ::logInfo("p = " + p_old + " + (" + r + " - 50) * 0.003 = " + p);
        }

        local p_old = p;
        p = p * this.m.Modifiers.SellPriceMult;
        ::logInfo("p = " + p_old + " * " + this.m.Modifiers.SellPriceMult + " = " + p);
        return p;
    }
});