scoreboard players remove @s ParticleTime 1
execute if score @s ParticleTime matches ..-120 run kill @s

particle dust 0.5 0.5 0.5 1 ^ ^ ^3 0 0 0 1 10 force
tp @s ~ ~ ~ ~18 ~
particle dust 0.6 0.6 0.6 1 ^ ^ ^3 0 0 0 1 10 force
tp @s ~ ~ ~ ~18 ~
particle dust 0.7 0.7 0.7 1 ^ ^ ^3 0 0 0 1 10 force
tp @s ~ ~ ~ ~18 ~
particle dust 0.8 0.8 0.8 1 ^ ^ ^3 0 0 0 1 10 force
tp @s ~ ~ ~ ~18 ~
particle dust 0.9 0.9 0.9 1 ^ ^ ^3 0 0 0 1 10 force
tp @s ~ ~ ~ ~18 ~
particle dust 0.9 0.9 0.9 1 ^ ^ ^3 0 0 0 1 10 force
tp @s ~ ~ ~ ~18 ~
particle dust 0.9 0.9 0.9 1 ^ ^ ^3 0 0 0 1 10 force
tp @s ~ ~ ~ ~18 ~

execute if block ~ ~-1 ~ air run tp ~ ~-1 ~
