
scoreboard players reset @s OMC.Player.Mana.Strength

scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength = @s OMC.Player.Mana.Strength.Base

execute store result score OMC.State.reg OMC.Player.Mana.Strength.Extra run data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.OMC.ManaStrength 10
scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength += OMC.State.reg OMC.Player.Mana.Strength.Extra
execute store result score OMC.State.reg OMC.Player.Mana.Strength.Extra run data get entity @s Inventory[{Slot:100b}].components.minecraft:custom_data.OMC.ManaStrength 10
scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength += OMC.State.reg OMC.Player.Mana.Strength.Extra
execute store result score OMC.State.reg OMC.Player.Mana.Strength.Extra run data get entity @s Inventory[{Slot:101b}].components.minecraft:custom_data.OMC.ManaStrength 10
scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength += OMC.State.reg OMC.Player.Mana.Strength.Extra
execute store result score OMC.State.reg OMC.Player.Mana.Strength.Extra run data get entity @s Inventory[{Slot:102b}].components.minecraft:custom_data.OMC.ManaStrength 10
scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength += OMC.State.reg OMC.Player.Mana.Strength.Extra
execute store result score OMC.State.reg OMC.Player.Mana.Strength.Extra run data get entity @s Inventory[{Slot:103b}].components.minecraft:custom_data.OMC.ManaStrength 10
scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength += OMC.State.reg OMC.Player.Mana.Strength.Extra
execute store result score OMC.State.reg OMC.Player.Mana.Strength.Extra run data get entity @s SelectedItem.components.minecraft:custom_data.OMC.ManaStrength 10
scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength += OMC.State.reg OMC.Player.Mana.Strength.Extra

scoreboard players set OMC.State.reg OMC.Player.Mana.Strength.Multiply 1000
scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength.Multiply += @s OMC.Player.Mana.Strength.Multiply
scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength *= OMC.State.reg OMC.Player.Mana.Strength.Multiply
scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength /= 1000 Math

function omc:player/mana/state/strength/extra
scoreboard players operation OMC.State.reg OMC.Player.Mana.Strength += @s OMC.Player.Mana.Strength.Extra

scoreboard players operation @s OMC.Player.Mana.Strength = OMC.State.reg OMC.Player.Mana.Strength