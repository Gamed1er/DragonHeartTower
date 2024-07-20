execute store result score @s dragon_soul_temp run clear @s nether_star{"dragon_soul":true} 
scoreboard players operation @s dragon_soul += @s dragon_soul_temp
advancement revoke @s only mob:get_dragon_soul
execute store result storage mob:function dragon_soul.count int 1 run scoreboard players get @s dragon_soul
function mob:dragon_pavilion/dragon_soul_display with storage mob:function dragon_soul