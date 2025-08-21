

scoreboard players set @s OMC.Player.Mana.Points.Cost 65
execute as @s run function omc:player/mana/points/reduction/oount

title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.omc.skill.earth_armor.name","color":"#663300"}
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run return run function omc:player/skill/list/text/not_enough

execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run effect give @s absorption 15 0 true
execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost


playsound minecraft:block.amethyst_block.hit master @p ~ ~ ~ 0.6 1.1
playsound minecraft:block.gravel.place master @p ~ ~ ~ 1 1.0
playsound minecraft:block.stone.place master @p ~ ~ ~ 1 0.8
playsound minecraft:block.deepslate.place master @p ~ ~ ~ 0.8 0.9
playsound minecraft:block.basalt.place master @p ~ ~ ~ 1 0.7