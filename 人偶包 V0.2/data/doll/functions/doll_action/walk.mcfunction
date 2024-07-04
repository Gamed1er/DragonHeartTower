execute if score swing_angle doll1 < swing_angle_max doll1 if score swing_direction_flag doll1 matches 1 run scoreboard players operation swing_angle doll1 += tick_swing_angle doll1
execute if score swing_angle doll1 > swing_angle_min doll1 if score swing_direction_flag doll1 matches 0 run scoreboard players operation swing_angle doll1 -= tick_swing_angle doll1
execute if score swing_angle doll1 >= swing_angle_max doll1 if score swing_direction_flag doll1 matches 1 run scoreboard players set swing_direction_flag doll1 0
execute if score swing_angle doll1 <= swing_angle_min doll1 if score swing_direction_flag doll1 matches 0 run scoreboard players set swing_direction_flag doll1 1
