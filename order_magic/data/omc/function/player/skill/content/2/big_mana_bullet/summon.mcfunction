


execute as @s at @s anchored eyes run summon marker ^ ^ ^ {Tags:["OMC.Skill.target","OMC.Skill.ID.big_mana_bullet"]}
execute at @s run scoreboard players operation @e[type=marker,limit=1,tag=OMC.Skill.target] OMC.Player.ID = @s OMC.Player.ID

execute as @s at @s run summon block_display ^ ^ ^ {Tags:["OMC.Skill.display","OMC.Skill.ID.big_mana_bullet"],block_state:{Name:"snow_block"},transformation:{translation:[-0.5f,-0.5f,-0.5f],left_rotation:[0f,0f,0f,1.0f],right_rotation:[0f,0f,0f,1.0f],scale:[1.0f,1.0f,1.0f]},Glowing:1b}
data modify entity @e[limit=1,sort=nearest,nbt={Tags:["OMC.Skill.display"]}] transformation.translation set value [-0.5f,-0.5f,-0.5f]

$execute as @s anchored eyes run summon snowball ^ ^ ^0.25 {Tags:["OMC.Skill.Projectile","OMC.Skill.ID.big_mana_bullet"],NoGravity:0b,Motion:[$(X)d,$(Y)d,$(Z)d],Glowing:0b}
execute as @s at @s run data modify entity @e[tag=OMC.Skill.Projectile,limit=1,sort=nearest] Owner set from entity @s UUID

execute at @s run ride @e[limit=1,sort=nearest,nbt={Tags:["OMC.Skill.display"]}] mount @e[limit=1,sort=nearest,nbt={Tags:["OMC.Skill.Projectile"]}]
execute at @s run ride @e[limit=1,sort=nearest,nbt={Tags:["OMC.Skill.target"]}] mount @e[limit=1,sort=nearest,nbt={Tags:["OMC.Skill.display"]}]


function omc:player/skill/content/2/big_mana_bullet/tick
scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost 