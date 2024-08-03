execute unless score @s keep_inventory_hotbar matches 2.. run item replace entity @s container.0 with air
execute unless score @s keep_inventory_hotbar matches 3.. run item replace entity @s container.1 with air
execute unless score @s keep_inventory_hotbar matches 4.. run item replace entity @s container.2 with air
execute unless score @s keep_inventory_hotbar matches 5.. run item replace entity @s container.3 with air
execute unless score @s keep_inventory_hotbar matches 6.. run item replace entity @s container.4 with air
execute unless score @s keep_inventory_hotbar matches 7.. run item replace entity @s container.5 with air
execute unless score @s keep_inventory_hotbar matches 8.. run item replace entity @s container.6 with air
execute unless score @s keep_inventory_hotbar matches 9.. run item replace entity @s container.7 with air
execute unless score @s keep_inventory_hotbar matches 10.. run item replace entity @s container.8 with air
execute unless score @s keep_inventory_hotbar matches 1.. run item replace entity @s weapon.offhand with air
execute unless score @s keep_inventory_armor_head matches 1 run item replace entity @s armor.head with air
execute unless score @s keep_inventory_armor_chest matches 1 run item replace entity @s armor.chest with air
execute unless score @s keep_inventory_armor_legs matches 1 run item replace entity @s armor.legs with air
execute unless score @s keep_inventory_armor_feet matches 1 run item replace entity @s armor.feet with air
execute unless score @s keep_inventory_talisman matches 1 run item replace entity @s container.9 with air
execute unless score @s keep_inventory_talisman matches 1 run item replace entity @s container.18 with air
execute unless score @s keep_inventory_talisman matches 1 run item replace entity @s container.27 with air

item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air
item replace entity @s container.13 with air
item replace entity @s container.14 with air
item replace entity @s container.15 with air
item replace entity @s container.16 with air
item replace entity @s container.17 with air
item replace entity @s container.19 with air
item replace entity @s container.20 with air
item replace entity @s container.21 with air
item replace entity @s container.22 with air
item replace entity @s container.23 with air
item replace entity @s container.24 with air
item replace entity @s container.25 with air
item replace entity @s container.26 with air
item replace entity @s container.28 with air
item replace entity @s container.29 with air
item replace entity @s container.30 with air
item replace entity @s container.31 with air
item replace entity @s container.32 with air
item replace entity @s container.33 with air
item replace entity @s container.34 with air
item replace entity @s container.35 with air
item replace entity @s container.36 with air

scoreboard players set floor_0_lock floor_lock 0
scoreboard players set floor_1_lock floor_lock 0
scoreboard players set floor_2_lock floor_lock 0
scoreboard players set floor_3_lock floor_lock 0
scoreboard players set floor_3_5_lock floor_lock 0
scoreboard players set floor_4_lock floor_lock 0
scoreboard players set floor_5_lock floor_lock 0
scoreboard players set floor_6_lock floor_lock 0
scoreboard players set floor_6_5_lock floor_lock 0
scoreboard players set floor_7_lock floor_lock 0
scoreboard players set floor_8_lock floor_lock 0
scoreboard players set floor_9_lock floor_lock 0
scoreboard players set floor_9_5_lock floor_lock 0
scoreboard players set floor_10_lock floor_lock 0

execute as @s store result storage mob:function soul_upgrade.attack_damage float 0.01 run scoreboard players get @s attack_damage
execute as @s store result storage mob:function soul_upgrade.max_health float 0.01 run scoreboard players get @s max_health
execute as @s run function mob:dragon_pavilion/soul_upgrade/set_max_health with storage mob:function soul_upgrade

effect give @s regeneration 5 10
effect give @s instant_health 1 255
tp @s @e[type=marker,limit=1,tag=dragon_pavilion] 
advancement revoke @s only mob:stepping_on_bedrock
execute if score @s triggered_dragon_pavilion matches 1 run tag @s add in_dragon_pavilion
execute if score @s triggered_dragon_pavilion matches 1 run function mob:dragon_pavilion/dragon_pavilion_awake
scoreboard players set @s triggered_dragon_pavilion 1

execute as @a[tag=trigger_dragon_pavilion] run scoreboard players set @e[tag=homunculus] plot_progress 22
execute as @a[tag=trigger_dragon_pavilion] run scoreboard players set @e[tag=homunculus] plot_type 0
tag @a[tag=trigger_dragon_pavilion] remove trigger_dragon_pavilion