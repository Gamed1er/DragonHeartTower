

# execute at @s run summon block_display ~ ~ ~ {Tags:["OMC.Skill.display.1"],block_state:{Name:"minecraft:purple_stained_glass"},transformation:{translation:[-0.5f,-0.5f,-0.5f]}}
# execute at @s run summon block_display ~ ~ ~ {Tags:["OMC.Skill.display.2"],block_state:{Name:"minecraft:purple_stained_glass"},transformation:{translation:[-0.5f,-0.5f,-0.5f],left_rotation:[0.0f,0.6f,0.5f,0.5f]}}

$execute as @s anchored eyes run summon snowball ^ ^-1.75 ^0.5 {Tags:["OMC.Skill.Projectile","OMC.Skill.nomatk"],NoGravity:1b,Motion:[$(X),$(Y),$(Z)],Glowing:1b}
execute as @s at @s run data modify entity @e[tag=OMC.Skill.Projectile,limit=1,sort=nearest] Owner set from entity @s UUID
scoreboard players remove @s OMC.Player.Mana.Points 30

# execute at @s run ride @e[type=block_display,tag=OMC.Skill.display.1,limit=1,sort=nearest] mount @e[tag=OMC.Skill.Projectile,limit=1,sort=nearest]
# execute at @s run ride @e[type=block_display,tag=OMC.Skill.display.2,limit=1,sort=nearest] mount @e[type=block_display,tag=OMC.Skill.display.1,limit=1,sort=nearest]