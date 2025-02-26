
tag @s add OMC.attacker.detect
function omc:player/mana/damage/count
execute store result storage omc:function Battle.DMG float 0.00125 run scoreboard players get @p[tag=OMC.attacker.detect] OMC.Player.Mana.Damage
execute at @s as @e[tag=enemy,distance=..5] run function omc:player/skill/id/256/scale with storage omc:function Battle
tag @s remove OMC.attacker.detect
scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost 