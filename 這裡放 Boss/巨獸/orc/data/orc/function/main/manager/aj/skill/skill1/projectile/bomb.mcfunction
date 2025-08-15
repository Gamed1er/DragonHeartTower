

execute positioned ~ ~ ~ as @e[distance=..7] run damage @s 10 hard_damage by @n[tag=boss]

execute positioned ~ ~ ~ run particle explosion_emitter ~ ~ ~ 1 1 1 1 16 force

execute positioned ~ ~ ~ run playsound entity.generic.explode master @a[distance=..16] ~ ~ ~ 32 1 0.2

kill @s