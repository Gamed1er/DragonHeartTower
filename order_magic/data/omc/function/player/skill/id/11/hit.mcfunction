

execute at @s as @a if score @s OMC.Player.ID = @e[sort=nearest,limit=1,tag=OMC.Skill.target,tag=OMC.Skill.ID.11] OMC.Player.ID run tag @s add OMC.attacker.detect

function omc:player/mana/damage/count
execute store result storage omc:function Battle.DMG float 0.12 run scoreboard players get @p[tag=OMC.attacker.detect] OMC.Player.Mana.Damage

execute as @s at @s run function omc:player/skill/id/11/damage with storage omc:function Battle



tag @a remove OMC.attacker.detect
execute at @s run kill @e[tag=OMC.Skill.display,sort=nearest,limit=1]
kill @s