


execute as @s if score @s stiff.bodylimit > @s stiff.bodylimit.Max run scoreboard players operation @s stiff.bodylimit = @s stiff.bodylimit.Max

scoreboard players remove @s stiff.bodylimit 30
scoreboard players operation @s stiff.bodylimit -= @s stiff.resilience
effect give @s darkness 1 7 true
attribute @s jump_strength modifier add todh:stiff.debuff -1.0 add_multiplied_total
attribute @s movement_speed modifier add todh:stiff.debuff -1.0 add_multiplied_total
attribute @s attack_damage modifier add todh:stiff.debuff -1.0 add_multiplied_total
attribute @s attack_speed modifier add todh:stiff.debuff -0.9 add_multiplied_total


execute if score @s stiff.bodylimit matches ..0 run scoreboard players set @s stiff.bodylimit 0
execute if score @s stiff.bodylimit matches 1.. run schedule function stiff:main/do/over/tag 1t append