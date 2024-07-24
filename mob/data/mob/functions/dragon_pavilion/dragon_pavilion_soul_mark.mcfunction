execute if score @s keep_inventory_hotbar matches 1 run scoreboard players operation @s keep_inventory_cost = hotbar_1 keep_inventory_cost
execute if score @s keep_inventory_hotbar matches 2 run scoreboard players operation @s keep_inventory_cost = hotbar_2 keep_inventory_cost
execute if score @s keep_inventory_hotbar matches 3 run scoreboard players operation @s keep_inventory_cost = hotbar_3 keep_inventory_cost
execute if score @s keep_inventory_hotbar matches 4 run scoreboard players operation @s keep_inventory_cost = hotbar_4 keep_inventory_cost
execute if score @s keep_inventory_hotbar matches 5 run scoreboard players operation @s keep_inventory_cost = hotbar_5 keep_inventory_cost
execute if score @s keep_inventory_hotbar matches 6 run scoreboard players operation @s keep_inventory_cost = hotbar_6 keep_inventory_cost
execute if score @s keep_inventory_hotbar matches 7 run scoreboard players operation @s keep_inventory_cost = hotbar_7 keep_inventory_cost
execute if score @s keep_inventory_hotbar matches 8 run scoreboard players operation @s keep_inventory_cost = hotbar_8 keep_inventory_cost
execute if score @s keep_inventory_hotbar matches 9 run scoreboard players operation @s keep_inventory_cost = hotbar_9 keep_inventory_cost


tellraw @s [{"translate": "ToDH.message,next_page"},{"italic": false,"bold": true,"color": "green","translate":"ToDH.dragon_pavilion.soul_mark"}]
tellraw @s [{"italic": false,"bold": false,"color": "white","translate":"ToDH.dragon_pavilion.soul_mark.description"}]

execute unless score @s keep_inventory_armor_head matches 1 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "red","translate":"ToDH.dragon_pavilion.soul_mark.head"},{"translate": "ToDH.dragon_pavilion.dragon_soul_icon","hoverEvent": {"action": "show_item","contents": {"id":"nether_star","count": 1,"tag": "{dragon_soul:true,CustomModelData:1,display:{'Name':'{\"italic\":false,\"bold\":false,\"color\":\"gold\",\"translate\":\"ToDH.item.dragon_soul\"}','Lore':['{\"italic\": false,\"bold\": false,\"color\": \"white\",\"translate\": \"ToDH.item.dragon_soul.description\"}']}}"}}},{"score":{"name": "head","objective": "keep_inventory_cost"}},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "white","translate":"ToDH.dragon_pavilion.soul_mark.brand","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.brand.short_description"}]},"clickEvent": {"action": "run_command","value": "/execute as @s run function mob:dragon_pavilion/soul_mark_parts/head"}}]
execute if score @s keep_inventory_armor_head matches 1 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "green","translate":"ToDH.dragon_pavilion.soul_mark.head"},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "gray","translate":"ToDH.dragon_pavilion.soul_mark.branded","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.branded.short_description"}]}}]

execute unless score @s keep_inventory_armor_chest matches 1 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "red","translate":"ToDH.dragon_pavilion.soul_mark.chest"},{"translate": "ToDH.dragon_pavilion.dragon_soul_icon","hoverEvent": {"action": "show_item","contents": {"id":"nether_star","count": 1,"tag": "{dragon_soul:true,CustomModelData:1,display:{'Name':'{\"italic\":false,\"bold\":false,\"color\":\"gold\",\"translate\":\"ToDH.item.dragon_soul\"}','Lore':['{\"italic\": false,\"bold\": false,\"color\": \"white\",\"translate\": \"ToDH.item.dragon_soul.description\"}']}}"}}},{"score":{"name": "chest","objective": "keep_inventory_cost"}},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "white","translate":"ToDH.dragon_pavilion.soul_mark.brand","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.brand.short_description"}]},"clickEvent": {"action": "run_command","value": "/execute as @s run function mob:dragon_pavilion/soul_mark_parts/chest"}}]
execute if score @s keep_inventory_armor_chest matches 1 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "green","translate":"ToDH.dragon_pavilion.soul_mark.chest"},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "gray","translate":"ToDH.dragon_pavilion.soul_mark.branded","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.branded.short_description"}]}}]

execute unless score @s keep_inventory_armor_legs matches 1 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "red","translate":"ToDH.dragon_pavilion.soul_mark.legs"},{"translate": "ToDH.dragon_pavilion.dragon_soul_icon","hoverEvent": {"action": "show_item","contents": {"id":"nether_star","count": 1,"tag": "{dragon_soul:true,CustomModelData:1,display:{'Name':'{\"italic\":false,\"bold\":false,\"color\":\"gold\",\"translate\":\"ToDH.item.dragon_soul\"}','Lore':['{\"italic\": false,\"bold\": false,\"color\": \"white\",\"translate\": \"ToDH.item.dragon_soul.description\"}']}}"}}},{"score":{"name": "legs","objective": "keep_inventory_cost"}},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "white","translate":"ToDH.dragon_pavilion.soul_mark.brand","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.brand.short_description"}]},"clickEvent": {"action": "run_command","value": "/execute as @s run function mob:dragon_pavilion/soul_mark_parts/legs"}}]
execute if score @s keep_inventory_armor_legs matches 1 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "green","translate":"ToDH.dragon_pavilion.soul_mark.legs"},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "gray","translate":"ToDH.dragon_pavilion.soul_mark.branded","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.branded.short_description"}]}}]

