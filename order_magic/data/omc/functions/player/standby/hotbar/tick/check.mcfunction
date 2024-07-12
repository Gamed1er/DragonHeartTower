
execute as @a[tag=OMC.Players.standby] if data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.trigger"]}}] unless data entity @s Inventory[{Slot:0b,tag:{Tags:["OMC.item.material","None"]}}] run function omc:player/standby/hotbar/tick/clear
execute as @a[tag=OMC.Players.standby] if data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.trigger"]}}] unless data entity @s Inventory[{Slot:1b,tag:{Tags:["OMC.item.material","Fire"]}}] run function omc:player/standby/hotbar/tick/clear
execute as @a[tag=OMC.Players.standby] if data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.trigger"]}}] unless data entity @s Inventory[{Slot:2b,tag:{Tags:["OMC.item.material","Water"]}}] run function omc:player/standby/hotbar/tick/clear
execute as @a[tag=OMC.Players.standby] if data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.trigger"]}}] unless data entity @s Inventory[{Slot:3b,tag:{Tags:["OMC.item.material","Wood"]}}] run function omc:player/standby/hotbar/tick/clear
execute as @a[tag=OMC.Players.standby] if data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.trigger"]}}] unless data entity @s Inventory[{Slot:4b,tag:{Tags:["OMC.item.material","Earth"]}}] run function omc:player/standby/hotbar/tick/clear
execute as @a[tag=OMC.Players.standby] if data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.trigger"]}}] unless data entity @s Inventory[{Slot:5b,tag:{Tags:["OMC.item.material","Wind"]}}] run function omc:player/standby/hotbar/tick/clear
execute as @a[tag=OMC.Players.standby] if data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.trigger"]}}] unless data entity @s Inventory[{Slot:6b,tag:{Tags:["OMC.item.material","Empty"]}}] run function omc:player/standby/hotbar/tick/clear
execute as @a[tag=OMC.Players.standby] if data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.trigger"]}}] unless data entity @s Inventory[{Slot:7b,tag:{Tags:["OMC.item.material","Empty"]}}] run function omc:player/standby/hotbar/tick/clear
execute as @a[tag=OMC.Players.standby] if data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.trigger"]}}] unless data entity @s Inventory[{Slot:8b,tag:{Tags:["OMC.item.material","Empty"]}}] run function omc:player/standby/hotbar/tick/clear
execute as @a[tag=OMC.Players.standby] at @s run particle minecraft:enchant ~ ~1 ~ 0.4 0.3 0.4 0.1 8

execute if entity @a[tag=OMC.Players.standby] run schedule function omc:player/standby/hotbar/tick/check 2t replace