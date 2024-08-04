
execute as @e[tag=kill_character] at @s run kill @e[type=item_display,tag=character,sort=nearest,limit=1]
execute as @e[tag=kill_character] run kill @s