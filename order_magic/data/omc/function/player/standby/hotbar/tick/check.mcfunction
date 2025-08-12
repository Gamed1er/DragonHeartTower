
execute as @a[tag=OMC.Players.standby] run function omc:player/standby/hotbar/tick/bar
execute as @a[tag=OMC.Players.standby] if score @s OMC.Skill.ID matches 1.. run function omc:player/skill/list/text/check
execute as @a[tag=OMC.Players.standby] if score @s OMC.Skill.ID matches 1.. run function omc:player/standby/hotbar/tick/display/check

execute if entity @a[tag=OMC.Players.standby] run schedule function omc:player/standby/hotbar/tick/check 2t replace