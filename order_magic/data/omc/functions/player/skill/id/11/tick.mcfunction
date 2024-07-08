
execute as @e[tag=OMC.Skill.target,tag=OMC.Skill.ID.11] at @s unless entity @e[nbt={Tags:["OMC.Skill.ID.11","OMC.Skill.Projectile"]},distance=..2] as @s run function omc:player/skill/id/11/hit


execute if entity @e[tag=OMC.Skill.target,tag=OMC.Skill.ID.11] run schedule function omc:player/skill/id/11/tick 1t