-----------------------------------
-- Area: Gustav Tunnel
--  Mob: Demonic Pugil
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 766, 2, xi.regime.type.GROUNDS)
end

return entity
