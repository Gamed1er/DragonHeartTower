
scoreboard players set @s OMC.Player.Mana.Points.Cost 65
execute as @s run function omc:player/mana/points/reduction/oount

title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"打滑","bold":true,"italic":true,"underlined":true,"color":"blue"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run function omc:player/skill/list/text/not_enough

execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost as @e[tag=enemy,distance=..8] as @s run effect give @s slowness 15 0 false
execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost as @e[tag=enemy,distance=..8] as @s run function stiff:main/do/damage/enemy/normal/stiff
execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost