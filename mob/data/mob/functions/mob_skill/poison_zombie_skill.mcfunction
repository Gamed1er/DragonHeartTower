execute if score tick time matches 0 at @s run summon area_effect_cloud ~ ~ ~ {Duration:10,Color:5351241,Radius:2.5f,effects:[{id:"minecraft:poison",amplifier:0,duration:40}],Tags:[poison]}
execute if score tick time matches 5 at @s run summon area_effect_cloud ~ ~ ~ {Duration:10,Color:5351241,Radius:2.5f,effects:[{id:"minecraft:poison",amplifier:0,duration:40}],Tags:[poison]}
execute if score tick time matches 10 at @s run summon area_effect_cloud ~ ~ ~ {Duration:10,Color:5351241,Radius:2.5f,effects:[{id:"minecraft:poison",amplifier:0,duration:40}],Tags:[poison]}
execute if score tick time matches 15 at @s run summon area_effect_cloud ~ ~ ~ {Duration:10,Color:5351241,Radius:2.5f,effects:[{id:"minecraft:poison",amplifier:0,duration:40}],Tags:[poison]}
execute if score 2tick time matches 0 at @e[type=area_effect_cloud,tag=poison] run effect give @e[distance=..2,tag=enemy] instant_damage 1 0