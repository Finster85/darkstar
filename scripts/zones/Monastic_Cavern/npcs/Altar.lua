-----------------------------------
-- Area: Monastic Cavern
--  NPC: Altar
-- Involved in Quests: The Circle of Time
-- !pos 108 -2 -144 150
-----------------------------------
require("scripts/globals/quests");
require("scripts/globals/keyitems");
local ID = require("scripts/zones/Monastic_Cavern/IDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    local circleOfTime = player:getQuestStatus(JEUNO,THE_CIRCLE_OF_TIME);

    -- CIRCLE OF TIME (Bard AF3)
    if (circleOfTime == QUEST_ACCEPTED and player:hasKeyItem(dsp.ki.STAR_RING1) and player:hasKeyItem(dsp.ki.MOON_RING)) then
        if (player:getVar("circleTime") == 7 and GetMobByID(ID.mob.BUGABOO):isDead()) then
            SpawnMob(ID.mob.BUGABOO):updateClaim(player);
        elseif (player:getVar("circleTime") == 8) then
            player:startEvent(3); -- Show final CS
        else
            player:messageSpecial(ID.text.ALTAR);
        end;

    -- DEFAULT DIALOG
    else
        player:messageSpecial(ID.text.ALTAR);
    end;
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    -- CIRCLE OF TIME
    if (csid == 3) then
        player:setVar("circleTime",9); -- After bugaboo is killed, and final CS shows up
        player:delKeyItem(dsp.ki.MOON_RING);
        player:delKeyItem(dsp.ki.STAR_RING1);
    end;
end;
