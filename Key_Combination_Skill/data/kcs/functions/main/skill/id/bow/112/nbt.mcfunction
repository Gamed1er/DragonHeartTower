

execute as @s store result entity @s Motion[0] double 0.000125 run data get entity @s Motion[0] 10000
execute as @s store result entity @s Motion[1] double 0.000125 run data get entity @s Motion[1] 10000
execute as @s store result entity @s Motion[2] double 0.000125 run data get entity @s Motion[2] 10000

execute if entity @s[nbt={inGround:1b}] run tag @s remove KCS.arrow.sniper