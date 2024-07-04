scoreboard objectives add doll1 dummy
scoreboard players set rotation doll1 0
scoreboard players set head_rotation doll1 0
scoreboard players set head_pitch doll1 0
scoreboard players set head_rotation_offset doll1 0
scoreboard players set l_arm_rotation doll1 0
scoreboard players set r_arm_rotation doll1 0
scoreboard players set l_leg_rotation doll1 0
scoreboard players set r_leg_rotation doll1 0
scoreboard players set wrist_rotation doll1 0
scoreboard players set swing_angle doll1 0
scoreboard players set swing_angle_max doll1 60
scoreboard players set swing_angle_min doll1 -60
scoreboard players set swing_angle_limit doll1 60
scoreboard players set tick_swing_angle doll1 1
scoreboard players set swing_direction_flag doll1 1
scoreboard players set walk doll1 0
scoreboard players set idle doll1 1
scoreboard objectives add doll1_ID dummy
scoreboard players set world doll1_ID 0

tellraw @a "success"