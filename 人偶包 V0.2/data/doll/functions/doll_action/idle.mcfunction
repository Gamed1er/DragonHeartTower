execute if score swing_angle doll1 matches ..5 unless score swing_angle doll1 matches 0 run scoreboard players operation swing_angle doll1 += tick_swing_angle doll1
execute if score swing_angle doll1 matches -5.. unless score swing_angle doll1 matches 0 run scoreboard players operation swing_angle doll1 -= tick_swing_angle doll1
execute if score swing_angle doll1 matches -6.. if score swing_angle doll1 matches ..6 run scoreboard players set swing_angle doll1 0
