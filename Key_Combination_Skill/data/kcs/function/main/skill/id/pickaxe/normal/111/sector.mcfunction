
scoreboard players reset @s KCS.Skill.Range
execute positioned ^ ^ ^.5 run function kcs:main/skill/id/pickaxe/normal/111/line



scoreboard players add @s KCS.Skill.Angle 1
execute unless score @s KCS.Skill.Angle matches 13.. rotated ~ ~10 positioned ^ ^ ^ run function kcs:main/skill/id/pickaxe/normal/111/sector

