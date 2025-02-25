
scoreboard players reset @s KCS.Skill.Range
execute positioned ^ ^ ^.5 run function kcs:main/skill/id/sword/iron_blooded/222/line


scoreboard players add @s KCS.Skill.Angle 1
execute unless score @s KCS.Skill.Angle matches 31.. rotated ~10 ~-2 positioned ^ ^ ^ run function kcs:main/skill/id/sword/iron_blooded/222/sector2

