
tag @s add OMC.attacker.detect


function omc:player/mana/damage/count
execute store result storage omc:function Battle.DMG float 0.1 run scoreboard players get @s OMC.Player.Mana.Damage

execute at @s as @e[nbt={HurtTime:10s}] at @s on attacker if score @s OMC.Player.ID = @p[tag=OMC.attacker.detect] OMC.Player.ID as @e[sort=nearest,limit=1] run function omc:player/skill/id/21/damage with storage omc:function Battle


tag @s remove OMC.attacker.detect
advancement revoke @s only omc:player/skill/id/21_hit