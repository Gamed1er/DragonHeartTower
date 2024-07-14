execute unless entity @e[tag = soul_locker_soul] run summon skeleton ~ ~ ~ {CustomNameVisible:1b,NoAI:1b,Health:20f,Tags:["enemy","soul_locker_soul","boss_partner","soul_setting"],CustomName:'{"text":"soul","color":"black"}',ArmorItems:[{id:"minecraft:dirt",Count:1b},{id:"minecraft:dirt",Count:1b},{id:"minecraft:dirt",Count:1b},{id:"minecraft:dirt",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1},{id:"minecraft:glowing",amplifier:1b,duration:-1}],Attributes:[{Name:generic.max_health,Base:20}]}

execute store result entity @e[tag = soul_setting, limit = 1] Health double 3 run attribute @s generic.max_health get 1
data modify entity @e[tag = soul_setting, limit = 1] UUID set from entity @s UUID
item replace entity @e[tag = soul_setting, limit = 1] armor.feet from entity @s armor.feet
item replace entity @e[tag = soul_setting, limit = 1] armor.chest from entity @s armor.chest
item replace entity @e[tag = soul_setting, limit = 1] armor.head from entity @s armor.head
item replace entity @e[tag = soul_setting, limit = 1] armor.legs from entity @s armor.legs
item replace entity @e[tag = soul_setting, limit = 1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[tag = soul_setting, limit = 1] weapon.offhand from entity @s weapon.offhand

execute at @e[tag = soul_locker, limit = 1] run spreadplayers ~ ~ 10 10 false @e[tag = soul_setting]

tag @e remove soul_setting
tag @s add soul_locker_locked