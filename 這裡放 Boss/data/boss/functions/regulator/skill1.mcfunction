scoreboard players set if_single_player Regulator 0
execute as @a[nbt={active_effects:[{id:"minecraft:slowness", amplifier:46b}]}] run scoreboard players add if_single_player Regulator 1
execute as @a[nbt=!{active_effects:[{id:"minecraft:slowness", amplifier:46b}]}] run scoreboard players remove if_single_player Regulator 1

tag @s add regulator_locked

execute unless entity @e[tag = regulator_soul] unless score if_single_player Regulator matches 1 run function boss:regulator/skill1_summon
execute as @e[tag = soul_setting, limit = 3] store result entity @s Health double 3 run attribute @a[limit = 1, tag = regulator_locked] generic.max_health get 1
item replace entity @e[tag = soul_setting, limit = 1] armor.feet from entity @s armor.feet
item replace entity @e[tag = soul_setting, limit = 1] armor.chest from entity @s armor.chest
item replace entity @e[tag = soul_setting, limit = 1] armor.head from entity @s armor.head
item replace entity @e[tag = soul_setting, limit = 1] armor.legs from entity @s armor.legs
item replace entity @e[tag = soul_setting, limit = 1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[tag = soul_setting, limit = 1] weapon.offhand from entity @s weapon.offhand

execute at @e[tag = regulator, limit = 1] run spreadplayers ~ ~ 10 10 false @e[tag = soul_setting]

tag @e remove soul_setting
