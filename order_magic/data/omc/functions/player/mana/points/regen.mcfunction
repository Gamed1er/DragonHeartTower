
execute as @s if predicate omc:todh_kit_2 run scoreboard players operation OMC.Score.reg OMC.Player.Mana.Points.Regen = @s OMC.Player.Mana.Points.Regen
execute as @s if predicate omc:todh_kit_2 run scoreboard players add OMC.Score.reg OMC.Player.Mana.Points.Regen 1

scoreboard players operation @s OMC.Player.Mana.Points += OMC.Score.reg OMC.Player.Mana.Points.Regen
function omc:player/mana/points/text

advancement revoke @s only omc:player/mana/points/regen