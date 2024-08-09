

execute at @s run particle minecraft:enchant ~ ~ ~ 0.5 0.1 0.5 0.1 512
$execute as @s at @s run function omc:player/skill/id/$(ID)

# function omc:player/mana/points/text

scoreboard players reset @s OMC.Skill.ID
scoreboard players reset @s OMC.Skill.ID.Count