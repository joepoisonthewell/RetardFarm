-----------------------------------
-- Area: Sauromugue Champaign
--  Mob: Tabar Beak
-- Note: PH for Deadly Dodo
-----------------------------------
local ID = zones[xi.zone.SAUROMUGUE_CHAMPAIGN]
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 100, 1, xi.regime.type.FIELDS)
end

entity.onMobDespawn = function(mob)
    xi.mob.phOnDespawn(mob, ID.mob.DEADLY_DODO_PH, 33, 3600) -- 1 hour
end

return entity
