#用來定位 loop 的目標，因為 schedule 無法指定目標
execute as @e[tag = knight] at @s run function boss:knight/loop

execute as @e[tag = knight] run schedule function boss:knight/loop1 1t
execute unless entity @e[tag = knight] run function boss:knight/end