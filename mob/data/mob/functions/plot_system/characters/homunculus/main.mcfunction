
execute if score @s plot_progress matches 0 run scoreboard players set @s character 0
execute if score @s plot_progress matches 0 run scoreboard players set @s plot_type 10
execute if score @s plot_type matches 10 run return fail
execute if score @s plot_type matches 9 run return fail

data merge storage todh:plot {character:"homunculus",plot_progress:0, plot_delay:0, questions:0}
execute unless score @s plot_progress matches 0..9999 run scoreboard players set @s plot_progress 0
execute store result storage todh:plot plot_progress int 1 run scoreboard players get @s plot_progress


execute if score @s plot_progress matches 1 run data modify entity @s CustomName set value '{"italic": false,"bold": false,"color": "green","translate":"ToDH.plot.name.unknown"}'
execute if score @s plot_progress matches 1 run scoreboard players set @s character 1
execute if score @s plot_progress matches 1 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 2 run scoreboard players set @s character 1
execute if score @s plot_progress matches 2 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 3 run scoreboard players set @s character 1
execute if score @s plot_progress matches 3 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 4 run scoreboard players set @s character 1
execute if score @s plot_progress matches 4 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 5 run scoreboard players set @s character 1
execute if score @s plot_progress matches 5 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 6 run scoreboard players set @s character 1
execute if score @s plot_progress matches 6 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 7 run scoreboard players set @s character 1
execute if score @s plot_progress matches 7 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 8 run scoreboard players set @s character 1
execute if score @s plot_progress matches 8 run scoreboard players set @s plot_type 2

execute if score @s plot_progress matches 9 run scoreboard players set @s character 1
execute if score @s plot_progress matches 9 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 10 run scoreboard players set @s character 1
execute if score @s plot_progress matches 10 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 11 run scoreboard players set @s character 1
execute if score @s plot_progress matches 11 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 12 run scoreboard players set @s character 1
execute if score @s plot_progress matches 12 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 13 run scoreboard players set @s character 1
execute if score @s plot_progress matches 13 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 14 run scoreboard players set @s character 1
execute if score @s plot_progress matches 14 run scoreboard players set @s plot_type 2

execute if score @s plot_progress matches 15 run scoreboard players set @s character 1
execute if score @s plot_progress matches 15 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 16 run scoreboard players set @s character 1
execute if score @s plot_progress matches 16 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 17 run scoreboard players set @s character 1
execute if score @s plot_progress matches 17 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 18 run scoreboard players set @s character 1
execute if score @s plot_progress matches 18 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 19 run scoreboard players set @s character 1
execute if score @s plot_progress matches 19 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 19 run effect give @a nausea infinite 20
execute if score @s plot_progress matches 19 run effect give @a darkness infinite 20
execute if score @s plot_progress matches 19 run effect give @a blindness infinite 20
execute if score @s plot_progress matches 19 run effect give @a night_vision infinite 20

execute if score @s plot_progress matches 20 run scoreboard players set @s character 1
execute if score @s plot_progress matches 20 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 21 run scoreboard players set @s character 1
execute if score @s plot_progress matches 21 run scoreboard players set @s plot_type 10
execute if score @s plot_progress matches 21 run schedule function mob:mission_system/missions/trigger_dragon_pavilion 2s

execute if score @s plot_progress matches 22 run scoreboard players set @s character 1
execute if score @s plot_progress matches 22 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 23 run scoreboard players set @s character 0
execute if score @s plot_progress matches 23 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 24 run scoreboard players set @s character 1
execute if score @s plot_progress matches 24 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 25 run scoreboard players set @s character 1
execute if score @s plot_progress matches 25 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 26 run scoreboard players set @s character 0
execute if score @s plot_progress matches 26 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 27 run scoreboard players set @s character 1
execute if score @s plot_progress matches 27 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 28 run scoreboard players set @s character 0
execute if score @s plot_progress matches 28 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 29 run scoreboard players set @s character 1
execute if score @s plot_progress matches 29 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 30 run scoreboard players set @s character 0
execute if score @s plot_progress matches 30 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 31 run scoreboard players set @s character 1
execute if score @s plot_progress matches 31 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 32 run scoreboard players set @s character 0
execute if score @s plot_progress matches 32 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 33 run scoreboard players set @s character 0
execute if score @s plot_progress matches 33 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 34 run scoreboard players set @s character 1
execute if score @s plot_progress matches 34 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 35 run scoreboard players set @s character 0
execute if score @s plot_progress matches 35 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 36 run scoreboard players set @s character 1
execute if score @s plot_progress matches 36 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 37 run scoreboard players set @s character 0
execute if score @s plot_progress matches 37 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 37 run data modify entity @s CustomName set value '{"italic": false,"bold": false,"color": "green","translate":"ToDH.plot.homunculus.name"}'

