scoreboard players add remain_mob_amount floor_controller 1
scoreboard players add mob_amount floor_controller 1

execute store result bossbar remain_mob_amount max run scoreboard players get mob_amount floor_controller
execute store result bossbar remain_mob_amount value run scoreboard players get remain_mob_amount floor_controller

bossbar set remain_mob_amount visible true