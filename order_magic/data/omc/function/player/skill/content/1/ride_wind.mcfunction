
scoreboard players set @s OMC.Player.Mana.Points.Cost 65
execute as @s run function omc:player/mana/points/reduction/oount

title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.omc.skill.ride_wind.name","color":"aqua"}
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run return run function omc:player/skill/list/text/not_enough

execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run effect give @s speed 10 0 true
execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost


playsound minecraft:block.portal.ambient master @p ~ ~ ~ 0.3 1.2
playsound minecraft:entity.breeze.charge master @p ~ ~ ~ 1 0.8
# playsound minecraft:item.trident.riptide_1 master @p ~ ~ ~ 0.9 1.0
playsound minecraft:entity.illusioner.cast_spell master @p ~ ~ ~ 0.5 1.5