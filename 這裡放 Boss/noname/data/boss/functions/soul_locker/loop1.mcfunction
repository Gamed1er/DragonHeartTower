#用來定位 loop 的目標，因為 schedule 無法指定目標
execute as @e[tag = soul_locker] at @s run function boss:soul_locker/loop
execute unless entity @e[tag = soul_locker] run function boss:soul_locker/end