execute as @e[type=arrow,nbt={crit:0b}] at @s on origin if entity @s[type=player] unless score @s KCS.Skill.arrow.Crit.Tick matches 81.. as @e[type=arrow,limit=1,sort=nearest] run data modify entity @s crit set value 1b

advancement revoke @s only kcs:players/bow/crit_check