clear @s #omc:material{Tags:["OMC.item.material"]}

item replace entity @s hotbar.0 with minecraft:ender_eye
item replace entity @s hotbar.1 with minecraft:ender_eye
item replace entity @s hotbar.2 with minecraft:ender_eye
item replace entity @s hotbar.3 with minecraft:ender_eye
item replace entity @s hotbar.4 with minecraft:ender_eye
item replace entity @s hotbar.5 with minecraft:ender_eye
item replace entity @s hotbar.6 with minecraft:barrier
item replace entity @s hotbar.7 with minecraft:barrier
item replace entity @s hotbar.8 with minecraft:barrier
item modify entity @s hotbar.0 omc:item/material/none
item modify entity @s hotbar.1 omc:item/material/fire
item modify entity @s hotbar.2 omc:item/material/water
item modify entity @s hotbar.3 omc:item/material/wood
item modify entity @s hotbar.4 omc:item/material/earth
item modify entity @s hotbar.5 omc:item/material/wind
item modify entity @s hotbar.6 omc:item/material/empty
item modify entity @s hotbar.7 omc:item/material/empty
item modify entity @s hotbar.8 omc:item/material/empty
execute as @e[type=item,nbt={Item:{tag:{Tags:["OMC.item.material"]}}},sort=nearest] as @s run kill @s