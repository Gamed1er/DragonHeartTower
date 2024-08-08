

schedule clear todh_b2:skill/skill2/hint/particle/timing 

execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @e[tag=ToDH.enemy.Boss2,tag=Pos] run tp @s ~ ~ ~
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s rotated ~ 0 positioned ^ ^ ^4 run particle explosion_emitter ~ ~ ~ 1 1 1 1 5
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s rotated ~ 0 positioned ^ ^ ^4 run playsound block.anvil.place record @a[distance=..16] ~ ~ ~ 16 0.6 
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s rotated ~ 0 positioned ^ ^ ^4 run playsound block.anvil.place record @a[distance=..16] ~ ~ ~ 16 0.6 
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s rotated ~ 0 positioned ^ ^ ^4 run playsound block.anvil.place record @a[distance=..16] ~ ~ ~ 16 0.6 
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s rotated ~ 0 positioned ^ ^ ^4 run playsound entity.generic.explode record @a[distance=..16] ~ ~ ~ 16 0.5
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s rotated ~ 0 positioned ^ ^ ^4 run playsound entity.generic.explode record @a[distance=..16] ~ ~ ~ 16 0.5
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s rotated ~ 0 positioned ^ ^ ^4 run playsound entity.generic.explode record @a[distance=..16] ~ ~ ~ 16 0.5 


execute as @e[tag=ToDH.enemy.Boss2,tag=Pos] at @s rotated as @e[tag=ToDH.enemy.Boss2,tag=boss] rotated ~ 0 run tp @s ^ ^ ^4 ~ ~

execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s as @a[distance=..6.5] run function todh_b2:skill/skill2/damage/hit
function todh_b2:skill/skill2/damage/flame/timing