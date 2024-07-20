execute if score @s dragon_soul >= legs keep_inventory_cost run tag @s add deal

title @s times 0t 10t 5t
execute unless score @s dragon_soul >= legs keep_inventory_cost run title @s subtitle ["",{"text":"[","bold":true,"italic":false,"color":"white"},{"translate":"ToDH.dragon_pavilion.soul_mark.dragon_soul_not_enough","bold":true,"italic":false,"underlined":true,"color":"red"},{"text":"]","bold":true,"italic":false,"color":"white"}]
title @s title [""]

title @s times 0t 10t 5t
title @s[tag=deal] subtitle ["",{"text":"[","bold":true,"italic":false,"color":"white"},{"translate":"ToDH.dragon_pavilion.soul_mark.brand_success","bold":true,"italic":false,"underlined":true,"color":"gold"},{"text":"]","bold":true,"italic":false,"color":"white"}]
title @s title [""]

scoreboard players set @s[tag=deal] keep_inventory_armor_legs 1
scoreboard players operation @s[tag=deal] dragon_soul -= legs keep_inventory_cost
execute as @s run function mob:dragon_pavilion/dragon_pavilion_soul_mark
tag @s remove deal

execute as @s store result storage mob:function dragon_soul.count int 1 run scoreboard players get @s dragon_soul
execute as @s run function mob:dragon_pavilion/dragon_soul_display with storage mob:function dragon_soul
