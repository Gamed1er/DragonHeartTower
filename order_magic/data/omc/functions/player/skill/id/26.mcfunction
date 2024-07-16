

title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"擴散","bold":true,"italic":true,"underlined":true,"color":"gold"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]
execute at @s as @s unless score @s OMC.Player.Mana.Points matches 120.. run function omc:player/skill/list/text/not_enough

tag @s add OMC.attacker.detect
function omc:player/mana/damage/count
execute at @s as @s if score @s OMC.Player.Mana.Points matches 120.. as @e[tag=enemy,distance=..8] as @s unless data entity @s {Fire:-1s} as @s at @s as @e[distance=..4,nbt={Fire:-1s},tag=enemy] store result entity @s Fire int 1 run data get entity @e[tag=enemy,limit=1,sort=nearest,nbt=!{Fire:-1s}] Fire
execute at @s as @s if score @s OMC.Player.Mana.Points matches 120.. as @e[tag=enemy,distance=..8] as @s unless data entity @s {Fire:-1s} as @s at @s at @s run particle flame ~ ~1 ~ 0.2 0.5 0.2 0.05 96
execute at @s as @s if score @s OMC.Player.Mana.Points matches 120.. run scoreboard players remove @s OMC.Player.Mana.Points 120
tag @s remove OMC.attacker.detect