execute if score @s plot_progress matches 38 run scoreboard players set @s character 1
execute if score @s plot_progress matches 38 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 39 run scoreboard players set @s character 1
execute if score @s plot_progress matches 39 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 40 run scoreboard players set @s character 0
execute if score @s plot_progress matches 40 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 41 run scoreboard players set @s character 0
execute if score @s plot_progress matches 41 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 42 run scoreboard players set @s character 1
execute if score @s plot_progress matches 42 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 43 run scoreboard players set @s character 0
execute if score @s plot_progress matches 43 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 44 run scoreboard players set @s character 1
execute if score @s plot_progress matches 44 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 45 run scoreboard players set @s character 1
execute if score @s plot_progress matches 45 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 46 run scoreboard players set @s character 0
execute if score @s plot_progress matches 46 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 47 run scoreboard players set @s character 0
execute if score @s plot_progress matches 47 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 48 run scoreboard players set @s character 1
execute if score @s plot_progress matches 48 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 49 run scoreboard players set @s character 0
execute if score @s plot_progress matches 49 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 50 run scoreboard players set @s character 1
execute if score @s plot_progress matches 50 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 51 run scoreboard players set @s character 0
execute if score @s plot_progress matches 51 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 52 run scoreboard players set @s character 0
execute if score @s plot_progress matches 52 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 53 run scoreboard players set @s character 0
execute if score @s plot_progress matches 53 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 54 run scoreboard players set @s character 0
execute if score @s plot_progress matches 54 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 55 run scoreboard players set @s character 1
execute if score @s plot_progress matches 55 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 56 run scoreboard players set @s character 0
execute if score @s plot_progress matches 56 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 57 run scoreboard players set @s character 0
execute if score @s plot_progress matches 57 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 58 run scoreboard players set @s character 0
execute if score @s plot_progress matches 58 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 59 run scoreboard players set @s character 0
execute if score @s plot_progress matches 59 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 60 run scoreboard players set @s character 1
execute if score @s plot_progress matches 60 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 61 run scoreboard players set @s character 1
execute if score @s plot_progress matches 61 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 62 run scoreboard players set @s character 1
execute if score @s plot_progress matches 62 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 63 run scoreboard players set @s character 0
execute if score @s plot_progress matches 63 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 64 run scoreboard players set @s character 0
execute if score @s plot_progress matches 64 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 65 run scoreboard players set @s character 0
execute if score @s plot_progress matches 65 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 66 run scoreboard players set @s character 0
execute if score @s plot_progress matches 66 run scoreboard players set @s plot_type 2
execute if score @s plot_progress matches 66 run tag @a add do_not_wipe
execute if score @s plot_progress matches 66 run tag @a add view_dragon_pavilion
execute if score @s plot_progress matches 66 run schedule function mob:plot_system/characters/homunculus/plot_late 2t

execute if score @s plot_progress matches 67 run scoreboard players set @s character 1
execute if score @s plot_progress matches 67 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 68 run scoreboard players set @s character 0
execute if score @s plot_progress matches 68 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 69 run scoreboard players set @s character 0
execute if score @s plot_progress matches 69 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 70 run scoreboard players set @s character 0
execute if score @s plot_progress matches 70 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 71 run scoreboard players set @s character 0
execute if score @s plot_progress matches 71 run scoreboard players set @s plot_type 2
execute if score @s plot_progress matches 71 run tag @a add do_not_wipe
execute if score @s plot_progress matches 71 run tag @a add test_dragon_pavilion
execute if score @s plot_progress matches 71 run tag @a add in_dragon_pavilion
execute if score @s plot_progress matches 71 run schedule function mob:plot_system/characters/homunculus/plot_late 2t

