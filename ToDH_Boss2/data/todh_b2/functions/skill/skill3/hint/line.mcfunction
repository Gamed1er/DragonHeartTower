
execute positioned ~ ~ ~ rotated ~ 0 run particle dust 0.98 0.008 0.008 1 ^1 ^0.1 ^ 0 0 0 1 2 force
execute positioned ~ ~ ~ rotated ~ 0 run particle dust 0.98 0.008 0.008 1 ^-1 ^0.1 ^ 0 0 0 1 2 force

scoreboard players remove @s KCS.Skill.Range 1

execute if score @s KCS.Skill.Range matches 1.. positioned ^ ^ ^.5 rotated ~ 0 run function todh_b2:skill/skill3/hint/line