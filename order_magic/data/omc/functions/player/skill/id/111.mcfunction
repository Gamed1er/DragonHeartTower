
scoreboard players set @s OMC.Player.Mana.Points.Cost 200

title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"奇點","bold":true,"italic":true,"underlined":true,"color":"gray"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]
execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run function omc:player/skill/list/text/not_enough


tag @s add OMC.attacker.detect
function omc:player/mana/damage/count
execute store result storage omc:function Battle.DMG float 0.18 run scoreboard players get @s OMC.Player.Mana.Damage
execute at @s as @s if score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run function omc:player/skill/id/111/damage with storage omc:function Battle
tag @s remove OMC.attacker.detect
