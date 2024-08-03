
#execute if score tower control_panel matches 1 run say 1
#execute if score tower control_panel matches 1 if score now_floor floor_controller matches 10 run say 2
#execute if score tower control_panel matches 1 if score now_floor floor_controller matches 10 if score floor_1_lock floor_lock matches 0 run say 3
#execute if score tower control_panel matches 1 if score now_floor floor_controller matches 10 if score floor_1_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 run say 4
#execute if score tower control_panel matches 1 if score now_floor floor_controller matches 10 if score floor_1_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_1_waves enemy_wave_control run say 5
#==========
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 10 if score floor_1_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_1_waves enemy_wave_control run function mob:floor_controller/fighting_lock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 10 if score floor_1_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_1_waves enemy_wave_control run function mob:floor_enemey_summoner/resentment/floor_1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 10 if score floor_1_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_1_waves enemy_wave_control run function mob:floor_controller/unlock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 10 if score floor_1_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_1_waves enemy_wave_control run scoreboard players set floor_1_lock floor_lock 1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 10 if score floor_1_lock floor_lock matches 1 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_1_waves enemy_wave_control run scoreboard players set now_wave enemy_wave_control 0

execute if score tower control_panel matches 1 if score now_floor floor_controller matches 20 if score floor_2_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_2_waves enemy_wave_control run function mob:floor_controller/fighting_lock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 20 if score floor_2_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_2_waves enemy_wave_control run function mob:floor_enemey_summoner/resentment/floor_2
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 20 if score floor_2_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_2_waves enemy_wave_control run function mob:floor_controller/unlock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 20 if score floor_2_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_2_waves enemy_wave_control run scoreboard players set floor_2_lock floor_lock 1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 20 if score floor_2_lock floor_lock matches 1 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_2_waves enemy_wave_control run scoreboard players set now_wave enemy_wave_control 0

execute if score tower control_panel matches 1 if score now_floor floor_controller matches 30 if score floor_3_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control < floor_3_waves enemy_wave_control run function mob:floor_controller/fighting_lock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 30 if score floor_3_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control < floor_3_waves enemy_wave_control run function mob:floor_enemey_summoner/resentment/floor_3
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 30 if score floor_3_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_3_waves enemy_wave_control run function mob:floor_controller/unlock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 30 if score floor_3_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_3_waves enemy_wave_control run scoreboard players set floor_3_lock floor_lock 1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 30 if score floor_3_lock floor_lock matches 1 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_3_waves enemy_wave_control run kill @e[tag=enemy]
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 30 if score floor_3_lock floor_lock matches 1 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_3_waves enemy_wave_control run scoreboard players set now_wave enemy_wave_control 0

execute if score tower control_panel matches 1 if score now_floor floor_controller matches 40 if score floor_4_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_4_waves enemy_wave_control run function mob:floor_controller/fighting_lock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 40 if score floor_4_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_4_waves enemy_wave_control run function mob:floor_enemey_summoner/resentment/floor_4
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 40 if score floor_4_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_4_waves enemy_wave_control run function mob:floor_controller/unlock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 40 if score floor_4_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_4_waves enemy_wave_control run scoreboard players set floor_4_lock floor_lock 1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 40 if score floor_4_lock floor_lock matches 1 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_4_waves enemy_wave_control run scoreboard players set now_wave enemy_wave_control 0

execute if score tower control_panel matches 1 if score now_floor floor_controller matches 50 if score floor_5_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_5_waves enemy_wave_control run function mob:floor_controller/fighting_lock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 50 if score floor_5_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_5_waves enemy_wave_control run function mob:floor_enemey_summoner/resentment/floor_5
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 50 if score floor_5_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_5_waves enemy_wave_control run function mob:floor_controller/unlock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 50 if score floor_5_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_5_waves enemy_wave_control run scoreboard players set floor_5_lock floor_lock 1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 50 if score floor_5_lock floor_lock matches 1 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_5_waves enemy_wave_control run scoreboard players set now_wave enemy_wave_control 0

