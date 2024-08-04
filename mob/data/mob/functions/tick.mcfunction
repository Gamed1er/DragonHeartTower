execute as @e run function mob:stream
function mob:floor_controller/mob_count_tick
function mob:floor_enemey_summoner/main
scoreboard players add tick time 1
execute if score tick time matches 20 run scoreboard players set tick time 0
scoreboard players add 2tick time 1
execute if score 2tick time matches 40 run scoreboard players set 2tick time 0
scoreboard players set alive_player control_panel 0
execute if entity @a[tag=dead] run scoreboard players add alive_player control_panel 1