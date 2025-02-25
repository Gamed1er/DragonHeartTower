

$execute if data storage kcs:function {Skill:{view:{type:1}}} run data modify storage kcs:function Skill.view.text.$(Count) set value "左"
$execute if data storage kcs:function {Skill:{view:{type:1}}} run data modify storage kcs:function Skill.view.text.$(Count)c set value "yellow"
$execute if data storage kcs:function {Skill:{view:{type:2}}} run data modify storage kcs:function Skill.view.text.$(Count) set value "右"
$execute if data storage kcs:function {Skill:{view:{type:2}}} run data modify storage kcs:function Skill.view.text.$(Count)c set value "aqua"

execute as @s unless score @s KCS.Skill.ID.Count matches 2.. run data modify storage kcs:function Skill.view.text.2 set value ""
execute as @s unless score @s KCS.Skill.ID.Count matches 2.. run data modify storage kcs:function Skill.view.text.3 set value ""
execute as @s unless score @s KCS.Skill.ID.Count matches 2.. run data modify storage kcs:function Skill.view.text.4 set value ""
execute as @s unless score @s KCS.Skill.ID.Count matches 2.. run data modify storage kcs:function Skill.view.text.5 set value ""
execute as @s unless score @s KCS.Skill.ID.Count matches 2.. run data modify storage kcs:function Skill.view.text.2c set value "black"
execute as @s unless score @s KCS.Skill.ID.Count matches 2.. run data modify storage kcs:function Skill.view.text.3c set value "black"
execute as @s unless score @s KCS.Skill.ID.Count matches 2.. run data modify storage kcs:function Skill.view.text.4c set value "black"
execute as @s unless score @s KCS.Skill.ID.Count matches 2.. run data modify storage kcs:function Skill.view.text.5c set value "black"
execute as @s unless score @s KCS.Skill.ID.Count matches 3.. run data modify storage kcs:function Skill.view.text.3 set value ""
execute as @s unless score @s KCS.Skill.ID.Count matches 3.. run data modify storage kcs:function Skill.view.text.4 set value ""
execute as @s unless score @s KCS.Skill.ID.Count matches 3.. run data modify storage kcs:function Skill.view.text.5 set value ""
execute as @s unless score @s KCS.Skill.ID.Count matches 3.. run data modify storage kcs:function Skill.view.text.3c set value "black"
execute as @s unless score @s KCS.Skill.ID.Count matches 3.. run data modify storage kcs:function Skill.view.text.4c set value "black"
execute as @s unless score @s KCS.Skill.ID.Count matches 3.. run data modify storage kcs:function Skill.view.text.5c set value "black"
execute as @s unless score @s KCS.Skill.ID.Count matches 4.. run data modify storage kcs:function Skill.view.text.4 set value ""
execute as @s unless score @s KCS.Skill.ID.Count matches 4.. run data modify storage kcs:function Skill.view.text.5 set value ""
execute as @s unless score @s KCS.Skill.ID.Count matches 4.. run data modify storage kcs:function Skill.view.text.4c set value "black"
execute as @s unless score @s KCS.Skill.ID.Count matches 4.. run data modify storage kcs:function Skill.view.text.5c set value "black"
execute as @s unless score @s KCS.Skill.ID.Count matches 5.. run data modify storage kcs:function Skill.view.text.5 set value ""
execute as @s unless score @s KCS.Skill.ID.Count matches 5.. run data modify storage kcs:function Skill.view.text.5c set value "black"


execute as @s run function kcs:main/skill/list/text/text with storage kcs:function Skill.view.text