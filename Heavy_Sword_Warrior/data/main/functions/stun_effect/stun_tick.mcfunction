execute as @e unless score @s stun_timer matches -2147483648..2147483647 run scoreboard players set @s stun_timer 0
execute as @e if score @s stun_timer matches 1.. run effect give @s slowness 1 100
execute as @e if score @s stun_timer matches 1.. run effect give @s weakness 1 100
execute as @e if score @s stun_timer matches 1.. run effect give @s mining_fatigue 1 100
execute as @e if score @s stun_timer matches 0 run effect clear @s slowness
execute as @e if score @s stun_timer matches 0 run effect clear @s weakness
execute as @e if score @s stun_timer matches 0 run effect clear @s mining_fatigue
execute as @e if score @s stun_timer matches 1.. run scoreboard players remove @s stun_timer 1