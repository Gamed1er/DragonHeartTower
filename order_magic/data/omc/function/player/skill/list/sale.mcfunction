scoreboard players operation @s OMC.Skill.ID *= 10 Math
execute if score @s OMC.Skill.ID.Count >= @s OMC.Skill.ID.Limit run scoreboard players reset @s OMC.Skill.ID
execute if score @s OMC.Skill.ID.Count >= @s OMC.Skill.ID.Limit run scoreboard players reset @s OMC.Skill.ID.Count
scoreboard players add @s OMC.Skill.ID.Count 1


execute if entity @e[type=eye_of_ender,nbt={Item:{components:{"minecraft:custom_data":{OMC:{item_type:"material",material_type:"None"}}}}}] run scoreboard players add @s OMC.Skill.ID 1
execute if entity @e[type=eye_of_ender,nbt={Item:{components:{"minecraft:custom_data":{OMC:{item_type:"material",material_type:"Fire"}}}}}] run scoreboard players add @s OMC.Skill.ID 2
execute if entity @e[type=eye_of_ender,nbt={Item:{components:{"minecraft:custom_data":{OMC:{item_type:"material",material_type:"Water"}}}}}] run scoreboard players add @s OMC.Skill.ID 3
execute if entity @e[type=eye_of_ender,nbt={Item:{components:{"minecraft:custom_data":{OMC:{item_type:"material",material_type:"Wood"}}}}}] run scoreboard players add @s OMC.Skill.ID 4
execute if entity @e[type=eye_of_ender,nbt={Item:{components:{"minecraft:custom_data":{OMC:{item_type:"material",material_type:"Earth"}}}}}] run scoreboard players add @s OMC.Skill.ID 5
execute if entity @e[type=eye_of_ender,nbt={Item:{components:{"minecraft:custom_data":{OMC:{item_type:"material",material_type:"Wind"}}}}}] run scoreboard players add @s OMC.Skill.ID 6
function omc:player/skill/list/text/check

execute if score @s OMC.Skill.ID.Count matches 1 run scoreboard players operation @s OMC.Skill.ID.reg = @s OMC.Skill.ID



execute store result storage omc:function Skill.ID int 1 run scoreboard players get @s OMC.Skill.ID

execute at @s run kill @e[type=eye_of_ender,sort=nearest,nbt={Item:{components:{"minecraft:custom_data":{OMC:{item_type:"material"}}}}}]