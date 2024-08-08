data modify entity @s NoAI set value 1b
scoreboard players set @s ToDH.Boss2.Skill.Timing 0
schedule clear todh_b2:animator/tick
function todh_b2:animator/clear_all


execute store result score ToDH.enemy.Count ToDH.Boss2.Skill.Duration if entity @e[tag=ToDH.enemy.Boss2,tag=partner]

execute as @s unless score ToDH.enemy.Count ToDH.Boss2.Skill.Duration matches 4.. if predicate todh_b2:percent/50 run return run function todh_b2:skill/skill4/start
execute as @s run return run function todh_b2:skill/skill4/start

execute as @s at @s as @a[gamemode=!spectator] as @e[tag=ToDH.enemy.Boss2,tag=boss] if predicate todh_b2:percent/30 run return run function todh_b2:skill/skill2/start

execute as @s at @s as @a if entity @s[distance=..8.5,gamemode=!spectator] as @e[tag=ToDH.enemy.Boss2,tag=boss] run return run function todh_b2:skill/skill1/start


execute as @s at @s as @a[gamemode=!spectator] unless entity @s[distance=..8.5] as @e[tag=ToDH.enemy.Boss2,tag=boss] run return run function todh_b2:skill/skill2/start

execute as @s run function todh_b2:skill/clear