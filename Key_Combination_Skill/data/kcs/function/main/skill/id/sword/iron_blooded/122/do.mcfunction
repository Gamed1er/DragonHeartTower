

scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 120..200
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"嗜血巡獵","bold":true,"italic":true,"underlined":true,"color":"red"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]


tag @s add KCS.attacker.detect
# execute at @s run particle dust 0.561 0 0 2 ~ ~1 ~ 0.2 0.5 0.2 0.05 256
execute at @s run playsound minecraft:entity.wolf.howl record @a[distance=..16] ~ ~ ~ 1 1 0.7
execute at @s run playsound minecraft:entity.wolf.howl record @a[distance=..16] ~ ~ ~ 1 0.8 0.7
execute at @s run playsound minecraft:entity.wolf.howl record @a[distance=..16] ~ ~ ~ 1 0.85 0.7
execute at @s positioned ~ ~ ~ rotated ~-180 0 positioned ^ ^ ^ run function kcs:main/skill/id/sword/iron_blooded/122/line
effect give @s speed 15 2 false
tag @s remove KCS.attacker.detect