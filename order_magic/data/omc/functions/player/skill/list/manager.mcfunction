

execute at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.1 0.5 0.1 2048
$execute as @s at @s run function omc:player/skill/id/$(ID)

scoreboard players reset @s OMC.Skill.ID
scoreboard players reset @s OMC.Skill.ID.Count