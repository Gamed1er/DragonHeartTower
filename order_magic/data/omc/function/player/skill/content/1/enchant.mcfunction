scoreboard players set @s OMC.Player.Mana.Points.Cost 50
execute as @s run function omc:player/mana/points/reduction/oount


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.omc.skill.enchant.name","color":"gray"}
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run return run function omc:player/skill/list/text/not_enough


execute as @s run scoreboard players reset @s OMC.Skill.1.Ench.Time
execute as @s run scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost

