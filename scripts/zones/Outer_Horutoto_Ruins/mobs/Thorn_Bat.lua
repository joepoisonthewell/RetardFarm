-----------------------------------
-- Area: Outer Horutoto Ruins
--  Mob: Thorn Bat
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 670, 1, xi.regime.type.GROUNDS)
end

return entity