execute if score @s plot_progress matches 72 run scoreboard players set @s character 1
execute if score @s plot_progress matches 72 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 73 run scoreboard players set @s character 0
execute if score @s plot_progress matches 73 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 74 run scoreboard players set @s character 0
execute if score @s plot_progress matches 74 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 75 run scoreboard players set @s character 0
execute if score @s plot_progress matches 75 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 75 run effect give @a blindness 5 5
execute if score @s plot_progress matches 75 run function mob:floor_controller/fighting_lock_floor
execute if score @s plot_progress matches 75 at @e[type=marker,tag=spawn_point,tag=tower_1] run tp @a ~ ~ ~

execute if score @s plot_progress matches 76 run scoreboard players set @s character 1
execute if score @s plot_progress matches 76 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 77 run scoreboard players set @s character 1
execute if score @s plot_progress matches 77 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 78 run scoreboard players set @s character 0
execute if score @s plot_progress matches 78 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 79 run scoreboard players set @s character 0
execute if score @s plot_progress matches 79 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 80 run scoreboard players set @s character 0
execute if score @s plot_progress matches 80 run scoreboard players set @s plot_type 1
execute if score @s plot_progress matches 80 run data modify storage todh:plot questions set value 4

execute if score @s plot_progress matches 81 run scoreboard players set @s character 1
execute if score @s plot_progress matches 81 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 82 run scoreboard players set @s character 1
execute if score @s plot_progress matches 82 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 83 run scoreboard players set @s character 1
execute if score @s plot_progress matches 83 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 84 run scoreboard players set @s character 1
execute if score @s plot_progress matches 84 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 85 run scoreboard players set @s character 0
execute if score @s plot_progress matches 85 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 86 run scoreboard players set @s character 0
execute if score @s plot_progress matches 86 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 87 run scoreboard players set @s character 0
execute if score @s plot_progress matches 87 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 88 run scoreboard players set @s character 1
execute if score @s plot_progress matches 88 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 89 run scoreboard players set @s character 0
execute if score @s plot_progress matches 89 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 90 run scoreboard players set @s character 0
execute if score @s plot_progress matches 90 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 91 run scoreboard players set @s character 0
execute if score @s plot_progress matches 91 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 92 run scoreboard players set @s character 0
execute if score @s plot_progress matches 92 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 93 run scoreboard players set @s character 0
execute if score @s plot_progress matches 93 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 94 run scoreboard players set @s character 0
execute if score @s plot_progress matches 94 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 95 run scoreboard players set @s character 0
execute if score @s plot_progress matches 95 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 96 run scoreboard players set @s character 0
execute if score @s plot_progress matches 96 run scoreboard players set @s plot_type 10
execute if score @s plot_progress matches 96 run scoreboard players set @s plot_type 10
execute if score @s plot_progress matches 96 run function mob:floor_controller/unlock_floor_0

execute if score @s plot_type matches 0 run data modify storage todh:plot plot_delay set value 40

execute if score @s plot_type matches 1 run data modify storage todh:plot plot_delay set value 40

execute if score @s plot_type matches 2 run data modify storage todh:plot plot_delay set value 0
execute if score @s plot_type matches 2 run scoreboard players add @s plot_progress 1
execute if score @s plot_type matches 2 run data remove entity @s interaction
execute if score @s plot_type matches 2 run data modify storage todh:plot plot_delay set value 40

execute if score @s plot_type matches 4 run data modify storage todh:plot plot_delay set value 0
execute if score @s plot_type matches 4 run data remove entity @s interaction
execute if score @s plot_type matches 4 run scoreboard players set @s plot_progress 1
execute as @s run function mob:plot_system/plot_reader with storage todh:plot
#tellraw @p "1"