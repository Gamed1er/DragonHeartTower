execute as @s run function mob:plot_system/characters/tool/rotation
execute as @s unless score @s ID_system matches 0.. store result score @s ID_system run scoreboard players add world_ID ID_system 1
execute as @s[gamemode=adventure] run function mob:floor_controller/main
execute as @s[gamemode=creative] run function mob:floor_controller/main
execute as @s if score @s reborn_cd matches 1.. run scoreboard players remove @s reborn_cd 1
execute as @s[tag=dead,tag=!in_dragon_pavilion] if score @s reborn_cd matches 1 at @e[tag=spawn_point] run tp @s ~ ~ ~
execute as @s[tag=dead] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water run tp @s @a[tag=!dead,limit=1]
execute unless entity @a[tag=!dead] unless score remain_mob_amount floor_controller matches 1.. run scoreboard players set now_wave enemy_wave_control 0
execute unless entity @a[tag=!dead] run kill @e[tag=enemy]
execute unless entity @a[tag=!dead] run scoreboard players set @a[scores={reborn_cd=11..},tag=!in_dragon_pavilion] reborn_cd 10
execute if score @s[tag=!in_dragon_pavilion] reborn_cd matches ..1 run gamemode adventure @s[gamemode=spectator,tag=dead]
execute if score @s[tag=!in_dragon_pavilion] reborn_cd matches 0 run tag @s remove dead