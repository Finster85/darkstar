-----------------------------------
-- Area: Grand Palace of Hu'Xzoi
--  NPC: HomePoint#3
-- !pos -12 0.5 -288 34
-----------------------------------
require("scripts/globals/settings");
local ID = require("scripts/zones/Grand_Palace_of_HuXzoi/IDs");
require("scripts/globals/homepoint");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    homepointMenu(player, 8700, 88);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)

    if (csid == 8700) then

        if (option == 1) then
            player:setHomePoint();
            player:messageSpecial(ID.text.HOMEPOINT_SET);
        else
            hpTeleport(player, option);
        end
    end
end;