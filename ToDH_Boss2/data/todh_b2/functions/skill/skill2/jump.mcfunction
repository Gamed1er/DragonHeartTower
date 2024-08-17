
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s run particle white_smoke ~ ~.5 ~ 1 0.25 1 0.3 512
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s run playsound minecraft:entity.player.attack.knockback record @a ~ ~ ~ 100 0.01

execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s facing entity @e[tag=ToDH.enemy.Boss2,tag=Pos] feet run tp @s ~ ~16 ~ ~ ~

function todh_b2:skill/skill2/hint/particle/timing 
execute at @s run function todh_b2:animator/ride