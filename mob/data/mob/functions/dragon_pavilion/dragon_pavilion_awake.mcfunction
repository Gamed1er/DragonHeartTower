execute unless score @s keep_inventory_hotbar matches 1..10 run scoreboard players set @s keep_inventory_hotbar 1
execute if score @s keep_inventory_hotbar matches 1 run scoreboard players operation @s keep_inventory_cost = hotbar_1 keep_inventory_cost
tellraw @s [{"translate": "ToDH.message,next_page"},{"italic": false,"bold": true,"color": "white","text": "["},{"italic": false,"bold": true,"color": "gray","translate":"ToDH.dragon_pavilion"},{"italic": false,"bold": true,"color": "white","text": "]"}]
tellraw @s [{"text": "\n"},{"italic": false,"bold": false,"underlined": true,"color": "green","translate":"ToDH.dragon_pavilion.soul_mark","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.short_description"}]},"clickEvent": {"action": "run_command","value": "/execute as @s run function mob:dragon_pavilion/dragon_pavilion_soul_mark"}}]
#tellraw @s [{"text": "\n"},{"italic": false,"bold": false,"underlined": true,"color": "green","translate":"ToDH.dragon_pavilion.upgrade","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.upgrade.short_description"}]}}]

tellraw @s [{"text": "\n"},{"italic": false,"bold": false,"underlined": true,"color": "green","translate":"ToDH.dragon_pavilion.leave","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.leave.short_description"}]},"clickEvent": {"action": "run_command","value": "/execute as @s run function mob:dragon_pavilion/leave_dragon_pavilion"}}]