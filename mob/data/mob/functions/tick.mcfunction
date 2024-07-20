execute if score tower control_panel matches 1 as @e[type=#resentment_mob] run function mob:resentment_stream
execute as @e[type=experience_orb] run kill @s
execute as @a run function mob:player_tick