##韌性削減公式

scoreboard players operation @s stiff.bodylimit.reg = @s stiff.bodylimit.add
# 限制上限
execute if score @s[type=player] stiff.toughness matches 1001.. run scoreboard players set @s stiff.toughness 1000
scoreboard players operation @s stiff.bodylimit.reg += @s stiff.toughness
scoreboard players operation @s stiff.bodylimit.add *= @s stiff.bodylimit.add
scoreboard players operation @s stiff.bodylimit.add /= @s stiff.bodylimit.reg

scoreboard players operation @s stiff.bodylimit += @s stiff.bodylimit.add
