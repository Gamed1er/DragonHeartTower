
scoreboard players set @s OMC.Player.Mana.Points.Cost 120
execute as @s run function omc:player/mana/points/reduction/oount


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.omc.skill.spread.name","color":"gold"}
title @s title [""]
execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run return run function omc:player/skill/list/text/not_enough

tag @s add OMC.attacker.detect
function omc:player/mana/damage/count
execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run function omc:player/skill/content/2/spread/fire

tag @s remove OMC.attacker.detect