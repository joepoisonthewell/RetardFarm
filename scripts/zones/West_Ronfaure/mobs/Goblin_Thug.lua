-----------------------------------
-- Area: West Ronfaure
--  Mob: Goblin Thug
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 56, 2, xi.regime.type.FIELDS)
end

return entity
