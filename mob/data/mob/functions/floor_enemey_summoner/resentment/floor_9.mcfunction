scoreboard players add now_wave enemy_wave_control 1

title @a times 1s 2s 1s
title @a title [{"color": "white","text": "["},{"italic": false,"bold": false,"color": "green","translate":"ToDH.title.boss"},{"color": "white","text": "]"}]

execute if score now_wave enemy_wave_control matches 1 as @e[tag=mob_summon_point,tag=floor_9,tag=tower_1,sort=random,limit=1] at @s run function boss:soul_locker/spawn
execute if score now_wave enemy_wave_control matches 1 as @e[tag=mob_summon_point,tag=floor_9,tag=tower_1,sort=random,limit=1] at @s run function boss:flogger/spawn