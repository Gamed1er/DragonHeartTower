

function attack:stop_animation
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] run data modify entity @s NoAI set value 0b
tag @e[tag=ToDH.enemy.Boss2,tag=boss] remove Animation.isAttack

execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s run data modify entity @s AngryAt set from entity @p UUID

schedule function todh_b2:animator/tick 1t