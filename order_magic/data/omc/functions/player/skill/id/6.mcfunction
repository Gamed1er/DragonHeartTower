
title @s times 0t 6t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"乘風","bold":true,"italic":true,"underlined":true,"color":"aqua"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points matches 50.. run function omc:player/skill/list/text/not_enough

execute at @s as @s if score @s OMC.Player.Mana.Points matches 50.. run effect give @s speed 10 0 true
execute at @s as @s if score @s OMC.Player.Mana.Points matches 50.. run scoreboard players remove @s OMC.Player.Mana.Points 50