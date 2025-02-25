
scoreboard players reset @s KCS.Skill.Range
execute positioned ^ ^ ^.5 run function kcs:main/skill/id/axe/normal/222/line


scoreboard players add @s KCS.Skill.Angle 1
execute unless score @s KCS.Skill.Angle matches 37.. rotated ~10 ~ positioned ^ ^ ^ run function kcs:main/skill/id/axe/normal/222/sector

