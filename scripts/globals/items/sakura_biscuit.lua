-----------------------------------------
-- ID: 6010
-- Item: Sakura Biscuit
-- Food Effect: 30Min, All Races
-----------------------------------------
-- Intelligence 3
-- Charisma 2
-- Evasion +2
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,1800,6010)
end

function onEffectGain(target,effect)
    target:addMod(dsp.mod.INT, 3)
    target:addMod(dsp.mod.CHR, 2)
    target:addMod(dsp.mod.EVA, 2)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.INT, 3)
    target:delMod(dsp.mod.CHR, 2)
    target:delMod(dsp.mod.EVA, 2)
end
