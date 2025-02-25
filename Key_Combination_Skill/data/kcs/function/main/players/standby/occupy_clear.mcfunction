

$execute as @s if items entity @s container.$(slot) barrier[custom_data={KCS:{occupy_item:true}}] run return run item replace entity @s container.$(slot) from entity @s weapon.offhand


execute as @s at @s if data entity @s Inventory[{Slot:-106b}] if data entity @s Inventory[{Slot:0b}] run function kcs:main/skill/list/item with storage kcs:function reg.item
execute as @s unless data entity @s Inventory[{Slot:0b}] run item replace entity @s hotbar.0 from entity @s weapon.offhand