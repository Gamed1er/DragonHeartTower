
execute as @s[tag=doll,tag=l_leg   ] store result entity @s Rotation[1] float 1 run scoreboard players get swing_angle doll1
execute as @s[tag=doll,tag=r_leg   ] store result entity @s Rotation[1] float -1 run scoreboard players get swing_angle doll1
execute as @s[tag=doll,tag=l_arm   ] store result entity @s Rotation[1] float -1 run scoreboard players get swing_angle doll1
execute as @s[tag=doll,tag=r_arm   ] store result entity @s Rotation[1] float 1 run scoreboard players get swing_angle doll1
