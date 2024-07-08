execute store result storage omc:function Skill.ID int 1 run scoreboard players get @s OMC.Skill.ID
execute if score @s OMC.Skill.ID.Count matches 1.. run function omc:player/skill/list/manager with storage omc:function Skill


execute as @s store result storage omc:function reg.Slot int 1 run scoreboard players set @s OMC.storage.hotbar.slot 0
execute as @s store result storage omc:function reg.ID int 1 run scoreboard players get @s OMC.Player.ID
execute as @s run function omc:player/standby/clear/storage with storage omc:function reg

tag @s remove OMC.Players.standby

advancement revoke @s only omc:player/standby_check