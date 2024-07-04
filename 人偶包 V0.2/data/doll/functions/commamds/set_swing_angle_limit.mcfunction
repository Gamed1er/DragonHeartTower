$scoreboard players set swing_angle_limit doll1 $(value)
scoreboard players set swing_angle_max doll1 0
scoreboard players set swing_angle_min doll1 0
scoreboard players operation swing_angle_max doll1 += swing_angle_limit doll1
scoreboard players operation swing_angle_min doll1 -= swing_angle_limit doll1
