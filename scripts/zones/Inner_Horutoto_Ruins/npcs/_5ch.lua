-----------------------------------
-- Area: Inner Horutoto Ruins
--  NPC: _5ch (Gate of Thunder)
-- !pos -331 0 139 192
-----------------------------------
local ID = zones[xi.zone.INNER_HORUTOTO_RUINS]
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    player:messageSpecial(ID.text.DOOR_FIRMLY_CLOSED)
    return 1
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
