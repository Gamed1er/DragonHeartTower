

execute as @e[type=!player,nbt={HurtTime:10s}] at @s on attacker if entity @s[type=player,advancements={kcs:players/bow/rain_tag=true}] as @e[type=!player,limit=1,sort=nearest] run function kcs:main/skill/id/bow/221/tag

function kcs:main/skill/id/bow/221/in_g_check