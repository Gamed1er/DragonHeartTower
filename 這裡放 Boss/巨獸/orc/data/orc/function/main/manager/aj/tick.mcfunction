execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] store result score @s ToDH.Boss.1_Orc.Attack.chance run random value 0..1000

# execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] at @s if score @s ToDH.Boss.1_Orc.Spawn.subordinate.CD matches ..0 run function orc:main/manager/aj/lolo/main
execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] at @s if score @s ToDH.Boss.1_Orc.Skill.CD matches ..0 run return run function orc:main/manager/aj/skill/main

execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] at @s if entity @a[distance=..5,gamemode=!spectator] if score @s ToDH.Boss.1_Orc.Attack.chance matches 0..499 run return run function orc:main/manager/aj/attack2/main

execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] at @s if entity @a[distance=..5,gamemode=!spectator] if score @s ToDH.Boss.1_Orc.Attack.chance matches 499..850 run return run function orc:main/manager/aj/attack1/main

execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] at @s if entity @a[distance=..5,gamemode=!spectator] if score @s ToDH.Boss.1_Orc.Attack.chance matches 851..1000 run return run function orc:main/manager/aj/attack3/main



execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] if predicate orc:check_spring run function orc:main/manager/aj/spring/main

execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] if predicate orc:check_move unless predicate orc:check_spring run function orc:main/manager/aj/walk/main

execute as @n[tag=ToDH.Boss.1_Orc,tag=boss] unless predicate orc:check_move run function orc:main/manager/aj/idol/main