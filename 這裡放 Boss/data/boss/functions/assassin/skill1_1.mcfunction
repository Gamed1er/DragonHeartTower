advancement revoke @a only boss:assassin1
advancement revoke @a only boss:assassin

execute at @r positioned ^ ^ ^ positioned ~ ~2 ~ run summon marker ^ ^ ^1.2 {Tags:["temp"]}

execute at @e[tag = temp, type = marker] run tp @e[tag = temp, type = marker] ~ ~ ~ facing entity @p
execute at @e[tag = temp, type = marker] run tp @e[tag = temp, type = marker] ~ ~ ~ ~ 0
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1.2

tp @e[tag = assassin] @e[tag = temp, type = marker, limit = 1]
kill @e[tag = temp, type = marker] 

effect give @e[tag = assassin] wither 2 3 true

playsound entity.shulker.teleport master @a

execute as @e[tag = assassin] run function boss:assassin/skill1_tellraw