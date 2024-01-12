-----------------------------------
-- Area: Kuftal Tunnel
--  NPC: Treasure Coffer
-- !zone 174
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    xi.treasure.onTrade(player, npc, trade, xi.treasure.type.COFFER)
end

entity.onTrigger = function(player, npc)
    xi.treasure.onTrigger(player, xi.treasure.type.COFFER)
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity