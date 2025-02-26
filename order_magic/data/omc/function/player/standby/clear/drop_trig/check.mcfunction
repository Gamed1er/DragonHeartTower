



execute as @s at @s anchored eyes positioned ^ ^ ^0.75 if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{OMC:{}}}}},sort=nearest] run function omc:player/standby/clear/tag
execute as @s at @s anchored eyes positioned ^ ^ ^0.75 as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{OMC:{}}}}},sort=nearest,limit=1] as @s run kill @s
scoreboard players reset @s OMC.Player.check.drop

advancement revoke @s only omc:player/standby_drop