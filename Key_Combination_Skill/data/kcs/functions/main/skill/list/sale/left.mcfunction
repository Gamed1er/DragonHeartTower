

scoreboard players operation @s KCS.Skill.ID *= 10 Math
execute store result storage kcs:function Skill.view.Count int 1 run scoreboard players add @s KCS.Skill.ID.Count 1
data modify storage kcs:function Skill.view.type set value 1
scoreboard players add @s KCS.Skill.ID 1
function kcs:main/skill/list/text/sale with storage kcs:function Skill.view

execute store result storage kcs:function Skill.ID int 1 run scoreboard players get @s KCS.Skill.ID
execute if score @s KCS.Skill.ID.Count matches 3.. run function kcs:main/skill/list/release

advancement revoke @s only kcs:key/left