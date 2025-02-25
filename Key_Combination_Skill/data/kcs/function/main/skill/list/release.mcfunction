
execute store result storage kcs:function Skill.ID int 1 run scoreboard players get @s KCS.Skill.ID
execute if score @s KCS.Skill.ID.Count matches 1.. run function kcs:main/skill/list/manager with storage kcs:function Skill

data modify storage kcs:function reg.item.nbt set from entity @s Inventory[{Slot:-106b}].components
data modify storage kcs:function reg.item.id set from entity @s Inventory[{Slot:-106b}].id



execute as @s run function kcs:main/players/standby/occupy_clear with storage kcs:function reg.item
item replace entity @s weapon.offhand with air

execute as @s run function kcs:main/players/standby/clear



