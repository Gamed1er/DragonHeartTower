
execute as @e[tag=ToDH.enemy.Boss2,tag=Pos] at @s run function todh_b2:skill/skill2/damage/flame/hit



execute if entity @e[tag=ToDH.enemy.Boss2,tag=Pos] run schedule function todh_b2:skill/skill2/damage/flame/timing 1t