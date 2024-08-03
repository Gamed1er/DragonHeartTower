execute if score @s dragon_soul >= mana_max soul_upgrade_cost run tag @s add deal

title @s times 0t 10t 5t
execute unless score @s dragon_soul >= mana_max soul_upgrade_cost run title @s subtitle ["",{"text":"[","bold":true,"italic":false,"color":"white"},{"translate":"ToDH.dragon_pavilion.soul_upgrade.dragon_soul_not_enough","bold":true,"italic":false,"underlined":true,"color":"red"},{"text":"]","bold":true,"italic":false,"color":"white"}]
title @s title [""]

title @s times 0t 10t 5t
title @s[tag=deal] subtitle ["",{"text":"[","bold":true,"italic":false,"color":"white"},{"translate":"ToDH.dragon_pavilion.soul_upgrade.empowered_success","bold":true,"italic":false,"underlined":true,"color":"gold"},{"text":"]","bold":true,"italic":false,"color":"white"}]
title @s title [""]

scoreboard players operation @s[tag=deal] mana_max = @s OMC.Player.Mana.Points.Max
scoreboard players operation @s[tag=deal] mana_max *= 110 math
scoreboard players operation @s[tag=deal] mana_max /= 100 math
scoreboard players operation @s[tag=deal] OMC.Player.Mana.Points.Max = @s mana_max

scoreboard players operation @s[tag=deal] dragon_soul -= mana_max soul_upgrade_cost
execute as @s run function mob:dragon_pavilion/dragon_pavilion_soul_upgrade
tag @s remove deal


execute as @s store result storage mob:function dragon_soul.count int 1 run scoreboard players get @s dragon_soul
execute as @s run function mob:dragon_pavilion/dragon_soul_display with storage mob:function dragon_soul

