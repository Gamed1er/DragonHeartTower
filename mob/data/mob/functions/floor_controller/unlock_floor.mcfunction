execute if score tower control_panel matches 1 if score now_floor floor_controller matches 10 as @e[tag=stairs,tag=tower_1,tag=floor_1] at @s run clone 58 -61 45 56 -51 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 20 as @e[tag=stairs,tag=tower_1,tag=floor_2] at @s run clone 58 -61 45 56 -51 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 30 as @e[tag=stairs,tag=tower_1,tag=floor_3] at @s run clone 58 -61 45 56 -41 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 30 as @e[tag=stairs,tag=tower_1,tag=floor_3_5] at @s run clone 58 -61 45 56 -51 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 40 as @e[tag=stairs,tag=tower_1,tag=floor_4] at @s run clone 58 -61 45 56 -51 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 50 as @e[tag=stairs,tag=tower_1,tag=floor_5] at @s run clone 58 -61 45 56 -51 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 60 as @e[tag=stairs,tag=tower_1,tag=floor_6] at @s run clone 58 -61 45 56 -41 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 60 as @e[tag=stairs,tag=tower_1,tag=floor_6_5] at @s run clone 58 -61 45 56 -51 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 70 as @e[tag=stairs,tag=tower_1,tag=floor_7] at @s run clone 58 -61 45 56 -51 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 80 as @e[tag=stairs,tag=tower_1,tag=floor_8] at @s run clone 58 -61 45 56 -51 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 90 as @e[tag=stairs,tag=tower_1,tag=floor_9] at @s run clone 58 -61 45 56 -41 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 90 as @e[tag=stairs,tag=tower_1,tag=floor_9_5] at @s run clone 58 -61 45 56 -51 47 ~-1 ~-1 ~-1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 100 as @e[tag=stairs,tag=tower_1,tag=floor_10] at @s run clone 58 -61 45 56 -41 47 ~-1 ~-1 ~-1
execute as @e[tag=stairs] at @s run particle explosion ~ ~ ~ 1 5 1 1 20 force @a
execute as @e[tag=stairs,tag=floor_3] at @s run particle explosion ~ ~10 ~ 1 5 1 1 20 force @a
execute as @e[tag=stairs,tag=floor_6] at @s run particle explosion ~ ~10 ~ 1 5 1 1 20 force @a
execute as @e[tag=stairs,tag=floor_9] at @s run particle explosion ~ ~10 ~ 1 5 1 1 20 force @a
execute as @e[tag=stairs,tag=floor_10] at @s run particle explosion ~ ~10 ~ 1 5 1 1 20 force @a
title @a times 1s 2s 1s
title @a[tag=!dead] title [{"color": "white","text": "["},{"color": "green","bold": false,"italic": false,"translate":"ToDH.title.floor_complete"},{"color": "white","text": "]"}]
playsound ui.toast.challenge_complete voice @a[tag=!dead] ~ ~ ~ 1 1 1
