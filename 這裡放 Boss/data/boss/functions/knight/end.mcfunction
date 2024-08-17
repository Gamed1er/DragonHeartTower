bossbar set knight visible false
execute if score now_floor floor_controller matches 90 run scoreboard players set Random knight 4
execute unless score now_floor floor_controller matches 90 run scoreboard players set Random knight 1

execute if score Random knight matches 1 run tellraw @a [{"text":"屠龍騎士．豪佐","color":"dark_gray","bold":true},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.knight.battle_msg.death"}]
execute if score Random knight matches 4 unless entity @e[tag = knight] run tellraw @a [{"text":"屠龍騎士．豪佐","color":"dark_gray","bold":true},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.flogger_and_knight.battle_msg.death"}]

kill @e[tag = knight1]