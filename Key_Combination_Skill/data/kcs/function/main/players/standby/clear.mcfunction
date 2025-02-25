

execute as @s run effect clear @s slowness
execute as @s run effect clear @s mining_fatigue
execute at @s run kill @e[tag=KCS.Skill.interation.key,limit=1,sort=nearest]
tag @s remove KCS.Players.standby
clear @s barrier[custom_data={KCS:{occupy_item:true}}]

advancement revoke @s only kcs:players/standby_check