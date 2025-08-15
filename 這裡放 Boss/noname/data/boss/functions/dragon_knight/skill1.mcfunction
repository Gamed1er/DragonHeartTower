# 召喚兩個骷髏小弟，骷髏小弟在場時王有 80% 減傷
kill @e[tag = dragon_knight3]
summon skeleton ~ ~ ~ {Glowing:0b,CustomNameVisible:1b,Health:10f,Tags:["enemy","boss_partner","dragon_knight3"],CustomName:'{"text":"龍之護衛","color":"light_purple","bold":true}',HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:chainmail_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:50}]}
summon skeleton ~ ~ ~ {Glowing:0b,CustomNameVisible:1b,Health:10f,Tags:["enemy","boss_partner","dragon_knight3"],CustomName:'{"text":"龍之護衛","color":"light_purple","bold":true}',HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:chainmail_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:50}]}
team join DrangonKnight @e[tag = dragon_knight3]
spreadplayers ~ ~ 5 8 false @e[tag = dragon_knight3]

execute at @e[tag = dragon_knight3] run particle dust 0.667 0.447 0.702 2 ~ ~ ~ 0.2 0.75 0.2 0.5 125 force

execute if score Hint DragonKnight matches 0 run tellraw @p ["",{"text":"【提示】 ","bold":true,"color":"gray"},{"text":"龍之護衛","bold":true,"color":"dark_purple"},{"text":"在場時，龍之騎士會獲得","bold":true,"color":"gray"},{"text":"大量減傷","bold":true,"color":"red"}]
scoreboard players set Hint DragonKnight 1

execute store result score SkillCoolDown DragonKnight run random value 200..240