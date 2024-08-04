kill @e[tag = regulator_mount]
kill @e[tag = regulator]

bossbar set regulator visible false
tellraw @a [{"italic": false,"bold": true,"color": "red","text": "["},{"text":"叱嘯監管者 -","color":"gray","bold":true},{"text":"麥迪根","color":"#6F00FF"},{"italic": false,"bold": true,"color": "red","text": "]"},{"italic": false,"bold": true,"color": "white","text": ""},{"italic": false,"bold": false,"color": "white","translate": "ToDH.plot.regulator.battle_msg.death"}]