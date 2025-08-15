

execute as @s at @s run function orc:main/manager/aj/attack3/down


execute as @s at @s rotated as @s rotated ~ 0 if block ^ ^ ^.2 #air if block ^ ^1 ^.2 #air if block ^ ^2 ^.2 #air run return run tp @s ^ ^ ^.2 ~ ~

execute as @s at @s rotated as @s rotated ~ 0 unless block ^ ^ ^.2 #air if block ^ ^1 ^.2 #air if block ^ ^2 ^.2 #air if block ^ ^3 ^.2 #air run tp @s ^ ^1 ^.2 ~ ~
