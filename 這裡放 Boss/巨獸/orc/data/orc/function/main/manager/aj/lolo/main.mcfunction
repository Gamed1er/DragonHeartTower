


function orc:main/manager/aj/lolo/clear

execute as @s at @s rotated as @s rotated ~ 0 positioned ^2 ^ ^3 run summon zombie ~ ~ ~ {Tags:["enemy"]}
execute as @s at @s rotated as @s rotated ~ 0 positioned ^-2 ^ ^3 run summon zombie ~ ~ ~ {Tags:["enemy"]}
execute as @s at @s rotated as @s rotated ~ 0 positioned ^3 ^ ^1 run summon zombie ~ ~ ~ {Tags:["enemy"]}
execute as @s at @s rotated as @s rotated ~ 0 positioned ^-3 ^ ^1 run summon zombie ~ ~ ~ {Tags:["enemy"]}

execute as @s at @s rotated as @s rotated ~ 0 positioned ^2 ^ ^-3 run summon skeleton ~ ~ ~ {Tags:["enemy"]}
execute as @s at @s rotated as @s rotated ~ 0 positioned ^-2 ^ ^-3 run summon skeleton ~ ~ ~ {Tags:["enemy"]}
execute as @s at @s rotated as @s rotated ~ 0 positioned ^1 ^ ^-3 run summon skeleton ~ ~ ~ {Tags:["enemy"]}
execute as @s at @s rotated as @s rotated ~ 0 positioned ^-1 ^ ^-3 run summon skeleton ~ ~ ~ {Tags:["enemy"]}


execute as @s run scoreboard players add @s ToDH.Boss.1_Orc.Spawn.subordinate.CD 600