
execute store result storage kcs:function Skill.ID int 1 run scoreboard players get @s KCS.Skill.ID
execute if score @s KCS.Skill.ID.Count matches 1.. run function kcs:main/skill/list/manager with storage kcs:function Skill

data modify storage kcs:function reg.item.nbt set from entity @s Inventory[{Slot:-106b}].tag
data modify storage kcs:function reg.item.id set from entity @s Inventory[{Slot:-106b}].id
execute as @s if data entity @s Inventory[{Slot:0b}] run function kcs:main/skill/list/item with storage kcs:function reg.item
execute as @s unless data entity @s Inventory[{Slot:0b}] run item replace entity @s hotbar.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
execute as @s run function kcs:main/players/standby/clear



