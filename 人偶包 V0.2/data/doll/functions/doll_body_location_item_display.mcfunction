execute as @s[tag=doll,tag=wrist   ] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=l_leg   ] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=r_leg   ] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=l_arm   ] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=r_arm   ] store result entity @s Rotation[0] float 1 run scoreboard players get rotation doll1
execute as @s[tag=doll,tag=head    ] store result entity @s Rotation[0] float 1 run scoreboard players get head_rotation doll1
execute as @s[tag=doll,tag=wrist   ] store result entity @s Rotation[1] float 1 run scoreboard players get wrist_rotation doll1
execute as @s[tag=doll,tag=head   ] store result entity @s Rotation[1] float 1 run scoreboard players get head_pitch doll1


execute as @s[tag=doll,tag=wrist] at @e[type=minecraft:marker,tag=doll,tag=wrist] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ~ ~ ~
execute as @s[tag=doll,tag=l_leg] at @e[type=minecraft:marker,tag=doll,tag=l_leg] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ~ ~ ~
execute as @s[tag=doll,tag=r_leg] at @e[type=minecraft:marker,tag=doll,tag=r_leg] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ~ ~ ~
execute as @s[tag=doll,tag=l_arm] at @e[type=minecraft:marker,tag=doll,tag=l_arm] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ~ ~ ~
execute as @s[tag=doll,tag=r_arm] at @e[type=minecraft:marker,tag=doll,tag=r_arm] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ~ ~ ~
execute as @s[tag=doll,tag=head ] at @e[type=minecraft:marker,tag=doll,tag=head ] if score @s doll1_ID = @e[limit=1,sort=nearest] doll1_ID run tp @s ~ ~ ~


