


scoreboard players operation @s OMC.Skill.ID.reg = @s OMC.Skill.ID
scoreboard players operation @s OMC.Skill.ID.reg %= 10 Math

data modify storage omc:function Skill.view.Count set value 1
function omc:player/skill/list/text/sale with storage omc:function Skill.view

execute as @s unless score @s OMC.Skill.ID.Count matches 2.. run return fail

scoreboard players operation @s OMC.Skill.ID.reg = @s OMC.Skill.ID
scoreboard players operation @s OMC.Skill.ID.reg %= 100 Math
scoreboard players operation @s OMC.Skill.ID.reg /= 10 Math

data modify storage omc:function Skill.view.Count set value 1
function omc:player/skill/list/text/sale with storage omc:function Skill.view

scoreboard players operation @s OMC.Skill.ID.reg = @s OMC.Skill.ID
scoreboard players operation @s OMC.Skill.ID.reg %= 10 Math

data modify storage omc:function Skill.view.Count set value 2
function omc:player/skill/list/text/sale with storage omc:function Skill.view

execute as @s unless score @s OMC.Skill.ID.Count matches 3.. run return fail

scoreboard players operation @s OMC.Skill.ID.reg = @s OMC.Skill.ID
scoreboard players operation @s OMC.Skill.ID.reg /= 100 Math

data modify storage omc:function Skill.view.Count set value 1
function omc:player/skill/list/text/sale with storage omc:function Skill.view

scoreboard players operation @s OMC.Skill.ID.reg = @s OMC.Skill.ID
scoreboard players operation @s OMC.Skill.ID.reg %= 100 Math
scoreboard players operation @s OMC.Skill.ID.reg /= 10 Math

data modify storage omc:function Skill.view.Count set value 2
function omc:player/skill/list/text/sale with storage omc:function Skill.view

scoreboard players operation @s OMC.Skill.ID.reg = @s OMC.Skill.ID
scoreboard players operation @s OMC.Skill.ID.reg %= 10 Math

data modify storage omc:function Skill.view.Count set value 3
function omc:player/skill/list/text/sale with storage omc:function Skill.view