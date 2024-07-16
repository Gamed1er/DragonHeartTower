


title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"點燃","bold":true,"italic":true,"underlined":true,"color":"gold"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points matches 65.. run function omc:player/skill/list/text/not_enough


tag @s add OMC.attacker.detect
function omc:player/mana/damage/count
execute at @s as @s if score @s OMC.Player.Mana.Points matches 65.. as @e[tag=enemy,distance=..5] as @s store result entity @s Fire int 2.5 run scoreboard players get @p[tag=OMC.attacker.detect] OMC.Player.Mana.Damage
execute at @s as @s if score @s OMC.Player.Mana.Points matches 65.. run scoreboard players remove @s OMC.Player.Mana.Points 65
tag @s remove OMC.attacker.detect