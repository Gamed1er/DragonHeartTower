
execute as @s at @s positioned ^ ^1 ^1 run tp @a[tag=boss.Skill.detect] ~ ~ ~

execute as @s at @s unless entity @a[tag=boss.Skill.detect,distance=..7.5] run return fail
execute as @s if predicate todh_b2:percent/50 run return fail

data modify entity @s NoAI set value 1b
scoreboard players set @s ToDH.Boss2.Skill.Timing 0
schedule clear todh_b2:animator/tick
function todh_b2:animator/clear_all

execute as @s run function todh_b2:skill/skill1/start