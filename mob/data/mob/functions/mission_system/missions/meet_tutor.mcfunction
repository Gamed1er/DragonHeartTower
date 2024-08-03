execute at @s as @e[type=item_display,tag=direction_arrow] if score @s ID_system = @p ID_system rotated ~ 0 positioned ^ ^ ^1 run tp @s ~ ~1 ~ facing entity @e[tag=tutor,limit=1,sort=nearest] feet
execute as @e[type=item_display,tag=direction_arrow] at @s run tp @s ~ ~ ~ ~ 0
advancement revoke @s only mob:mission_system/meet_tutor