

execute positioned ~ ~ ~ run summon block_display ~ ~.5 ~ {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:chain",Properties:{axis:"y"}},transformation:[0f,0f,-2f,1f,-2f,0f,0f,1f,0f,5f,0f,0f,0f,0f,0f,1f],Tags:["ToDH.enemy.Boss2","Chain","display"],Glowing:1b}],Tags:["ToDH.enemy.Boss2","Chain","display"]}

execute positioned ~ ~ ~ as @e[tag=ToDH.enemy.Boss2,tag=Chain,tag=display,sort=nearest] at @s rotated as @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=display] run tp @s ~ ~ ~ ~ ~