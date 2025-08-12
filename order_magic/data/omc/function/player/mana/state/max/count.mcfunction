
scoreboard players reset @s OMC.Player.Mana.Points.Max

scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Max = @s OMC.Player.Mana.Points.Max.Base

execute store result score OMC.State.reg OMC.Player.Mana.Points.Max.Extra run data get entity @s Inventory[{Slot:100b}].components.minecraft:custom_data.OMC.ManaPointsMax 10
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Max += OMC.State.reg OMC.Player.Mana.Points.Max.Extra
execute store result score OMC.State.reg OMC.Player.Mana.Points.Max.Extra run data get entity @s Inventory[{Slot:101b}].components.minecraft:custom_data.OMC.ManaPointsMax 10
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Max += OMC.State.reg OMC.Player.Mana.Points.Max.Extra
execute store result score OMC.State.reg OMC.Player.Mana.Points.Max.Extra run data get entity @s Inventory[{Slot:102b}].components.minecraft:custom_data.OMC.ManaPointsMax 10
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Max += OMC.State.reg OMC.Player.Mana.Points.Max.Extra
execute store result score OMC.State.reg OMC.Player.Mana.Points.Max.Extra run data get entity @s Inventory[{Slot:103b}].components.minecraft:custom_data.OMC.ManaPointsMax 10
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Max += OMC.State.reg OMC.Player.Mana.Points.Max.Extra

scoreboard players set OMC.State.reg OMC.Player.Mana.Points.Max.Multiply 1000
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Max.Multiply += @s OMC.Player.Mana.Points.Max.Multiply
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Max *= OMC.State.reg OMC.Player.Mana.Points.Max.Multiply
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Max /= 1000 Math

function omc:player/mana/state/max/extra
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Max += @s OMC.Player.Mana.Points.Max.Extra

scoreboard players operation @s OMC.Player.Mana.Points.Max = OMC.State.reg OMC.Player.Mana.Points.Max