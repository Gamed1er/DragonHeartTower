execute unless score @s OMC.Player.ID matches 1.. store result score @s OMC.Player.ID run scoreboard players add index OMC.Player.ID 1
scoreboard players reset @s OMC.Player.check.drop
scoreboard players reset @s OMC.Skill.ID.Count

tag @s add OMC.Players.standby
function omc:player/standby/hotbar/start

advancement revoke @s only omc:player/standby_leave