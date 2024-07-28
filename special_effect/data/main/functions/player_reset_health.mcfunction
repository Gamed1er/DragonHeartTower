data modify storage minecraft:macro input set value {"health":"0"}
execute store result storage minecraft:macro input.health int 1 run scoreboard players get @s player_max_health
function main:plear_set_health with storage minecraft:macro input
tag @s remove set_health