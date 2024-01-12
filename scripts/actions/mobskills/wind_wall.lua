-----------------------------------
-- Wind Wall
--
-- Description: Invokes a protective wind barrier for increased evasion.
-- Type: Enhancing
-- Utsusemi/Blink absorb: N/A
-- Range: Self
-- Notes: Very sharp evasion increase.
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local typeEffect = xi.effect.EVASION_BOOST
    skill:setMsg(xi.mobskills.mobBuffMove(mob, typeEffect, 50, 0, 60))
    return typeEffect
end

return mobskillObject
