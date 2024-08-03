execute unless entity @e[tag=flogger] run summon zombie ~ ~ ~ {NoAI:true,CustomNameVisible:1b,PersistenceRequired:0b,Health:100f,Tags:["enemy","boss","flogger"],CustomName:'[{"text":"鐵律鞭叱者 - ","color":"gray","bold":true},{"text":"亞巴頓","color":"#EE00FF","bold":true}]',HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1511}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12105912},Trim:{material:"minecraft:amethyst",pattern:"minecraft:vex"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12105912},Trim:{material:"minecraft:amethyst",pattern:"minecraft:vex"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12105912},Trim:{material:"minecraft:amethyst",pattern:"minecraft:vex"}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:12105912},Trim:{material:"minecraft:amethyst",pattern:"minecraft:vex"}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:250},{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0}]}

execute if score Story flogger matches 0 as @a at @s run tp @s ~ ~ ~ facing entity @e[tag = flogger, limit=1]
execute if score Story flogger matches 0 as @e[tag=flogger] run tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"italic": false,"bold": false,"color": "red","selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":"亞巴頓"}]}},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.flogger.born.1"}]
execute if score Story flogger matches 1 as @e[tag=flogger] run tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"italic": false,"bold": false,"color": "red","selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":"亞巴頓"}]}},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.flogger.born.2"}]
execute if score Story flogger matches 2 as @e[tag=flogger] run tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"italic": false,"bold": false,"color": "red","selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":"亞巴頓"}]}},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.flogger.born.3"}]
execute if score Story flogger matches 3 as @e[tag=flogger] run function boss:flogger/loop1
execute if score Story flogger matches 3 as @e[tag=flogger] run title @a title [{"text": "菁英來襲","color": "red"}]
execute if score Story flogger matches 3 as @e[tag=flogger] run title @a subtitle [{"text":"鐵律鞭叱者 - ","color":"gray","bold":true},{"text":"亞巴頓","color":"#EE00FF","bold":true}]

effect give @a slowness 3 10


execute if score Story flogger matches 0..2 run scoreboard players add Story flogger 1
execute if score Story flogger matches 0..2 run schedule function boss:flogger/story_loop 2.5s
execute if score Story flogger matches 3 run schedule function boss:flogger/spawn 2.5s
