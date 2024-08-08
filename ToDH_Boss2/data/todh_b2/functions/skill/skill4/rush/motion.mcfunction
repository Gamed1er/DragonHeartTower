
execute as @e[tag=ToDH.enemy.Boss2,tag=partner] run data modify entity @s NoAI set value 0b

execute at @s facing entity @p[] eyes positioned 0.0 0.0 0.0 as @e[tag=OMC.marker.vector] run tp @s ^ ^.2 ^20.0

execute store result entity @s Motion[0] double 0.0001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[0] 1000
execute store result entity @s Motion[1] double 0.0001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[1] 1000
execute store result entity @s Motion[2] double 0.0001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[2] 1000