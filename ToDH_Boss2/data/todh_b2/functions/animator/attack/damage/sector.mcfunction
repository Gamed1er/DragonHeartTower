
scoreboard players reset @s KCS.Skill.Range
execute positioned ^ ^ ^.5 run function todh_b2:animator/attack/damage/line


scoreboard players add @s KCS.Skill.Angle 1
execute unless score @s KCS.Skill.Angle matches 9.. rotated ~-10 ~ positioned ^ ^ ^ run function todh_b2:animator/attack/damage/sector

