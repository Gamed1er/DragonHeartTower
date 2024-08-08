
execute positioned ~ ~ ~ rotated ~ 0 run particle flame ~ ~ ~ ^ ^ ^99999 0.000004 0

scoreboard players remove @s KCS.Skill.Angle 1

execute if score @s KCS.Skill.Angle matches 1.. positioned ^ ^ ^ rotated ~-3 0 run function todh_b2:skill/skill2/damage/flame/particle/circle