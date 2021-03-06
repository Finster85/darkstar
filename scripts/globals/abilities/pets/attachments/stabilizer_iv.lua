-----------------------------------
-- Attachment: Stabilizer IV
-----------------------------------
require("scripts/globals/status")

function onEquip(pet)
    pet:addMod(dsp.mod.ACC, 30)
end

function onUnequip(pet)
    pet:delMod(dsp.mod.ACC, 30)
end

function onManeuverGain(pet,maneuvers)
    if (maneuvers == 1) then
        pet:addMod(dsp.mod.ACC, 10)
    elseif (maneuvers == 2) then
        pet:addMod(dsp.mod.ACC, 15)
    elseif (maneuvers == 3) then
        pet:addMod(dsp.mod.ACC, 15)
    end
end

function onManeuverLose(pet,maneuvers)
    if (maneuvers == 1) then
        pet:delMod(dsp.mod.ACC, 10)
    elseif (maneuvers == 2) then
        pet:delMod(dsp.mod.ACC, 15)
    elseif (maneuvers == 3) then
        pet:delMod(dsp.mod.ACC, 15)
    end
end