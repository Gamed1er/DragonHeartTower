bossbar set assassin visible false
execute if score now_floor floor_controller matches 90 run scoreboard players set Random assassin 4
execute unless score now_floor floor_controller matches 90 run scoreboard players set Random assassin 1

execute if score Random assassin matches 1 run tellraw @a [{"text":"幻蹤刺客．沁玲","color":"dark_gray","bold":true},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.assassin.battle_msg.death"}]
execute if score Random assassin matches 4 unless entity @e[tag = assassin] run tellraw @a [{"text":"幻蹤刺客．沁玲","color":"dark_gray","bold":true},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.flogger_and_assassin.battle_msg.death"}]