

execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] run tag @s remove ToDH.Boss.Action.InAction

execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] store result score @s ToDH.Boss.1_Orc.Skill.CD run random value 200..320