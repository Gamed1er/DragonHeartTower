

$execute as @s anchored eyes run summon fireball ^ ^-.2 ^1 {Tags:["OMC.Skill.Projectile","OMC.Skill.ID.big_fire_ball"],NoGravity:0b,Motion:[$(X)d,$(Y)d,$(Z)d],Glowing:1b,ExplosionPower:$(DMG)b}
execute as @s at @s run data modify entity @e[tag=OMC.Skill.Projectile,limit=1,sort=nearest] Owner set from entity @s UUID

scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost 