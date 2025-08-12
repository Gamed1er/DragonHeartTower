
execute as @e[tag=OMC.Skill.target,tag=OMC.Skill.ID.big_mana_bullet] at @s unless entity @e[nbt={Tags:["OMC.Skill.ID.big_mana_bullet","OMC.Skill.Projectile"]},distance=..2] as @s run function omc:player/skill/content/2/big_mana_bullet/hit


execute if entity @e[tag=OMC.Skill.target,tag=OMC.Skill.ID.big_mana_bullet] run schedule function omc:player/skill/content/2/big_mana_bullet/tick 1t