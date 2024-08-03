execute as @s at @s run scoreboard players set @e[type=skeleton,tag=skull_thrower,sort=nearest,limit=1] skull_thrower_cd 0
execute as @s at @s run tp @s ~ ~ ~ facing entity @p
execute as @s at @s run tp @s ^ ^ ^0.1

execute at @s positioned ^ ^ ^0.5 run function mob:summon_mob/skull

execute as @s at @s store result score @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] Motion_X run data get entity @s Pos[0] 1000
execute as @s at @s store result score @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] Motion_Y run data get entity @s Pos[1] 1000
execute as @s at @s store result score @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] Motion_Z run data get entity @s Pos[2] 1000

execute as @s at @s run tp @s ^ ^ ^0.1

execute as @s at @s store result score @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] Motion_X2 run data get entity @s Pos[0] 1000
execute as @s at @s store result score @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] Motion_Y2 run data get entity @s Pos[1] 1000
execute as @s at @s store result score @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] Motion_Z2 run data get entity @s Pos[2] 1000

execute at @s as @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] run scoreboard players operation @s Motion_X2 -= @s Motion_X
execute at @s as @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] run scoreboard players operation @s Motion_Y2 -= @s Motion_Y
execute at @s as @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] run scoreboard players operation @s Motion_Z2 -= @s Motion_Z

execute at @s as @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] store result entity @s Motion[0] double 0.02 run scoreboard players get @s Motion_X2
execute at @s as @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] store result entity @s Motion[1] double 0.02 run scoreboard players get @s Motion_Y2
execute at @s as @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] store result entity @s Motion[2] double 0.02 run scoreboard players get @s Motion_Z2

execute at @s as @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] run scoreboard players set @s skull_change_time 600
execute at @s as @e[type=magma_cube,tag=skull,tag=new_born,sort=nearest,limit=1] run tag @s remove new_born
kill @s