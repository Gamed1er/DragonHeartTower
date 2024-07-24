scoreboard players set if_single_player Regulator 0
execute as @a[nbt={active_effects:[{id:"minecraft:slowness", amplifier:46b}]}] run scoreboard players add if_single_player Regulator 1
execute as @a[nbt=!{active_effects:[{id:"minecraft:slowness", amplifier:46b}]}] run scoreboard players remove if_single_player Regulator 1

execute unless entity @e[tag = Regulator_soul] unless score if_single_player Regulator matches 1 run function boss:regulator/skill1_summon
execute as @e[tag = soul_setting, limit = 3] store result entity @s Health double 3 run attribute @s generic.max_health get 1
execute as @e[tag = soul_setting, limit = 3] run item replace entity @s armor.feet from entity @s armor.feet
execute as @e[tag = soul_setting, limit = 3] run item replace entity @s armor.chest from entity @s armor.chest
execute as @e[tag = soul_setting, limit = 3] run item replace entity @s armor.head from entity @s armor.head
execute as @e[tag = soul_setting, limit = 3] run item replace entity @s armor.legs from entity @s armor.legs
execute as @e[tag = soul_setting, limit = 3] run item replace entity @s weapon.mainhand from entity @s weapon.mainhand
execute as @e[tag = soul_setting, limit = 3] run item replace entity @s weapon.offhand from entity @s weapon.offhand

execute at @e[tag = Regulator, limit = 1] run spreadplayers ~ ~ 10 10 false @e[tag = soul_setting]

tag @e remove soul_setting
tag @s add Regulator_locked