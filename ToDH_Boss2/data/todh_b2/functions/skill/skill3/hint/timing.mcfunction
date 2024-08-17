

execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s run function todh_b2:skill/skill3/hint/start

execute if entity @e[tag=ToDH.enemy.Boss2,tag=boss,tag=Animation.isSkill3] run schedule function todh_b2:skill/skill3/hint/timing 3t