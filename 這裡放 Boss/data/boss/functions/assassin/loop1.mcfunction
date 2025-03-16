#用來定位 loop 的目標，因為 schedule 無法指定目標
execute as @e[tag = assassin] at @s run function boss:assassin/loop

execute as @e[tag = assassin] run schedule function boss:assassin/loop1 1t
execute unless entity @e[tag = assassin] run function boss:assassin/end