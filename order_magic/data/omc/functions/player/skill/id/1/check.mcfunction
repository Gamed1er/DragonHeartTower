
tag @s add OMC.attacker.detect

function omc:player/mana/damage/count
execute store result storage omc:function Battle.DMG float 0.075 run scoreboard players get @s OMC.Player.Mana.Damage

scoreboard players set @s OMC.Player.Mana.Points.Cost 50
execute as @s run function omc:player/mana/points/reduction/oount
execute at @s as @e[nbt={HurtTime:10s}] at @s on attacker if score @s OMC.Player.ID = @p[tag=OMC.attacker.detect] OMC.Player.ID as @e[sort=nearest,limit=1] run function omc:player/skill/id/1/damage with storage omc:function Battle


tag @s remove OMC.attacker.detect
scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost 
advancement revoke @s only omc:player/skill/id/1_time