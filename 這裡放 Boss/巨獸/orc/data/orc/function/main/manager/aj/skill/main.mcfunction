execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] store result score @s ToDH.Boss.1_Orc.Attack.chance run random value 0..1000

execute as @s at @s unless entity @a[distance=..8] if score @s ToDH.Boss.1_Orc.Attack.chance matches 0..499 run return run function orc:main/manager/aj/skill/skill1/main

execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] store result score @s ToDH.Boss.1_Orc.Attack.chance run random value 0..1000

execute as @s if score @s ToDH.Boss.1_Orc.Attack.chance matches 0..299 run return run function orc:main/manager/aj/skill/skill1/main

execute as @s if score @s ToDH.Boss.1_Orc.Attack.chance matches 300..1000 run return run function orc:main/manager/aj/skill/skill2/main



# execute as @s run tag @s add ToDH.Boss.Action.InAction
# # schedule function orc:main/manager/aj/attack3/schedule 70t
# execute as @s run scoreboard players reset @s ToDH.Boss.1_Orc.Action.Tick
# # function orc:main/manager/aj/attack3/tick