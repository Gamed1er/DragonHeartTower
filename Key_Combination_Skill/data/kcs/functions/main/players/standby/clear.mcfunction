

execute as @s run effect clear @s slowness
execute at @s run kill @e[tag=KCS.Skill.interation.key,limit=1,sort=nearest]
tag @s remove KCS.Players.standby

advancement revoke @s only kcs:players/standby_check