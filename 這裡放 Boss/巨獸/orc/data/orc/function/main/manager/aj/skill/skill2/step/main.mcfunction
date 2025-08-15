

execute as @s at @s run function orc:main/manager/aj/attack3/down
execute as @s at @s if entity @e[distance=..3,tag=!boss] as @e[distance=..3,tag=!boss,nbt=!{HurtTime:10s},nbt=!{HurtTime:9s},nbt=!{HurtTime:8s},nbt=!{HurtTime:7s}] run damage @s 4 stiff:normal_damage by @n[tag=boss]

execute as @s at @s rotated as @s rotated ~ 0 if block ^ ^ ^2.8 #air if block ^1 ^ ^2.8 #air if block ^-1 ^ ^2.8 #air if block ^ ^1 ^2.8 #air if block ^1 ^1 ^2.8 #air if block ^-1 ^1 ^2.8 #air if block ^ ^2 ^2.8 #air if block ^1 ^2 ^2.8 #air if block ^-1 ^2 ^2.8 #air run return run tp @s ^ ^ ^.7 ~ ~

execute as @s at @s rotated as @s rotated ~ 0 unless block ^ ^ ^2.8 #air if block ^ ^1 ^2.8 #air if block ^1 ^1 ^2.8 #air if block ^-1 ^1 ^2.8 #air if block ^ ^2 ^2.8 #air if block ^1 ^2 ^2.8 #air if block ^-1 ^2 ^2.8 #air if block ^ ^3 ^2.8 #air run tp @s ^ ^1 ^.7 ~ ~

execute as @s at @s facing entity @p feet run tp @s ~ ~ ~ ~ 0




