



data modify entity @s NoAI set value 1b
tag @s add enemy
tag @s add ToDH.enemy.Boss2
tag @s add partner




team join enemy @s

execute store result score @e[tag=ToDH.enemy.Boss2,tag=partner] ToDH.Boss2.Skill.Duration if entity @e[tag=ToDH.enemy.Boss2,tag=partner]
execute if score @s ToDH.Boss2.Skill.Duration matches 11.. run kill @e[tag=ToDH.enemy.Boss2,tag=partner,sort=random,limit=1,nbt=!{NoAI:1b}]