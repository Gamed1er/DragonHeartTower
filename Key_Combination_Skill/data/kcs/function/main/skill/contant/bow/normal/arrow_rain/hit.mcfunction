

execute as @e[type=!player,nbt={HurtTime:10s}] at @s on attacker if entity @s[type=player,advancements={kcs:players/bow/rain_tag=true}] as @e[type=!player,limit=1,sort=nearest] run function kcs:main/skill/contant/bow/normal/arrow_rain/tag

function kcs:main/skill/contant/bow/normal/arrow_rain/in_g_check