summon skeleton ~ ~ ~ {CustomName:'[{"bold": true,"italic": false, "translate":"ToDH.mob.skull_thrower","color": "red"}]',CustomNameVisible:true,Attributes:[{Name:"minecraft:generic.max_health",Base:10},{Name:"minecraft:generic.attack_damage",Base:6}],Health:10,HandItems:[{Count:1,id:"minecraft:bow",tag:{CustomModelData:1}},{}],HandDropChances:[0f,0f],Tags:[skull_thrower,enemy,have_not_set_body_limit],DeathLootTable:"mob:normal",PersistenceRequired:true}

execute as @e[type=skeleton,tag=skull_thrower,sort=nearest,limit=1] unless score @s mob_varient = skull_thrower mob_varient run scoreboard players operation @s mob_varient = skull_thrower mob_varient
function mob:floor_controller/mob_join_floor