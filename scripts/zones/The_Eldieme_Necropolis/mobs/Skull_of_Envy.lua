-----------------------------------
-- Area: The Eldieme Necropolis
--   NM: Skull of Envy
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.hunts.checkHunt(mob, player, 189)
end

return entity
