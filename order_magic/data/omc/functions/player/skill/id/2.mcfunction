


title @s times 0t 6t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"點燃","bold":true,"italic":true,"underlined":true,"color":"gold"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points matches 65.. run function omc:player/skill/list/text/not_enough

execute at @s as @s if score @s OMC.Player.Mana.Points matches 65.. as @e[tag=enemy,distance=..5] as @s run data modify entity @s Fire set value 100
execute at @s as @s if score @s OMC.Player.Mana.Points matches 65.. run scoreboard players remove @s OMC.Player.Mana.Points 65