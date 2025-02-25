scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 60..100
function stiff:main/do/damage/toughness

# execute as @s if data entity @s Inventory[{Slot:-106b}].tag{Tags:["ToDH.Weapons.Boss2"]} run return run function kcs:main/skill/id/sword/normal/iron_blooded/111/do

title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"穿刺","bold":true,"italic":true,"underlined":true,"color":"aqua"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]

tag @s add KCS.attacker.detect
execute at @s anchored eyes positioned ^ ^ ^.25 run function kcs:main/skill/id/sword/normal/111/line
tag @s remove KCS.attacker.detect