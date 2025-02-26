
execute store result storage omc:function Skill.ID int 1 run scoreboard players get @s OMC.Skill.ID
execute if score @s OMC.Skill.ID.Count matches 1.. run function omc:player/skill/list/manager with storage omc:function Skill

execute as @s unless data entity @s Inventory[{Slot:-106b,tag:{Tags:["OMC.trigger"]}}] run item replace entity @s weapon.offhand from entity @s weapon.mainhand

advancement revoke @s only omc:player/standby_nonull