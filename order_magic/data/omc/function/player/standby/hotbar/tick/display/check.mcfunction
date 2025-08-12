

## 3
execute as @s store result score OMC.Score.display3 OMC.Skill.ID.reg run execute store result score OMC.Score.display2 OMC.Skill.ID.reg run scoreboard players operation OMC.Score.display1 OMC.Skill.ID.reg = @s OMC.Skill.ID

execute as @s run scoreboard players operation OMC.Score.display1 OMC.Skill.ID.reg /= 100 Math
execute as @s run scoreboard players operation OMC.Score.display2 OMC.Skill.ID.reg %= 100 Math
execute as @s run scoreboard players operation OMC.Score.display2 OMC.Skill.ID.reg /= 10 Math
execute as @s run scoreboard players operation OMC.Score.display3 OMC.Skill.ID.reg %= 10 Math

execute if score @s OMC.Skill.ID.Count matches 3 at @s run return run function omc:player/standby/hotbar/tick/display/lv3

## 2
execute as @s store result score OMC.Score.display3 OMC.Skill.ID.reg run execute store result score OMC.Score.display2 OMC.Skill.ID.reg run scoreboard players operation OMC.Score.display1 OMC.Skill.ID.reg = @s OMC.Skill.ID

execute as @s run scoreboard players operation OMC.Score.display1 OMC.Skill.ID.reg /= 10 Math
execute as @s run scoreboard players operation OMC.Score.display2 OMC.Skill.ID.reg %= 10 Math

execute if score @s OMC.Skill.ID.Count matches 2 at @s run return run function omc:player/standby/hotbar/tick/display/lv2

## 1
execute as @s store result score OMC.Score.display3 OMC.Skill.ID.reg run execute store result score OMC.Score.display2 OMC.Skill.ID.reg run scoreboard players operation OMC.Score.display1 OMC.Skill.ID.reg = @s OMC.Skill.ID

execute if score @s OMC.Skill.ID.Count matches 1 at @s run function omc:player/standby/hotbar/tick/display/lv1







