
$execute as @s run item replace entity @s hotbar.$(Slot) with air
$execute at @s as @e[type=marker,limit=1,sort=nearest,tag=OMC.marker.storage.return] at @s run item replace entity @p[tag=OMC.Players.standby] hotbar.$(Slot) from block ~ ~1 ~ container.$(Slot)
execute as @s store result storage omc:function reg.Slot int 1 run scoreboard players add @s OMC.storage.hotbar.slot 1

execute as @s if score @s OMC.storage.hotbar.slot matches ..8 run function omc:player/standby/clear/return with storage omc:function reg
