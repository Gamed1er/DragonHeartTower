

execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] as @s if score @s ToDH.Boss.1_Orc.Action.Tick matches ..30 at @s anchored eyes facing entity @p eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] as @s if score @s ToDH.Boss.1_Orc.Action.Tick matches 30.. at @s anchored eyes facing entity @p eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^80 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~


execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] at @s rotated as @s rotated ~ 0 as @n[tag=aj.orc.root] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] at @s run ride @n[tag=aj.orc.root] mount @s
execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] run data modify entity @s NoAI set value 1b

execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] as @s run scoreboard players add @s ToDH.Boss.1_Orc.Action.Tick 1
execute if entity @e[tag=ToDH.Boss.1_Orc,tag=boss,tag=ToDH.Boss.Action.InAction] run schedule function orc:main/manager/aj/skill/skill2/tick 1t



execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] as @s if score @s ToDH.Boss.1_Orc.Action.Tick matches 30 as @n[tag=aj.orc.root] run function animated_java:orc/animations/animation.model.skill2_start/play
execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] as @s if score @s ToDH.Boss.1_Orc.Action.Tick matches 43 as @n[tag=aj.orc.root] run function animated_java:orc/animations/animation.model.skill2_run/play

execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] as @s at @s if score @s ToDH.Boss.1_Orc.Action.Tick matches 30.. run function orc:main/manager/aj/skill/skill2/step/main




# execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] as @s if score @s ToDH.Boss.1_Orc.Action.Tick matches 33 at @s rotated as @s rotated ~ 0 positioned ^ ^-1 ^2 run function orc:main/manager/aj/skill/skill1/dig
# execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] as @s if score @s ToDH.Boss.1_Orc.Action.Tick matches 34 run function orc:main/manager/aj/skill/skill1/target


