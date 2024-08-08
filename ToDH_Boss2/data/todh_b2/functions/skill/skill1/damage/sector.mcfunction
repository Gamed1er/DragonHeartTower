
execute as @s positioned ~ ~-2.5 ~ rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute at @s run function todh_b2:animator/ride

scoreboard players reset @s KCS.Skill.Range
execute positioned ^ ^ ^.5 run function todh_b2:skill/skill1/damage/line


scoreboard players add @s KCS.Skill.Angle 1
execute unless score @s KCS.Skill.Angle matches 8.. rotated ~10 0 positioned ^ ^ ^ run function todh_b2:skill/skill1/damage/sector

