-----------------------------------
-- Area: Bostaunieux Oubliette
--  Mob: Nachtmahr
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 616, 1, xi.regime.type.GROUNDS)
end

return entity
