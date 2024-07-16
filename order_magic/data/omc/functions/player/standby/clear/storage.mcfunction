execute at @s run summon marker ~ ~ ~ {Tags:["OMC.marker.storage.return"]}
execute at @s run setblock ~ ~1 ~ chest
$execute at @s run data modify block ~ ~1 ~ Items set from storage omc:function Players.PC$(ID).hotbar
execute as @s run function omc:player/standby/clear/return with storage omc:function reg

$data modify storage omc:function reg.item.nbt set from storage omc:function Players.PC$(ID).hotbar[{Slot:-106b}].tag
$data modify storage omc:function reg.item.id set from storage omc:function Players.PC$(ID).hotbar[{Slot:-106b}].id
execute as @s run function omc:player/standby/clear/item with storage omc:function reg.item
execute as @s if data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.item.material"]}}] run item replace entity @s weapon.offhand with air

execute at @s as @e[type=marker,limit=1,sort=nearest,tag=OMC.marker.storage.return] at @s run setblock ~ ~1 ~ air
execute at @s as @e[type=marker,limit=1,sort=nearest,tag=OMC.marker.storage.return] as @s run kill @s
$data modify storage omc:function Players.PC$(ID).hotbar set value []