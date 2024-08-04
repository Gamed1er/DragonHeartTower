execute if score remain_mob_amount floor_controller matches 0 run scoreboard players add now_floor floor_controller 1
execute if score now_floor floor_controller matches 10.. run scoreboard players add tower control_panel 1
execute if score now_floor floor_controller matches 10.. run scoreboard players set now_floor floor_controller 1
execute if score remain_mob_amount floor_controller matches 0 store result storage mob:floor_control tower int 1 run scoreboard players get tower control_panel
execute if score remain_mob_amount floor_controller matches 0 store result storage mob:floor_control floor int 1 run scoreboard players get now_floor floor_controller
execute if score remain_mob_amount floor_controller matches 0 run function mob:floor_controller/tp_floor with storage mob:floor_control
advancement revoke @s only mob:stepping_on_black_wool