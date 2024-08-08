

execute at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~

schedule clear todh_b2:animator/tick
function todh_b2:animator/clear_all

execute at @s positioned ~ ~3 ~ run function skill4:summon
execute at @s run function todh_b2:animator/ride
function skill4:start_animation
scoreboard players set ToDH.Index ToDH.Boss2.Skill.Duration 6
schedule function todh_b2:skill/skill4/summon/start 1s
schedule function todh_b2:skill/skill4/rush/start 1.5s
schedule function todh_b2:skill/skill4/clear 2s
execute as @e[tag=ToDH.enemy.Boss2,tag=Display] run data modify entity @s Glowing set value 1b

tag @s add Animation.isSkill4

