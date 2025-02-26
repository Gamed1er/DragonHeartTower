scoreboard players set @s OMC.Player.Mana.Points.Cost 65
execute as @s run function omc:player/mana/points/reduction/oount


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.omc.skill.2.name","color":"gold"}
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run return run function omc:player/skill/list/text/not_enough


tag @s add OMC.attacker.detect
function omc:player/mana/damage/count
execute at @s as @s as @e[tag=enemy,distance=..7] as @s store result entity @s Fire int 2.5 run scoreboard players get @p[tag=OMC.attacker.detect] OMC.Player.Mana.Damage
execute at @s as @s run scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost
execute as @s at @s run particle minecraft:flame ~ ~ ~ 2.5 0 2.5 0.1 512
tag @s remove OMC.attacker.detect