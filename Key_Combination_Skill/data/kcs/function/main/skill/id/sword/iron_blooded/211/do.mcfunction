


title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"獠牙","bold":true,"italic":true,"underlined":true,"color":"red"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]


execute at @s run playsound minecraft:entity.wolf.growl record @a[distance=..16] ~ ~ ~ 10 0.8 0.7
execute at @s run playsound minecraft:entity.wolf.ambient record @a[distance=..16] ~ ~ ~ 10 0.5 0.7
execute at @s positioned ^ ^ ^1 run playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 10 0.7 0.7
tag @s add KCS.attacker.detect
execute at @s run function kcs:main/skill/id/sword/iron_blooded/211/multi
tag @s remove KCS.attacker.detect