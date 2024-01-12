-----------------------------------
-- Area: The Eldieme Necropolis
--  NPC: Tallow Candle
-- !pos -346.54 -2.30 336.66
-----------------------------------
local ID = zones[xi.zone.THE_ELDIEME_NECROPOLIS]
local func = require('scripts/zones/The_Eldieme_Necropolis/globals')
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    local timer = GetNPCByID(ID.npc.CANDLE_OFFSET):getLocalVar('SkullRespawn') -- 1 hour cooldown to respawn skulls

    if
        npcUtil.tradeHasExactly(trade, xi.item.FLINT_STONE) and
        os.time() > timer
    then
        func.skullTrade(player, npc)
    elseif os.time() < timer then
        player:messageSpecial(ID.text.BRAZIER_COOLDOWN)
    end
end

entity.onTrigger = function(player, npc)
    local timer = GetNPCByID(ID.npc.CANDLE_OFFSET):getLocalVar('SkullRespawn') -- 1 hour cooldown to respawn skulls
    local active = npc:getLocalVar('candlesActive')

    if os.time() < active then
        player:messageSpecial(ID.text.BRAZIER_ACTIVE)
    elseif os.time() > timer and os.time() > active then
        player:messageSpecial(ID.text.BRAZIER_OUT, 0, xi.item.FLINT_STONE)
    else
        player:messageSpecial(ID.text.BRAZIER_COOLDOWN)
    end
end

return entity