scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 200..240
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"水平斬","bold":true,"italic":true,"underlined":true,"color":"aqua"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]

tag @s add KCS.attacker.detect
execute at @s positioned ~ ~1 ~ rotated ~-90 0 run function kcs:main/skill/id/sword/222/sector
tag @s remove KCS.attacker.detect