execute as @s[tag=anger_eerie_skeleton] run function mob:mob_skill/anger_eerie_skeleton_skill
execute as @s[tag=anger_dark_skeleton] run function mob:mob_skill/anger_dark_skeleton_skill
execute as @s[tag=grudgeful_evil_skeleton] run function mob:mob_skill/grudgeful_evil_skeleton_skill
execute as @s[type=arrow,nbt={HasBeenShot:false}] run function mob:entity_ticks/arrow
execute as @s[type=arrow,nbt={pickup:0b,inGround:true}] run kill @s