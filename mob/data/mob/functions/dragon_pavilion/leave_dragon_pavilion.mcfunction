tellraw @s [{"translate": "ToDH.message,next_page"}]
execute if score tower control_panel matches 1 run tp @s @e[limit=1,tag=tower_1,tag=spawn_point]
execute if score tower control_panel matches 2 run tp @s @e[limit=1,tag=tower_2,tag=spawn_point]
execute if score tower control_panel matches 3 run tp @s @e[limit=1,tag=tower_3,tag=spawn_point]
tag @s remove in_dragon_pavilion
gamemode spectator @s