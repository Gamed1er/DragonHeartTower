

execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] at @s rotated as @s rotated ~ 0 as @n[tag=aj.orc.root] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] at @s run ride @n[tag=aj.orc.root] mount @s
execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] run data modify entity @s NoAI set value 1b

execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] as @s run scoreboard players add @s ToDH.Boss.1_Orc.Action.Tick 1
execute if entity @e[tag=ToDH.Boss.1_Orc,tag=boss,tag=ToDH.Boss.Action.InAction] run schedule function orc:main/manager/aj/attack2/tick 1t