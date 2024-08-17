
execute at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~

function todh_b2:animator/clear_all
execute at @s positioned ~ ~3 ~ run function skill1:summon
execute at @s run function todh_b2:animator/ride
function skill1:start_animation
scoreboard players set ToDH.Index ToDH.Boss2.Skill.Duration 6
schedule function todh_b2:skill/skill1/damage/detect 25t
schedule function todh_b2:skill/skill1/clear 2.8s
execute as @e[tag=ToDH.enemy.Boss2,tag=Display] run data modify entity @s Glowing set value 1b

tag @s add Animation.isSkill1