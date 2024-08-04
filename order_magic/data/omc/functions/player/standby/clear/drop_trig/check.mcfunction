



execute as @s at @s anchored eyes positioned ^ ^ ^0.75 if entity @e[type=item,nbt={Item:{tag:{Tags:["OMC.trigger"]}}},sort=nearest] run function omc:player/standby/clear/tag
execute as @s at @s anchored eyes positioned ^ ^ ^0.75 as @e[type=item,nbt={Item:{tag:{Tags:["OMC.trigger"]}}},sort=nearest,limit=1] as @s run kill @s

advancement revoke @s only omc:player/standby_drop