kill @e[tag = bolt]
summon marker ~ ~ ~ {Tags:["bolt", "blot1"]}
summon marker ~ ~ ~ {Tags:["bolt", "blot2"]}
summon marker ~ ~ ~ {Tags:["bolt", "blot3"]}
summon marker ~ ~ ~ {Tags:["bolt", "blot4"]}
summon marker ~ ~ ~ {Tags:["bolt", "blot5"]}

execute as @e[tag = blot1] run tp @s ~ ~ ~ ~15 ~
execute as @e[tag = blot2] run tp @s ~ ~ ~ ~5 ~
execute as @e[tag = blot3] run tp @s ~ ~ ~ ~-5 ~
execute as @e[tag = blot4] run tp @s ~ ~ ~ ~-15 ~

scoreboard objectives add bolt dummy "閃電五聯邊特效"
scoreboard players set @e[tag = bolt] bolt 0
scoreboard players set test bolt 0

function boss:_particle/5/basic_blot

execute as @e[tag=bolt] at @s run function boss:_particle/5/iterate