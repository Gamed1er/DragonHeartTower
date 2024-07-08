

$data modify storage omc:function Players.PC$(ID).hotbar append from entity @s Inventory[{Slot:$(Slot)b}]
$execute as @s run item replace entity @s hotbar.$(Slot) with air
$execute as @s if score @s OMC.storage.hotbar.slot matches 0 run item replace entity @s hotbar.$(Slot) with minecraft:firework_star
$execute as @s if score @s OMC.storage.hotbar.slot matches 1 run item replace entity @s hotbar.$(Slot) with minecraft:blaze_powder
$execute as @s if score @s OMC.storage.hotbar.slot matches 2 run item replace entity @s hotbar.$(Slot) with minecraft:tube_coral
$execute as @s if score @s OMC.storage.hotbar.slot matches 3 run item replace entity @s hotbar.$(Slot) with minecraft:dead_bush
$execute as @s if score @s OMC.storage.hotbar.slot matches 4 run item replace entity @s hotbar.$(Slot) with minecraft:pitcher_pod
$execute as @s if score @s OMC.storage.hotbar.slot matches 5 run item replace entity @s hotbar.$(Slot) with minecraft:string
$execute as @s if score @s OMC.storage.hotbar.slot matches 6..8 run item replace entity @s hotbar.$(Slot) with minecraft:barrier
$execute as @s if score @s OMC.storage.hotbar.slot matches 0 run item modify entity @s hotbar.$(Slot) omc:item/material/none
$execute as @s if score @s OMC.storage.hotbar.slot matches 1 run item modify entity @s hotbar.$(Slot) omc:item/material/fire
$execute as @s if score @s OMC.storage.hotbar.slot matches 2 run item modify entity @s hotbar.$(Slot) omc:item/material/water
$execute as @s if score @s OMC.storage.hotbar.slot matches 3 run item modify entity @s hotbar.$(Slot) omc:item/material/wood
$execute as @s if score @s OMC.storage.hotbar.slot matches 4 run item modify entity @s hotbar.$(Slot) omc:item/material/earth
$execute as @s if score @s OMC.storage.hotbar.slot matches 5 run item modify entity @s hotbar.$(Slot) omc:item/material/wind
$execute as @s if score @s OMC.storage.hotbar.slot matches 6..8 run item modify entity @s hotbar.$(Slot) omc:item/material/empty

execute as @s store result storage omc:function reg.Slot int 1 run scoreboard players add @s OMC.storage.hotbar.slot 1
execute as @s if score @s OMC.storage.hotbar.slot matches ..8 run function omc:player/standby/hotbar/storage with storage omc:function reg

$execute as @s unless data storage omc:function Players.PC$(ID).hotbar[{Slot:-106b}] run data modify storage omc:function Players.PC$(ID).hotbar append from entity @s Inventory[{Slot:-106b}]