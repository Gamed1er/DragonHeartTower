execute as @s[tag=anger_eerie_skeleton] run function mob:mob_skill/anger_eerie_skeleton_skill
execute as @s[tag=anger_dark_skeleton] run function mob:mob_skill/anger_dark_skeleton_skill
execute as @s[tag=grudgeful_evil_skeleton] run function mob:mob_skill/grudgeful_evil_skeleton_skill
execute as @s[tag=poison_zombie] run function mob:mob_skill/poison_zombie_skill
execute as @s[tag=evil_ghost] run function mob:mob_skill/ghost
execute as @s[tag=skull_thrower] run scoreboard players remove @s skull_thrower_cd 1
execute as @s[tag=skull] unless score @s skull_change_time matches ..0 run scoreboard players remove @s skull_change_time 1
execute as @s[tag=skull] if score @s skull_change_time matches ..0 run function mob:mob_skill/skull
execute as @s[type=arrow,nbt={HasBeenShot:false}] run function mob:entity_ticks/arrow
execute as @s[type=arrow,nbt={pickup:0b,inGround:true}] run kill @s
execute as @s[predicate=mob:summon/ghost] run function mob:summon_mob/ghost
execute as @s[tag=have_not_set_body_limit] run scoreboard players set @s stiff.bodylimit.Max 1000
tag @s[tag=have_not_set_body_limit] remove have_not_set_body_limit