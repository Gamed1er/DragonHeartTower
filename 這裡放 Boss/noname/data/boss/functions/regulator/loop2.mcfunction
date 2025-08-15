#用來定位 loop 的目標，因為 schedule 無法指定目標
execute as @e[tag = regulator_mount] at @s run function boss:regulator/loop
execute unless entity @e[tag = regulator_mount] run execute as @e[tag = regulator] at @s run function boss:regulator/loop1

team join Regulator @e[tag = enemy]

execute unless entity @e[tag = regulator_mount] run data modify entity @e[tag = regulator, nbt = {NoAI:true}, limit = 1] NoAI set value false
execute unless entity @e[tag = regulator_mount] run data modify entity @e[tag = regulator, nbt = {Invulnerable: true} , limit = 1] Invulnerable set value false

execute as @e[tag = regulator] run schedule function boss:regulator/loop2 1t
execute unless entity @e[tag = regulator] run function boss:regulator/end

