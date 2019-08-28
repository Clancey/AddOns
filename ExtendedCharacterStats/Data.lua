------------------------------------------------------------------
-- Namespaces
------------------------------------------------------------------

local _, core = ...;
core.ECSData = { };

local ECSData = core.ECSData;

------------------------------------------------------------------
-- Data functions 
------------------------------------------------------------------

-- Rounds every number down to 2 decimal places
function Round(num)    
    mult = 10^(2);
    return math.floor(num * mult + 0.5) / mult;
end

-- Gets the current bonus hit chance
function ECSData:HitModifier()
    return Round(GetHitModifier()) .. "%";
end

-- Get manaregen while not casting
function ECSData:ManaRegenNotCasting()
    local base, casting = GetManaRegen();
    return Round(base);
end

-- Get current mana regen
function ECSData:ManaRegenCurrent()
    return Round(GetPowerRegen());
end

-- Get manaregen while casting
function ECSData:ManaRegenCasting()
    local base, casting = GetManaRegen();
    return Round(casting);
end

-- Get melee crit chance
function ECSData:MeleeCrit()
    return Round(GetCritChance()) .. "%";
end

-- Get spell crit chance
function ECSData:SpellCrit()
    return Round(GetSpellCritChance()) .. "%";
end

-- Get ranged crit chance
function ECSData:RangedCrit()
    return Round(GetRangedCritChance()) .. "%";
end

-- Get spell penetration %
function ECSData:SpellPenetration()
    return Round(GetSpellPenetration()) .. "%";
end

-- Get dodge chacne
function ECSData:Dodge()
    return Round(GetDodgeChance()) .. "%";
end

-- Get parry chance
function ECSData:Parry()
    return Round(GetParryChance()) .. "%";
end

-- Get block chance
function ECSData:Block()
    return Round(GetBlockChance()) .. "%";
end

-- Get phys dmg bonus
function ECSData:PhysicalDmg()
    return Round(GetSpellBonusDamage(1));
end

-- Get phys crit chance
function ECSData:PhysicalCrit()
    return Round(GetSpellCritChance(1)) .. "%";
end

-- Get holy bonus dmg
function ECSData:HolyDmg()
    return Round(GetSpellBonusDamage(2));
end

-- Get holy crit chance
function ECSData:HolyCrit()
    return Round(GetSpellCritChance(2)) .. "%";
end

-- Get fire bonus dmg
function ECSData:FireDmg()
    return Round(GetSpellBonusDamage(3));
end

-- Get fire crit chance
function ECSData:FireCrit()
    return Round(GetSpellCritChance(3)) .. "%";
end

-- Get nature bonus dmg
function ECSData:NatureDmg()
    return Round(GetSpellBonusDamage(4));
end

-- Get nature crit chance
function ECSData:NatureCrit()
    return Round(GetSpellCritChance(4)) .. "%";
end

-- Get frost bonus dmg
function ECSData:FrostDmg()
    return Round(GetSpellBonusDamage(5));
end

-- Get frost crit chance
function ECSData:FrostCrit()
    return Round(GetSpellCritChance(5)) .. "%";
end

-- Get shadow bonus dmg
function ECSData:ShadowDmg()
    return Round(GetSpellBonusDamage(6));
end

-- Get shadow crit chance
function ECSData:ShadowCrit()
    return Round(GetSpellCritChance(6)) .. "%";
end

-- Get arcane bonus dmg
function ECSData:ArcaneDmg()
    return Round(GetSpellBonusDamage(7));
end

-- Get arcane crit chance
function ECSData:ArcaneCrit()
    return Round(GetSpellCritChance(7)) .. "%";
end

-- Get bonus healing power
function ECSData:HealingBonus()
    return Round(GetSpellBonusHealing());
end

function ECSData:GetStatInfo(refName)

    if refName == "RangedHit" then        
       return ECSData:HitModifier();        
    end

    if refName == "MeleeHit" then        
       return ECSData:HitModifier();        
    end

    if refName == "SpellHit" then        
       return ECSData:HitModifier();        
    end

    if refName == "DodgeChance" then
        return ECSData:Dodge();
    end

    if refName == "ParryChance" then
        return ECSData:Parry();
    end

    if refName == "BlockChance" then
        return ECSData:Block();
    end

    if refName == "RangedCritChance" then
        return ECSData:RangedCrit();
    end
    
    if refName == "MeleeCritChance" then
        return ECSData:MeleeCrit();
    end
    
    if refName == "SpellCritChance" then
        return ECSData:SpellCrit();
    end

    if refName == "MP5Current" then
        return ECSData:ManaRegenCurrent();
    end
    if refName == "MP5Casting" then
        return ECSData:ManaRegenCasting();
    end
    
    if refName == "MP5NotCasting" then
        return ECSData:ManaRegenNotCasting();
    end

    if refName == "PhysicalCritChance" then
        return ECSData:PhysicalCrit();
    end

    if refName == "ArcaneCritChance" then
        return ECSData:ArcaneCrit();
    end

    if refName == "NatureDmg" then
        return ECSData:NatureDmg();
    end
    
    if refName == "HolyDmg" then
        return ECSData:HolyDmg();
    end

    if refName == "FrostCritChance" then
        return ECSData:FrostCrit();
    end
    
    if refName == "FireDmg" then
        return ECSData:FireDmg();
    end

    if refName == "BonusHealing" then
        return ECSData:HealingBonus();
    end    

    if refName == "FireCritChance" then
        return ECSData:FireCrit();
    end

    if refName == "ShadowDmg" then
        return ECSData:ShadowDmg()
    end

    if refName == "FrostDmg" then
        return ECSData:FrostDmg()
    end

    if refName == "HolyCritChance" then
        return ECSData:HolyCrit()
    end

    if refName == "PhysicalDmg" then
        return ECSData:PhysicalDmg();
    end

    if refName == "ShadowCritChance" then 
        return ECSData:ShadowCrit();
    end

    if refName == "ArcaneDmg" then 
        return ECSData:ArcaneDmg();
    end

    if refName == "NatureCritChance" then
        return ECSData:NatureCrit();    
    end

end