execute unless score @s keep_inventory_armor_feet matches 1 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "red","translate":"ToDH.dragon_pavilion.soul_mark.feet"},{"translate": "ToDH.dragon_pavilion.dragon_soul_icon","hoverEvent": {"action": "show_item","contents": {"id":"nether_star","count": 1,"tag": "{dragon_soul:true,CustomModelData:1,display:{'Name':'{\"italic\":false,\"bold\":false,\"color\":\"gold\",\"translate\":\"ToDH.item.dragon_soul\"}','Lore':['{\"italic\": false,\"bold\": false,\"color\": \"white\",\"translate\": \"ToDH.item.dragon_soul.description\"}']}}"}}},{"score":{"name": "feet","objective": "keep_inventory_cost"}},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "white","translate":"ToDH.dragon_pavilion.soul_mark.brand","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.brand.short_description"}]},"clickEvent": {"action": "run_command","value": "/execute as @s run function mob:dragon_pavilion/soul_mark_parts/feet"}}]
execute if score @s keep_inventory_armor_feet matches 1 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "green","translate":"ToDH.dragon_pavilion.soul_mark.feet"},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "gray","translate":"ToDH.dragon_pavilion.soul_mark.branded","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.branded.short_description"}]}}]

execute if score @s keep_inventory_hotbar matches ..9 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "red","translate":"ToDH.dragon_pavilion.soul_mark.hotbar"},{"text": " "},{"score":{"name": "@s","objective": "keep_inventory_hotbar"}},{"translate": "ToDH.dragon_pavilion.dragon_soul_icon","hoverEvent": {"action": "show_item","contents": {"id":"nether_star","count": 1,"tag": "{dragon_soul:true,CustomModelData:1,display:{'Name':'{\"italic\":false,\"bold\":false,\"color\":\"gold\",\"translate\":\"ToDH.item.dragon_soul\"}','Lore':['{\"italic\": false,\"bold\": false,\"color\": \"white\",\"translate\": \"ToDH.item.dragon_soul.description\"}']}}"}}},{"score":{"name": "@s","objective": "keep_inventory_cost"}},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "white","translate":"ToDH.dragon_pavilion.soul_mark.brand","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.brand.short_description"}]},"clickEvent": {"action": "run_command","value": "/execute as @s run function mob:dragon_pavilion/soul_mark_parts/hotbar"}}]
execute if score @s keep_inventory_hotbar matches 10.. run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "green","translate":"ToDH.dragon_pavilion.soul_mark.hotbar"},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "gray","translate":"ToDH.dragon_pavilion.soul_mark.branded","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.branded.short_description"}]}}]

execute unless score @s keep_inventory_talisman matches 1 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "red","translate":"ToDH.dragon_pavilion.soul_mark.talisman"},{"translate": "ToDH.dragon_pavilion.dragon_soul_icon","hoverEvent": {"action": "show_item","contents": {"id":"nether_star","count": 1,"tag": "{dragon_soul:true,CustomModelData:1,display:{'Name':'{\"italic\":false,\"bold\":false,\"color\":\"gold\",\"translate\":\"ToDH.item.dragon_soul\"}','Lore':['{\"italic\": false,\"bold\": false,\"color\": \"white\",\"translate\": \"ToDH.item.dragon_soul.description\"}']}}"}}},{"score":{"name": "talisman","objective": "keep_inventory_cost"}},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "white","translate":"ToDH.dragon_pavilion.soul_mark.brand","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.brand.short_description"}]},"clickEvent": {"action": "run_command","value": "/execute as @s run function mob:dragon_pavilion/soul_mark_parts/talisman"}}]
execute if score @s keep_inventory_talisman matches 1 run tellraw @s [{"text": "\n"},{"italic": false,"bold": true,"color": "green","translate":"ToDH.dragon_pavilion.soul_mark.talisman"},{"text": "："},{"italic": false,"bold": false,"underlined": true,"color": "gray","translate":"ToDH.dragon_pavilion.soul_mark.branded","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.soul_mark.branded.short_description"}]}}]

tellraw @s [{"text": "\n"},{"italic": false,"bold": false,"underlined": true,"color": "green","translate":"ToDH.dragon_pavilion.back_main_page","hoverEvent": {"action": "show_text","contents": [{"italic": false,"bold": false,"color": "white","translate": "ToDH.dragon_pavilion.back_main_page.short_description"}]},"clickEvent": {"action": "run_command","value": "/execute as @s run function mob:dragon_pavilion/dragon_pavilion_awake"}}]