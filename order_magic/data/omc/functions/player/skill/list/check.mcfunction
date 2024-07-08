
execute as @s at @s anchored eyes positioned ^ ^ ^.75 if entity @e[type=item,sort=nearest,nbt={Item:{tag:{Tags:["OMC.item.material"]}}},distance=..1.5] run function omc:player/skill/list/sale

scoreboard players reset @s OMC.Player.check.drop

advancement revoke @s only omc:player/skill/drop_check
