

tag @s add KCS.Players.standby
execute as @s at @s anchored eyes positioned ^ ^-.75 ^1 run summon interaction ~ ~ ~ {Tags:["KCS.Skill.interation.key"],width:4f,height:2f}
function kcs:main/players/standby/schedule/tag
scoreboard players reset @s KCS.Skill.Hurt.Count
scoreboard players reset @s KCS.Skill.ID
scoreboard players reset @s KCS.Skill.ID.Count
scoreboard players reset @s KCS.Skill.Range
scoreboard players reset @s KCS.Skill.Angle
execute as @s store result score @s KCS.Skill.Damage run attribute @s minecraft:attack_damage get 100

data modify storage kcs:function Skill.type set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".KCS.type
data modify storage kcs:function Skill.class set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".KCS.class

execute as @s store result storage kcs:function reg.item.slot int 1 run data get entity @s SelectedItemSlot 1
execute as @s run function kcs:main/players/standby/occupy with storage kcs:function reg.item

advancement revoke @s only kcs:key/left
advancement revoke @s only kcs:key/right
advancement revoke @s only kcs:players/standby_leave