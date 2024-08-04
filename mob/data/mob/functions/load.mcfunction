scoreboard objectives add mob_varient dummy
scoreboard players set anger_dark_skeleton mob_varient 1
scoreboard players set anger_eerie_skeleton mob_varient 2
scoreboard players set grudgeful_evil_skeleton mob_varient 3
scoreboard players set skull_thrower mob_varient 4
scoreboard objectives add control_panel dummy
scoreboard players add tower control_panel 0
scoreboard players add alive_player control_panel 0
scoreboard objectives add keep_inventory_hotbar dummy
scoreboard objectives add keep_inventory_cost dummy
scoreboard players set hotbar_1 keep_inventory_cost 600
scoreboard players set hotbar_2 keep_inventory_cost 150
scoreboard players set hotbar_3 keep_inventory_cost 200
scoreboard players set hotbar_4 keep_inventory_cost 250
scoreboard players set hotbar_5 keep_inventory_cost 300
scoreboard players set hotbar_6 keep_inventory_cost 350
scoreboard players set hotbar_7 keep_inventory_cost 400
scoreboard players set hotbar_8 keep_inventory_cost 450
scoreboard players set hotbar_9 keep_inventory_cost 500
scoreboard players set head keep_inventory_cost 300
scoreboard players set chest keep_inventory_cost 300
scoreboard players set legs keep_inventory_cost 300
scoreboard players set feet keep_inventory_cost 300
scoreboard players set talisman keep_inventory_cost 900
scoreboard objectives add keep_inventory_talisman dummy
scoreboard objectives add keep_inventory_armor_head dummy
scoreboard objectives add keep_inventory_armor_chest dummy
scoreboard objectives add keep_inventory_armor_legs dummy
scoreboard objectives add keep_inventory_armor_feet dummy

scoreboard objectives add soul_upgrade_cost dummy
scoreboard players set max_health soul_upgrade_cost 150
scoreboard players set attack_damage soul_upgrade_cost 150
scoreboard players set mana_max soul_upgrade_cost 150
scoreboard players set spell_cost soul_upgrade_cost 150
scoreboard players set mana_strength soul_upgrade_cost 150
scoreboard players set mana_regen soul_upgrade_cost 150
scoreboard players set stiff_bodylimit soul_upgrade_cost 150
scoreboard players set stiff_apply soul_upgrade_cost 150
scoreboard players set stiff_resilience soul_upgrade_cost 150

scoreboard objectives add max_health dummy
scoreboard objectives add attack_damage dummy
scoreboard objectives add mana_max dummy
scoreboard objectives add spell_cost dummy
scoreboard objectives add mana_strength dummy
scoreboard objectives add mana_regen dummy
scoreboard objectives add stiff_bodylimit dummy
scoreboard objectives add stiff_apply dummy
scoreboard objectives add stiff_resilience dummy

scoreboard objectives add math dummy
scoreboard players set 50 math 50
scoreboard players set 95 math 95
scoreboard players set 100 math 100
scoreboard players set 105 math 105
scoreboard players set 110 math 110


scoreboard objectives add dragon_soul dummy
scoreboard objectives add dragon_soul_temp dummy

scoreboard objectives add plot_type dummy
scoreboard objectives add plot_progress dummy
scoreboard objectives add character dummy
scoreboard objectives add plot_timer dummy
scoreboard objectives add question dummy

scoreboard objectives add rotation dummy

scoreboard objectives add floor_controller dummy
scoreboard players set now_floor floor_controller 1
scoreboard players add mob_amount floor_controller 0
scoreboard players add remain_mob_amount floor_controller 0

scoreboard objectives add pos_Y dummy
scoreboard objectives add floor_height dummy
scoreboard players set floor_0_height floor_height -60
scoreboard players set floor_1_height floor_height -50
scoreboard players set floor_2_height floor_height -40
scoreboard players set floor_3_height floor_height -30
scoreboard players set floor_3_5_height floor_height -10
scoreboard players set floor_4_height floor_height 0
scoreboard players set floor_5_height floor_height 10
scoreboard players set floor_6_height floor_height 20
scoreboard players set floor_6_5_height floor_height 40
scoreboard players set floor_7_height floor_height 50
scoreboard players set floor_8_height floor_height 60
scoreboard players set floor_9_height floor_height 70
scoreboard players set floor_9_5_height floor_height 90
scoreboard players set floor_10_height floor_height 100

scoreboard objectives add floor_lock dummy
scoreboard players add floor_0_lock floor_lock 0
scoreboard players add floor_1_lock floor_lock 0
scoreboard players add floor_2_lock floor_lock 0
scoreboard players add floor_3_lock floor_lock 0
scoreboard players add floor_3_5_lock floor_lock 0
scoreboard players add floor_4_lock floor_lock 0
scoreboard players add floor_5_lock floor_lock 0
scoreboard players add floor_6_lock floor_lock 0
scoreboard players add floor_6_5_lock floor_lock 0
scoreboard players add floor_7_lock floor_lock 0
scoreboard players add floor_8_lock floor_lock 0
scoreboard players add floor_9_lock floor_lock 0
scoreboard players add floor_9_5_lock floor_lock 0
scoreboard players add floor_10_lock floor_lock 0

scoreboard objectives add enemy_wave_control dummy
scoreboard players set floor_1_waves enemy_wave_control 4
scoreboard players set floor_2_waves enemy_wave_control 2
scoreboard players set floor_3_waves enemy_wave_control 1
scoreboard players set floor_4_waves enemy_wave_control 4
scoreboard players set floor_5_waves enemy_wave_control 2
scoreboard players set floor_6_waves enemy_wave_control 1
scoreboard players set floor_7_waves enemy_wave_control 4
scoreboard players set floor_8_waves enemy_wave_control 2
scoreboard players set floor_9_waves enemy_wave_control 1
scoreboard players set floor_10_waves enemy_wave_control 1
scoreboard players set now_wave enemy_wave_control 0
scoreboard players set wave_cd_set enemy_wave_control 300
scoreboard players set wave_cd enemy_wave_control 0

scoreboard objectives add ID_system dummy
scoreboard players add world_ID ID_system 0

scoreboard objectives add triggered_dragon_pavilion dummy

scoreboard objectives add reborn_cd dummy
scoreboard players set reborn_cd_set reborn_cd 300

scoreboard objectives add time dummy
scoreboard players set tick time 0
scoreboard players set 2tick time 0

scoreboard objectives add ghost_dead_time dummy

scoreboard objectives add Motion_X dummy
scoreboard objectives add Motion_Y dummy
scoreboard objectives add Motion_Z dummy


scoreboard objectives add Motion_X2 dummy
scoreboard objectives add Motion_Y2 dummy
scoreboard objectives add Motion_Z2 dummy

scoreboard objectives add skull_change_time dummy
scoreboard objectives add skull_thrower_cd dummy

team add enemy
team modify enemy friendlyFire false
team modify enemy collisionRule pushOtherTeams

bossbar add remain_mob_amount {"italic": false,"bold": true,"color": "red","translate":"ToDH.bossbar.remain_mob_amount"}
bossbar set remain_mob_amount color red
bossbar set remain_mob_amount players @a