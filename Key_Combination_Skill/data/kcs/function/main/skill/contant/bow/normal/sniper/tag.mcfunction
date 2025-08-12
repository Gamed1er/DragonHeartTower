tag @s add KCS.arrow.sniper
data modify entity @s NoGravity set value 1b

execute as @e[type=arrow,tag=KCS.arrow.sniper] as @s run function kcs:main/skill/contant/bow/normal/sniper/nbt

execute if entity @e[type=arrow,tag=KCS.arrow.sniper] run schedule function kcs:main/skill/contant/bow/normal/sniper/tag 4t replace