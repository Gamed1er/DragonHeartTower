

execute as @s at @s anchored eyes positioned ^ ^ ^.75 if entity @e[type=item,sort=nearest,nbt={Item:{tag:{Tags:["OMC.trigger"]}}}] run function omc:player/skill/nomatk/do


scoreboard players reset @s OMC.Player.check.drop

advancement revoke @s only omc:player/nomatk