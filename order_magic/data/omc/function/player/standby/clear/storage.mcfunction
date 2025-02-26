execute at @s run summon marker ~ ~ ~ {Tags:["OMC.marker.storage.return"]}
execute at @s run setblock ~ -63 ~ chest replace
$execute at @s run data modify block ~ -63 ~ Items set from storage omc:function Players.PC$(ID).hotbar
execute as @s run function omc:player/standby/clear/return with storage omc:function reg

execute at @s run setblock ~ -62 ~ chest{Items:[{count:1,Slot:0b,id:"barrier"}]} replace
$execute at @s run data modify block ~ -62 ~ Items[0].id set from storage omc:function Players.PC$(ID).hotbar[{Slot:-106b}].id
$execute at @s run data modify block ~ -62 ~ Items[0].components set from storage omc:function Players.PC$(ID).hotbar[{Slot:-106b}].components
$data modify storage omc:function reg.item.nbt set from storage omc:function Players.PC$(ID).hotbar[{Slot:-106b}].components
$data modify storage omc:function reg.item.id set from storage omc:function Players.PC$(ID).hotbar[{Slot:-106b}].id
execute as @s run function omc:player/standby/clear/item with storage omc:function reg.item
execute as @s if data entity @s Inventory[{Slot:-106b,components:{"minecraft:custom_data":{OMC:{item_type:"material"}}}}] run item replace entity @s weapon.offhand with air

execute at @s as @e[type=marker,limit=1,sort=nearest,tag=OMC.marker.storage.return] at @s run setblock ~ -63 ~ air
execute at @s as @e[type=marker,limit=1,sort=nearest,tag=OMC.marker.storage.return] at @s run setblock ~ -62 ~ air
execute at @s as @e[type=marker,limit=1,sort=nearest,tag=OMC.marker.storage.return] as @s run kill @s
$data modify storage omc:function Players.PC$(ID).hotbar set value []