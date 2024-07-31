
execute at @s as @e[nbt={HurtTime:10s}] at @s on attacker if entity @s[type=player] as @e[sort=nearest,limit=1] as @s run function stiff:main/do/damage/enemy/normal/stiff

advancement revoke @s only stiff:enemy/normal
advancement revoke @s only stiff:enemy/block/hard
advancement revoke @s only stiff:enemy/block/hard_tag