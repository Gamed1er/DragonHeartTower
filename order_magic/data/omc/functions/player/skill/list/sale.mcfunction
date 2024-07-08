scoreboard players operation @s OMC.Skill.ID *= 10 Math
execute store result storage omc:function Skill.view.Count int 1 run scoreboard players add @s OMC.Skill.ID.Count 1
function omc:player/skill/list/text/sale with storage omc:function Skill.view

execute if entity @e[type=item,nbt={Item:{tag:{Tags:["OMC.item.material","None"]}}}] run scoreboard players add @s OMC.Skill.ID 1
execute if entity @e[type=item,nbt={Item:{tag:{Tags:["OMC.item.material","Fire"]}}}] run scoreboard players add @s OMC.Skill.ID 2
execute if entity @e[type=item,nbt={Item:{tag:{Tags:["OMC.item.material","Water"]}}}] run scoreboard players add @s OMC.Skill.ID 3
execute if entity @e[type=item,nbt={Item:{tag:{Tags:["OMC.item.material","Wood"]}}}] run scoreboard players add @s OMC.Skill.ID 4
execute if entity @e[type=item,nbt={Item:{tag:{Tags:["OMC.item.material","Earth"]}}}] run scoreboard players add @s OMC.Skill.ID 5
execute if entity @e[type=item,nbt={Item:{tag:{Tags:["OMC.item.material","Wind"]}}}] run scoreboard players add @s OMC.Skill.ID 6




execute store result storage omc:function Skill.ID int 1 run scoreboard players get @s OMC.Skill.ID
execute if score @s OMC.Skill.ID.Count >= @s OMC.Skill.ID.Limit run function omc:player/skill/list/manager with storage omc:function Skill
execute at @s run kill @e[type=item,sort=nearest,nbt={Item:{tag:{Tags:["OMC.item.material"]}}}]