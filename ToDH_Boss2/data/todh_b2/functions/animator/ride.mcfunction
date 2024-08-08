

execute at @s as @e[type=block_display,distance=..5] at @s rotated as @e[type=iron_golem,tag=ToDH.enemy.Boss2,tag=boss,limit=1] rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute at @s as @e[type=item_display,distance=..5] at @s rotated as @e[type=iron_golem,tag=ToDH.enemy.Boss2,tag=boss,limit=1] rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute at @s as @e[type=block_display,distance=..5] as @s run ride @s mount @e[type=iron_golem,limit=1]
execute at @s as @e[type=item_display,distance=..5] as @s run ride @s mount @e[type=iron_golem,limit=1]