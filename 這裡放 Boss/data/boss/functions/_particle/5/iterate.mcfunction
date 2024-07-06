scoreboard players add test bolt 1
scoreboard players add @s bolt 1


## 位移

#新來的
execute if entity @s[tag = blotnew] store result score dir bolt run random value 0..7
execute unless entity @s[tag = blotnew] store result score dir bolt run random value 8

execute if score dir bolt matches 0 run tp @s ^ ^ ^0.2 ~32 ~
execute if score dir bolt matches 1 run tp @s ^ ^ ^0.2 ~-32 ~
execute if score dir bolt matches 2 run tp @s ^ ^ ^0.2 ~ ~32
execute if score dir bolt matches 3 run tp @s ^ ^ ^0.2 ~ ~-32
execute if score dir bolt matches 4 run tp @s ^ ^ ^0.2 ~16 ~16
execute if score dir bolt matches 5 run tp @s ^ ^ ^0.2 ~16 ~-16
execute if score dir bolt matches 6 run tp @s ^ ^ ^0.2 ~-16 ~16
execute if score dir bolt matches 7 run tp @s ^ ^ ^0.2 ~-16 ~-16

#水平
execute store result score dir bolt run random value 0..4

execute if score dir bolt matches 0 run tp @s ^ ^ ^0.2 ~32 ~
execute if score dir bolt matches 1 run tp @s ^ ^ ^0.2 ~-32 ~
execute if score dir bolt matches 2 run tp @s ^ ^ ^0.2 ~16 ~
execute if score dir bolt matches 3 run tp @s ^ ^ ^0.2 ~-16 ~

#垂直
execute store result score dir bolt run random value 0..4

execute if score dir bolt matches 0 run tp @s ^ ^ ^0.2 ~ ~4
execute if score dir bolt matches 1 run tp @s ^ ^ ^0.2 ~ ~-5
execute if score dir bolt matches 2 run tp @s ^ ^ ^0.2 ~ ~2
execute if score dir bolt matches 3 run tp @s ^ ^ ^0.2 ~ ~-3

summon marker ~ ~ ~ {Tags:["Particle5"]}

function boss:_particle/5/basic_blot

tag @s remove blotnew

execute store result score random bolt run random value 0..10
execute if score @s bolt matches ..30 as @s at @s run function boss:_particle/5/iterate
execute if score @s bolt matches 30..45 if score random bolt matches 5.. rotated as @s at @s run function boss:_particle/5/iterate
execute if score @s bolt matches 45.. if score random bolt matches 5.. rotated as @s at @s run kill @s
execute store result score random bolt run random value 0..10
execute if score test bolt matches ..300 if score random bolt matches 10.. as @s at @s run summon marker ~ ~ ~ {Tags:["bolt", "blotnew"]}
execute if score test bolt matches 300 run schedule function boss:_particle/5/end 5t

execute as @e[tag = blot1, limit = 1, sort = nearest] at @s run function boss:_particle/5/iterate