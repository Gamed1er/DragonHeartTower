execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll,foot_bottom]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll,wrist]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll,l_leg]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll,r_leg]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll,shoulder]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll,l_arm]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll,r_arm]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[doll,head]}
execute as @e[tag=doll] at @s run tp @s ~ ~ ~ ~ 90

summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:1}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll,head]}
summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:2}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll,wrist]}
summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:3}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll,l_leg]}
summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:4}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll,r_leg]}
summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:5}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll,l_arm]}
summon item_display ~ ~ ~ {item:{id:"minecraft:coal",Count:1,tag:{CustomModelData:6}},item_display:"thirdperson_righthand",transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,1f,0f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Tags:[doll,r_arm]}
