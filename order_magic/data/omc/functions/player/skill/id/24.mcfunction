
scoreboard players set @s OMC.Player.Mana.Points.Cost 100
execute as @s run function omc:player/mana/points/reduction/oount


title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"抱薪救火","bold":true,"italic":true,"underlined":true,"color":"gold"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]
execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run function omc:player/skill/list/text/not_enough

tag @s add OMC.attacker.detect
function omc:player/mana/damage/count
scoreboard players operation @s OMC.Player.Mana.Damage *= 5 Math
scoreboard players operation @s OMC.Player.Mana.Damage *= 5 Math
scoreboard players operation @s OMC.Player.Mana.Damage /= 2 Math
scoreboard players add @s OMC.Player.Mana.Damage 2000
execute store result storage omc:function Battle.DMG float 0.001 run scoreboard players get @p[tag=OMC.attacker.detect] OMC.Player.Mana.Damage
execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run function omc:player/skill/id/24/multi with storage omc:function Battle
tag @s remove OMC.attacker.detect