scoreboard players remove remain_mob_amount floor_controller 1
execute store result bossbar remain_mob_amount value run scoreboard players get remain_mob_amount floor_controller
execute if score remain_mob_amount floor_controller matches 0 run bossbar set remain_mob_amount visible false
execute if score remain_mob_amount floor_controller matches 0 run scoreboard players set mob_amount floor_controller 0
advancement revoke @s only mob:mob_being_slayed