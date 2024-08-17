
data modify entity @s NoGravity set value 1b
data modify entity @s Glowing set value 1b
data modify entity @s Owner set from entity @e[tag=ToDH.enemy.Boss2,tag=boss,limit=1] UUID

tag @s add ToDH.enemy.Boss2
tag @s add Hook
tag @s add ToDH.HardAttacker

execute positioned 0.0 0.0 0.0 rotated as @e[tag=ToDH.enemy.Boss2,tag=boss,limit=1] as @e[tag=OMC.marker.vector] run tp @s ^ ^.2 ^50.0
summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:damaged_anvil",Properties:{facing:"east"}},transformation:[0f,0f,1f,-0.5f,2f,0f,0f,-1.2f,0f,3f,0f,-1f,0f,0f,0f,1f],Tags:["ToDH.enemy.Boss2","Hook","display"],Glowing:1b}],Tags:["ToDH.enemy.Boss2","Hook","pos"]}
execute as @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=display] at @s rotated as @e[tag=ToDH.enemy.Boss2,tag=boss] run tp @s ~ ~ ~ ~ ~
ride @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=pos,limit=1] mount @s

execute store result entity @s Motion[0] double 0.0001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[0] 1000
execute store result entity @s Motion[1] double 0.0001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[1] 1000
execute store result entity @s Motion[2] double 0.0001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[2] 1000

function todh_b2:skill/skill3/hook/chain/timing