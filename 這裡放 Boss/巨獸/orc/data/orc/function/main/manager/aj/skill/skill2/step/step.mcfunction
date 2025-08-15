

execute as @s at @s run function orc:main/manager/aj/attack3/down


execute as @s at @s rotated as @s rotated ~ 0 if block ^ ^ ^.5 #air if block ^ ^1 ^.5 #air if block ^ ^2 ^.5 #air run return run tp @s ^ ^ ^.5 ~ ~

execute as @s at @s rotated as @s rotated ~ 0 unless block ^ ^ ^.5 #air if block ^ ^1 ^.5 #air if block ^ ^2 ^.5 #air if block ^ ^3 ^.5 #air run tp @s ^ ^1 ^.5 ~ ~


