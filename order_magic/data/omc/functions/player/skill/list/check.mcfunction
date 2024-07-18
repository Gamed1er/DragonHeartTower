
execute as @s at @s anchored eyes positioned ^ ^ ^.75 if entity @e[type=eye_of_ender,sort=nearest,nbt={Item:{tag:{Tags:["OMC.item.material"]}}},distance=..2] run function omc:player/skill/list/sale

scoreboard players reset @s OMC.Player.check.endereye

advancement revoke @s only omc:player/skill/eye_check
