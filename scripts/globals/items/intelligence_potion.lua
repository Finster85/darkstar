-----------------------------------------
--  ID: 4207
--  Item: Intelligence Potion
--  Intelligence 7
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")

function onItemCheck(target)
    if (target:hasStatusEffect(dsp.effect.MEDICINE)) then
        return dsp.msg.basic.ITEM_NO_USE_MEDICATED
    end
    return 0
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.INT_BOOST,7,0,180)
    target:addStatusEffect(dsp.effect.MEDICINE,0,0,900)
end
