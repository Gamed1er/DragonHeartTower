
scoreboard players reset @s KCS.Skill.Range
execute positioned ^ ^ ^.5 run function kcs:main/skill/id/sword/222/line


scoreboard players add @s KCS.Skill.Angle 1
execute unless score @s KCS.Skill.Angle matches 19.. rotated ~10 ~ positioned ^ ^ ^ run function kcs:main/skill/id/sword/222/sector

