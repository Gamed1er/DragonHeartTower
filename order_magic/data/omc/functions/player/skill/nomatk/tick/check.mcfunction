
execute as @e[tag=OMC.Skill.Projectile] run function omc:player/skill/nomatk/tick/timing

execute if entity @e[tag=OMC.Skill.Projectile] run schedule function omc:player/skill/nomatk/tick/check 1t