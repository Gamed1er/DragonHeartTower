#用來定位 loop 的目標，因為 schedule 無法指定目標
execute as @e[tag = regulator_mount] at @s run function boss:regulator/loop
execute unless entity @e[tag = regulator_mount] as @e[tag = regulator] at @s run function boss:regulator/loop1