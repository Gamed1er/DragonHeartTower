

execute as @s at @s if score @s OMC.Player.check.drop matches 1.. if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{OMC:{trigger:true}}}}},distance=..2] run return fail

$execute as @s unless items entity @s container.$(slot) * run return run item replace entity @s container.$(slot) from block ~ -62 ~ container.0

execute as @s unless data entity @s Inventory[{Slot:0b}] run return run item replace entity @s hotbar.0 from entity @s weapon.offhand

$summon item ~ ~1.1 ~ {PickupDelay:0,Item:{id:"$(id)",count:1,components:$(nbt)}}