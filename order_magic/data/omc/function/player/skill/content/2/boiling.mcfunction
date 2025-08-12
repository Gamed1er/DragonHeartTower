
scoreboard players set @s OMC.Player.Mana.Points.Cost 110
execute as @s run function omc:player/mana/points/reduction/oount


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.omc.skill.boiling.name","color":"white"}
title @s title [""]
execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run return run function omc:player/skill/list/text/not_enough

tag @s add OMC.attacker.detect
function omc:player/mana/damage/count
execute store result storage omc:function Battle.DMG float 0.08 run scoreboard players get @p[tag=OMC.attacker.detect] OMC.Player.Mana.Damage
execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run function omc:player/skill/content/2/boiling/damage with storage omc:function Battle
tag @s remove OMC.attacker.detect
