

$execute as @s anchored eyes run summon fireball ^ ^-.2 ^1 {Tags:["OMC.Skill.Projectile","OMC.Skill.ID.22"],NoGravity:0b,power:[$(X),$(Y),$(Z)],Glowing:1b,ExplosionPower:$(DMG)b}
execute as @s at @s run data modify entity @e[tag=OMC.Skill.Projectile,limit=1,sort=nearest] Owner set from entity @s UUID