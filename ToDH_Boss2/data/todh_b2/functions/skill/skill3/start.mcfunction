data modify entity @s NoAI set value 1b


execute at @s as @r[sort=furthest,limit=1] run tag @s add boss.Skill.detect
effect give @a[tag=boss.Skill.detect] glowing 2 0


schedule clear todh_b2:animator/tick
function todh_b2:animator/clear_all

execute at @s positioned ~ ~3 ~ run function skill3:summon
execute at @s run function todh_b2:animator/ride
function skill3:start_animation
scoreboard players set ToDH.Index ToDH.Boss2.Skill.Duration 6
schedule function todh_b2:skill/skill3/hook/start 1.75s
schedule function todh_b2:skill/skill3/clear 4s
execute as @e[tag=ToDH.enemy.Boss2,tag=Display] run data modify entity @s Glowing set value 1b

tag @s add Animation.isSkill3
execute at @s run function todh_b2:skill/skill3/hint/timing