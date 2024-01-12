-----------------------------------
-- Area: Sea Serpent Grotto
--  Mob: Undead Bats
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 804, 2, xi.regime.type.GROUNDS)
end

return entity