execute if score tower control_panel matches 1 if score now_floor floor_controller matches 60 if score floor_6_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control < floor_6_waves enemy_wave_control run function mob:floor_controller/fighting_lock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 60 if score floor_6_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control < floor_6_waves enemy_wave_control run function mob:floor_enemey_summoner/resentment/floor_6
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 60 if score floor_6_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_6_waves enemy_wave_control run function mob:floor_controller/unlock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 60 if score floor_6_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_6_waves enemy_wave_control run scoreboard players set floor_6_lock floor_lock 1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 60 if score floor_6_lock floor_lock matches 1 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_6_waves enemy_wave_control run kill @e[tag=enemy]
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 60 if score floor_6_lock floor_lock matches 1 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_6_waves enemy_wave_control run scoreboard players set now_wave enemy_wave_control 0

execute if score tower control_panel matches 1 if score now_floor floor_controller matches 70 if score floor_7_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_7_waves enemy_wave_control run function mob:floor_controller/fighting_lock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 70 if score floor_7_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_7_waves enemy_wave_control run function mob:floor_enemey_summoner/resentment/floor_7
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 70 if score floor_7_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_7_waves enemy_wave_control run function mob:floor_controller/unlock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 70 if score floor_7_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_7_waves enemy_wave_control run scoreboard players set floor_7_lock floor_lock 1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 70 if score floor_7_lock floor_lock matches 1 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_7_waves enemy_wave_control run scoreboard players set now_wave enemy_wave_control 0

execute if score tower control_panel matches 1 if score now_floor floor_controller matches 80 if score floor_8_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_8_waves enemy_wave_control run function mob:floor_controller/fighting_lock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 80 if score floor_8_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control < floor_8_waves enemy_wave_control run function mob:floor_enemey_summoner/resentment/floor_8
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 80 if score floor_8_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_8_waves enemy_wave_control run function mob:floor_controller/unlock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 80 if score floor_8_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_8_waves enemy_wave_control run scoreboard players set floor_8_lock floor_lock 1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 80 if score floor_8_lock floor_lock matches 1 if score remain_mob_amount floor_controller matches 0 if score now_wave enemy_wave_control >= floor_8_waves enemy_wave_control run scoreboard players set now_wave enemy_wave_control 0

execute if score tower control_panel matches 1 if score now_floor floor_controller matches 90 if score floor_9_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control < floor_9_waves enemy_wave_control run function mob:floor_controller/fighting_lock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 90 if score floor_9_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control < floor_9_waves enemy_wave_control run function mob:floor_enemey_summoner/resentment/floor_9
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 90 if score floor_9_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_9_waves enemy_wave_control run function mob:floor_controller/unlock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 90 if score floor_9_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_9_waves enemy_wave_control run scoreboard players set floor_9_lock floor_lock 1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 90 if score floor_9_lock floor_lock matches 1 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_9_waves enemy_wave_control run kill @e[tag=enemy]
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 90 if score floor_9_lock floor_lock matches 1 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_9_waves enemy_wave_control run scoreboard players set now_wave enemy_wave_control 0

execute if score tower control_panel matches 1 if score now_floor floor_controller matches 100 if score floor_10_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control < floor_10_waves enemy_wave_control run function mob:floor_controller/fighting_lock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 100 if score floor_10_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control < floor_10_waves enemy_wave_control run function mob:floor_enemey_summoner/resentment/floor_10
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 100 if score floor_10_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_10_waves enemy_wave_control run function mob:floor_controller/unlock_floor
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 100 if score floor_10_lock floor_lock matches 0 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_10_waves enemy_wave_control run scoreboard players set floor_10_lock floor_lock 1
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 100 if score floor_10_lock floor_lock matches 1 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_10_waves enemy_wave_control run kill @e[tag=enemy]
execute if score tower control_panel matches 1 if score now_floor floor_controller matches 100 if score floor_10_lock floor_lock matches 1 if score remain_mob_amount floor_controller matches 0 unless entity @e[tag=boss] if score now_wave enemy_wave_control >= floor_10_waves enemy_wave_control run scoreboard players set now_wave enemy_wave_control 0
