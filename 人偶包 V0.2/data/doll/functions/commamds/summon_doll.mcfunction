execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll, new_born_doll,foot_bottom]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll, new_born_doll,wrist]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll, new_born_doll,l_leg, doll_limb]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll, new_born_doll,r_leg, doll_limb]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll, new_born_doll,shoulder]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll, new_born_doll,l_arm, doll_limb]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll, new_born_doll,r_arm, doll_limb]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll, new_born_doll,head]}
execute as @e[tag=doll] at @s run tp @s ~ ~ ~ ~ 90

summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:1}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll, new_born_doll,head]}
summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:2}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll, new_born_doll,wrist]}
summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:3}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll, new_born_doll,l_leg, doll_limb]}
summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:4}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll, new_born_doll,r_leg, doll_limb]}
summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:5}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll, new_born_doll,l_arm, doll_limb]}
summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:6}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll, new_born_doll,r_arm, doll_limb]}

execute as @e[tag=doll,tag=new_born_doll] store result score @s doll1_ID run scoreboard players get world doll1_ID
scoreboard players add world doll1_ID 1
execute as @e[tag=doll,tag=new_born_doll] run tag @s remove new_born_doll