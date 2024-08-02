
tag @s add ToDH.HardAttacker
execute as @s store result entity @s Motion[0] double 0.00015 run data get entity @s Motion[0] 10000
execute as @s store result entity @s Motion[1] double 0.00015 run data get entity @s Motion[1] 10000
execute as @s store result entity @s Motion[2] double 0.00015 run data get entity @s Motion[2] 10000
data modify entity @s damage set value 3.0f
execute if entity @s[nbt={inGround:1b}] run tag @s remove KCS.arrow.sniper

execute at @s run particle enchanted_hit ~ ~ ~ 0 0 0 0 5