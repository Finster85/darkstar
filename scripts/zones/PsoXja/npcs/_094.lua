-----------------------------------
-- Area: Pso'Xja
--  NPC: _094 (Stone Gate)
-- Notes: Spawns Gargoyle when triggered
-- !pos 310.000 -1.925 -101.600 9
-----------------------------------
require("scripts/zones/PsoXja/globals");
require("scripts/globals/status");
-----------------------------------

function onTrade(player,npc,trade)
    if ( player:getMainJob() == dsp.job.THF and trade:getItemCount() == 1 and (trade:hasItemQty(1115,1) or trade:hasItemQty(1023,1) or trade:hasItemQty(1022,1)) ) then
        attemptPickLock(player, npc, player:getZPos() >= -101);
    end
end;

function onTrigger(player,npc)
    attemptOpenDoor(player, npc, player:getZPos() >= -101);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 26 and option == 1) then
        player:setPos(260,-0.25,-20,254,111);
    end
end;
