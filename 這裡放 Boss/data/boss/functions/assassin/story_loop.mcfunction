execute unless entity @e[tag=assassin] run summon vindicator ~ ~ ~ {NoAI:true,Silent:1b,Health:250f,Tags:["boss","enemy","assassin"],CustomName:'{"text":"幻蹤刺客．沁玲","color":"dark_gray","bold":true}',Attributes:[{Name:generic.max_health,Base:250},{Name:generic.follow_range,Base:120},{Name:generic.attack_damage,Base:8}]}

execute if score Story assassin matches 0 as @a at @s run tp @s ~ ~ ~ facing entity @e[tag = assassin, limit=1]
execute if score Story assassin matches 0 as @e[tag=assassin] run tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"italic": false,"bold": false,"selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":"幻蹤刺客．沁玲"}]}},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.assassin.battle_msg.born.1","with":[{"selector":"@s"}]}]
execute if score Story assassin matches 1 as @e[tag=assassin] run tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"italic": false,"bold": false,"selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":"幻蹤刺客．沁玲"}]}},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.assassin.battle_msg.born.2","with":[{"selector":"@s"}]}]
execute if score Story assassin matches 2 as @e[tag=assassin] run tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"italic": false,"bold": false,"selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":"幻蹤刺客．沁玲"}]}},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.assassin.battle_msg.born.3","with":[{"selector":"@s"}]}]


effect give @a slowness 3 10


execute if score Story assassin matches 0..2 run scoreboard players add Story assassin 1
execute if score Story assassin matches 0..2 run schedule function boss:assassin/story_loop 2.5s
execute if score Story assassin matches 3 run schedule function boss:assassin/spawn 2.5s
