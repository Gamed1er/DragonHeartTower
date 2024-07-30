
execute as @a[tag=KCS.Players.standby] as @s at @s run function kcs:main/players/standby/schedule/tick


execute if entity @a[tag=KCS.Players.standby] run schedule function kcs:main/players/standby/schedule/tag 2t replace 