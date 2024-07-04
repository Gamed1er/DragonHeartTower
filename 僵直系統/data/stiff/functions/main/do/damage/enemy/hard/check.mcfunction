
execute at @s as @e[nbt={HurtTime:10s}] at @s on attacker if entity @s[type=player] as @e[sort=nearest,limit=1] as @s run function stiff:main/do/damage/enemy/hard/stiff

advancement revoke @s only stiff:enemy/hard_tag
advancement revoke @s only stiff:enemy/hard