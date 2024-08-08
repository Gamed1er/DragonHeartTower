
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] run function todh_b2:skill/skill1/damage/start

scoreboard players remove ToDH.Index ToDH.Boss2.Skill.Duration 1

execute if score ToDH.Index ToDH.Boss2.Skill.Duration matches 1.. run schedule function todh_b2:skill/skill1/damage/detect 1t