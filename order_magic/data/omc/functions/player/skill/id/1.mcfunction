
scoreboard players set @s OMC.Player.Mana.Points.Cost 50
execute as @s run function omc:player/mana/points/reduction/oount


title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"附魔","bold":true,"italic":true,"underlined":true,"color":"gray"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run return run function omc:player/skill/list/text/not_enough


execute as @s run scoreboard players reset @s OMC.Skill.1.Ench.Time
execute as @s run scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost
execute as @s at @s run particle minecraft:enchant ~ ~1 ~ 0.4 0.5 0.4 0.1 640
execute as @s at @s run particle minecraft:enchant ~ ~1 ~ 0.4 0.2 0.4 0.1 1024