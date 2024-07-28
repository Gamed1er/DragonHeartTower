execute as @a[tag=!set_health] store result score @s player_max_health run attribute @s generic.max_health get
execute as @a[tag=set_health] run function main:player_reset_health

effect give @e[scores={attack_block=1..}] resistance 1 255
effect clear @e[nbt={HurtTime:10s},scores={attack_block=1..}] resistance

execute as @e store result score @s this_tick_health run data get entity @s Health
execute as @e run scoreboard players operation @s delta_health = @s this_tick_health
execute as @e run scoreboard players operation @s delta_health -= @s last_tick_health
execute at @e[scores={break_armor_timer=1..},tag=!break_armor] run playsound item.shield.break block @a ~ ~ ~ 1 1 1.0
tag @e[scores={break_armor_timer=1..}] add break_armor
tag @e[scores={break_armor_timer=0}] remove break_armor

tag @e[tag=break_armor,tag=!respawning,scores={delta_health=..0}] add damage_tick
tag @e[tag=respawning,scores={this_tick_health=1..}] remove respawning

execute at @e[nbt={HurtTime:10s},scores={attack_block=1..}] run playsound block.anvil.place block @a ~ ~ ~ 1 1 1.0
scoreboard players remove @e[nbt={HurtTime:10s},scores={attack_block=1..}] attack_block 1

execute as @e[tag=damage_tick] run scoreboard players operation @s this_tick_health += @s delta_health
execute as @e[tag=damage_tick] run scoreboard players operation @s this_tick_health += @s delta_health
tag @e[scores={this_tick_health=..0},tag=damage_tick] add already_died
execute as @e[tag=already_died] run scoreboard players set @s this_tick_health 1
execute as @e[tag=damage_tick,type=!player] store result entity @s Health float 1.0 run scoreboard players get @s this_tick_health
execute as @a[tag=damage_tick] run function main:player_break_armor_set_health

execute as @e[tag=already_died] at @s on attacker run damage @e[tag=already_died,limit=1,sort=nearest] 5 generic by @s
kill @e[tag=already_died,tag=!respawning]
scoreboard players set @e[tag=already_died] break_armor_timer 0
scoreboard players set @e[tag=already_died] last_tick_health 20
scoreboard players set @e[tag=already_died] delta_health 0
tag @a[tag=already_died] add respawning

execute at @e[tag=break_armor] run particle item iron_ingot ~ ~ ~ 0.0 0.0 0.0 0.5 5 force @a[distance=..10]
execute as @e[tag=break_armor] run scoreboard players remove @s break_armor_timer 1


execute as @e store result score @s last_tick_health run data get entity @s Health
scoreboard players set @e[tag=already_died] last_tick_health 20

tag @e remove blocked_damage
tag @e remove already_died
tag @e remove damage_tick