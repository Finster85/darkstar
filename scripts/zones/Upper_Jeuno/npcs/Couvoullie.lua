-----------------------------------
-- Area: Upper Jeuno
--  NPC: Couvoullie
-- Type: Chocobo Renter
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/chocobo");
require("scripts/globals/status");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    local level = player:getMainLvl();
    local gil = player:getGil();

    if (player:hasKeyItem(dsp.ki.CHOCOBO_LICENSE) and level >= 20) then
        local price = getChocoboPrice(player);
        player:setLocalVar("chocoboPriceOffer",price);

        player:startEvent(10003,price,gil);
    else
        player:startEvent(10006);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)

    local price = player:getLocalVar("chocoboPriceOffer");

    if (csid == 10003 and option == 0) then
        if (player:delGil(price)) then
            updateChocoboPrice(player, price);

            local duration = 1800 + (player:getMod(dsp.mod.CHOCOBO_RIDING_TIME) * 60)

            player:addStatusEffectEx(dsp.effect.MOUNTED,dsp.effect.MOUNTED,0,0,duration,true);

            player:setPos(486,8,-160,128,105);
        end
    end
end;