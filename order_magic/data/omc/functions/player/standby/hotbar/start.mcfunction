
execute as @s store result storage omc:function reg.Slot int 1 run scoreboard players set @s OMC.storage.hotbar.slot 0
execute as @s store result storage omc:function reg.ID int 1 run scoreboard players get @s OMC.Player.ID
execute as @s run function omc:player/standby/hotbar/storage with storage omc:function reg

function omc:player/standby/hotbar/tick/check