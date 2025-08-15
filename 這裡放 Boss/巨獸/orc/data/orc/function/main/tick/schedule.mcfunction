





execute as @e[tag=ToDH.Boss.1_Orc,tag=boss,tag=!ToDH.Boss.Action.InAction] as @s at @s run function orc:main/manager/aj/tick




execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] if score @s ToDH.Boss.1_Orc.Spawn.subordinate.CD matches 0.. run scoreboard players remove @s ToDH.Boss.1_Orc.Spawn.subordinate.CD 1
execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] if score @s ToDH.Boss.1_Orc.Skill.CD matches 0.. run scoreboard players remove @s ToDH.Boss.1_Orc.Skill.CD 1
execute if entity @e[tag=ToDH.Boss.1_Orc,tag=boss] run schedule function orc:main/tick/schedule 1t