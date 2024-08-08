

execute as @e[tag=ToDH.enemy.Boss2,tag=Pos] at @s run function todh_b2:skill/skill2/hint/particle/start

execute if entity @e[tag=ToDH.enemy.Boss2,tag=Pos] run schedule function todh_b2:skill/skill2/hint/particle/timing 1t