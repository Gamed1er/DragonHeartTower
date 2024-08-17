
execute positioned ~ ~ ~ rotated ~ 0 run particle dust 0.9 0.35 0.000 1 ^ ^ ^7.5 0 0 0 1 0 force

scoreboard players remove @s KCS.Skill.Angle 1

execute if score @s KCS.Skill.Angle matches 1.. positioned ^ ^ ^ rotated ~-3 0 run function todh_b2:skill/skill2/hint/particle/circle