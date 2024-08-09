
scoreboard players reset @s OMC.Player.Mana.Damage

execute store result score OMC.Score.reg OMC.Player.Mana.Damage run data get entity @s Inventory[{Slot:-106b}].tag.OMC.ManaStrength 10
scoreboard players operation @s OMC.Player.Mana.Damage += OMC.Score.reg OMC.Player.Mana.Damage
execute store result score OMC.Score.reg OMC.Player.Mana.Damage run data get entity @s Inventory[{Slot:100b}].tag.OMC.ManaStrength 10
scoreboard players operation @s OMC.Player.Mana.Damage += OMC.Score.reg OMC.Player.Mana.Damage
execute store result score OMC.Score.reg OMC.Player.Mana.Damage run data get entity @s Inventory[{Slot:101b}].tag.OMC.ManaStrength 10
scoreboard players operation @s OMC.Player.Mana.Damage += OMC.Score.reg OMC.Player.Mana.Damage
execute store result score OMC.Score.reg OMC.Player.Mana.Damage run data get entity @s Inventory[{Slot:102b}].tag.OMC.ManaStrength 10
scoreboard players operation @s OMC.Player.Mana.Damage += OMC.Score.reg OMC.Player.Mana.Damage
execute store result score OMC.Score.reg OMC.Player.Mana.Damage run data get entity @s Inventory[{Slot:103b}].tag.OMC.ManaStrength 10
scoreboard players operation @s OMC.Player.Mana.Damage += OMC.Score.reg OMC.Player.Mana.Damage
execute store result score OMC.Score.reg OMC.Player.Mana.Damage run data get entity @s SelectedItem.tag.OMC.ManaStrength 10
scoreboard players operation @s OMC.Player.Mana.Damage += OMC.Score.reg OMC.Player.Mana.Damage
scoreboard players operation @s OMC.Player.Mana.Damage += @s OMC.Player.Mana.Strength

execute if predicate omc:todh_kit_2 run scoreboard players operation @s OMC.Player.Mana.Damage *= 5 Math
execute if predicate omc:todh_kit_2 run scoreboard players operation @s OMC.Player.Mana.Damage *= 3 Math
execute if predicate omc:todh_kit_2 run scoreboard players operation @s OMC.Player.Mana.Damage /= 10 Math

