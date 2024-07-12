

execute store result score OMC.Score.reg OMC.Player.Mana.Damage run data get entity @s Inventory[{Slot:-106b}].tag.OMCManaStrength 10
execute store result score OMC.Score.reg OMC.Player.Mana.Damage run data get entity @s SelectedItem.tag.OMCManaStrength 10
scoreboard players operation @s OMC.Player.Mana.Damage = OMC.Score.reg OMC.Player.Mana.Damage
scoreboard players operation @s OMC.Player.Mana.Damage += @s OMC.Player.Mana.Strength

execute if predicate omc:todh_kit_2 run scoreboard players operation @s OMC.Player.Mana.Damage *= 5 Math
execute if predicate omc:todh_kit_2 run scoreboard players operation @s OMC.Player.Mana.Damage *= 3 Math
execute if predicate omc:todh_kit_2 run scoreboard players operation @s OMC.Player.Mana.Damage /= 10 Math

