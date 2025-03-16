advancement revoke @a only boss:assassin
advancement revoke @a only boss:assassin1

execute at @r positioned ^ ^ ^ positioned ~ ~2 ~ run summon marker ^ ^ ^0.5 {Tags:["temp"]}

execute at @e[tag = temp, type = marker] run tp @e[tag = temp, type = marker] ~ ~ ~ facing entity @p
execute at @e[tag = temp, type = marker] run tp @e[tag = temp, type = marker] ~ ~ ~ ~ 0
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1
execute at @e[tag = temp, type = marker] if block ^ ^ ^2 air run tp @e[tag = temp, type = marker] ^ ^ ^1

tp @e[tag = assassin] @e[tag = temp, type = marker, limit = 1]
kill @e[tag = temp, type = marker] 

playsound entity.shulker.teleport master @a

function boss:assassin/skill1_tellraw