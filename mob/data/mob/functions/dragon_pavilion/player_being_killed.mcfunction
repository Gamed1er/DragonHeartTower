tag @s add dead
tag @s add in_dragon_pavilion
scoreboard players operation @s reborn_cd = reborn_cd_set reborn_cd
schedule function mob:dragon_pavilion/late_clear 2t
advancement revoke @s only mob:player_dead
function mob:floor_controller/unlock_floor_0
execute as @a[tag=!dead] if score remain_mob_amount floor_controller matches 1.. run function mob:floor_controller/fighting_lock_floor
