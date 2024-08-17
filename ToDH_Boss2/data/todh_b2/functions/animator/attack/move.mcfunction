scoreboard players remove @s ToDH.Boss2.Skill.Timing 80

execute as @s at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @s run schedule function todh_b2:animator/attack/damage/check 17t
data modify entity @s NoAI set value 1b
function todh_b2:animator/clear_all
execute at @s positioned ~ ~3 ~ run function attack:summon
execute at @s run function todh_b2:animator/ride
function attack:start_animation
tag @s add Animation.isAttack
schedule clear todh_b2:animator/tick

schedule function todh_b2:animator/attack/clear 42t