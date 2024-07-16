


title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"包覆","bold":true,"italic":true,"underlined":true,"color":"#663300"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points matches 65.. run function omc:player/skill/list/text/not_enough

execute at @s as @s if score @s OMC.Player.Mana.Points matches 65.. run effect give @s absorption 15 0 true
execute at @s as @s if score @s OMC.Player.Mana.Points matches 65.. run scoreboard players remove @s OMC.Player.Mana.Points 65