-----------------------------------------
-- ID: 4573
-- Item: loaf_of_steel_bread
-- Food Effect: 60Min, All Races
-----------------------------------------
-- Health 6
-- Vitality 1
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
    target:addStatusEffect(dsp.effect.FOOD,0,0,3600,4573)
end

function onEffectGain(target, effect)
    target:addMod(dsp.mod.HP, 6)
    target:addMod(dsp.mod.VIT, 1)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.HP, 6)
    target:delMod(dsp.mod.VIT, 1)
end
