

execute as @e[type=!player,nbt={HurtTime:10s}] at @s on attacker if entity @s[type=player,advancements={kcs:players/bow/rain_tag=true}] as @e[type=!player,limit=1,sort=nearest] run tag @s add KCS.arrow.rain
execute as @e[tag=KCS.arrow.rain] as @s run scoreboard players set @s KCS.Skill.arrow.Rain.Tick 20
execute as @e[tag=KCS.arrow.rain] as @s run data modify entity @s Glowing set value 1b 
function kcs:main/skill/id/bow/221/in_g_check