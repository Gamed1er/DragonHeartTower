# 召喚兩個骷髏小弟，骷髏小弟在場時王有 80% 減傷
summon skeleton ~ ~ ~ {Glowing:0b,CustomNameVisible:1b,Health:10f,Tags:["enemy","boss_partner","knight2","knight4"],CustomName:'{"text":"鷹傲狙擊手","color":"light_purple","bold":true}',HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:chainmail_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:100}]}
summon skeleton ~ ~ ~ {Glowing:0b,CustomNameVisible:1b,Health:10f,Tags:["enemy","boss_partner","knight3","knight4"],CustomName:'{"text":"鷹傲狙擊手","color":"light_purple","bold":true}',HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:chainmail_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:100}]}
team join knight @e[tag = knight4]
execute at @e[tag = knight] run particle dust 0.667 0.447 0.702 2 ~ ~ ~ 0.2 0.75 0.2 0.5 125 force

execute store result score SkillCoolDown knight run random value 100..120