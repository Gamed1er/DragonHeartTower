execute store result score Random soul_locker run random value 0..1
execute if score now_floor floor_controller matches 90 run scoreboard players set Random soul_locker 4

execute if score Random soul_locker matches ..1 run tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"italic": false,"bold": false,"selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":"亞巴頓"}]}},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.soul_locker.battle_msg.skill_2.1","with":[{"selector":"@s"}]}]
execute if score Random soul_locker matches 2 run tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"italic": false,"bold": false,"selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":"亞巴頓"}]}},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.soul_locker.battle_msg.skill_2.2","with":[{"selector":"@s"}]}]
execute if score Random soul_locker matches 3 run tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"italic": false,"bold": false,"selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":"亞巴頓"}]}},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.soul_locker.battle_msg.skill_2.3","with":[{"selector":"@s"}]}]
execute if score Random soul_locker matches 4 run tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"italic": false,"bold": false,"selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":"亞巴頓"}]}},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.flogger_and_soul_locker.battle_msg.skill_2.soul_locker","with":[{"selector":"@s"}]}]