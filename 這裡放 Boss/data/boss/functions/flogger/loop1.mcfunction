#用來定位 loop 的目標，因為 schedule 無法指定目標
execute as @e[tag = flogger] at @s run function boss:flogger/loop
execute unless entity @e[tag = flogger] run function boss:flogger/end