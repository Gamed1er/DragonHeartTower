execute as @s[tag=doll,tag=wrist   ] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=l_leg   ] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=r_leg   ] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=shoulder] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=l_arm   ] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=r_arm   ] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=head    ] store result entity @s Rotation[0] float 1 run scoreboard players get head_rotation doll1

execute as @s[tag=doll,tag=wrist   ] at @e[type=minecraft:marker,tag=doll,tag=foot_bottom] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ^ ^ ^-0.8
execute as @s[tag=doll,tag=l_leg   ] at @e[type=minecraft:marker,tag=doll,tag=wrist      ] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ^-0.13 ^ ^
execute as @s[tag=doll,tag=r_leg   ] at @e[type=minecraft:marker,tag=doll,tag=wrist      ] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ^0.13 ^ ^
execute as @s[tag=doll,tag=shoulder] at @e[type=minecraft:marker,tag=doll,tag=wrist      ] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ^ ^ ^-0.5
execute as @s[tag=doll,tag=l_arm   ] at @e[type=minecraft:marker,tag=doll,tag=shoulder   ] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ^-0.38 ^ ^
execute as @s[tag=doll,tag=r_arm   ] at @e[type=minecraft:marker,tag=doll,tag=shoulder   ] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ^0.38 ^ ^
execute as @s[tag=doll,tag=head    ] at @e[type=minecraft:marker,tag=doll,tag=shoulder   ] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ^ ^ ^-0.1


