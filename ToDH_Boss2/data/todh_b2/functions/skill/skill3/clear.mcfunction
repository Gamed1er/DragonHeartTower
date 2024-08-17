
scoreboard players reset boss.Skill3 ToDH.Boss2.Skill.Timing

kill @e[tag=ToDH.enemy.Boss2,tag=pos]
kill @e[tag=ToDH.enemy.Boss2,tag=display]
kill @e[tag=ToDH.enemy.Boss2,tag=Hook]


function skill3:stop_animation
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] run function todh_b2:skill/clear
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] run function todh_b2:skill/skill3/hook/pull

tag @a remove boss.Skill.detect