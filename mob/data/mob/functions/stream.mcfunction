
execute if score tower control_panel matches 1 as @s[type=#resentment_mob] run function mob:resentment_stream
execute as @s[type=experience_orb] run kill @s
execute as @s[type=interaction,tag=plot,nbt={interaction:{}}] run function mob:plot_system/interaction_trigger
execute as @s[type=interaction,tag=plot,nbt=!{interaction:{}}] run scoreboard players set @s plot_timer 0
execute as @s[tag=homunculus] run function mob:plot_system/homunculus_tick
execute as @s[type=player] run function mob:player_tick
execute as @s[type=#item_display_and_marker,tag=mission_point] run function mob:mission_system/mission_tips

execute as @s[tag=enemy,team=] run team join enemy