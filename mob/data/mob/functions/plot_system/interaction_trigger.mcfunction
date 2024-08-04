
execute as @s at @s at @e[tag=character,sort=nearest,limit=1] run tp @a ^ ^-0.5 ^-2
execute as @s at @s at @e[tag=character,sort=nearest,limit=1] as @a at @s run tp @s ~ ~ ~ facing entity @e[type=interaction,tag=plot,limit=1,sort=nearest] feet
execute as @s at @s at @e[tag=character,sort=nearest,limit=1] as @a at @s run tp @s ~ ~ ~ ~ ~40
effect give @a slowness 1 3 true
gamemode spectator @a[gamemode=!creative]
schedule function mob:plot_system/gamemode_changer 2t replace

execute unless score @s plot_timer matches 0..80 run scoreboard players set @s plot_timer 0
execute if score @s plot_timer matches 1.. run scoreboard players remove @s plot_timer 1
execute unless score @s plot_timer matches 0 run return fail
#execute if entity @s[tag=test] if score @s plot_timer matches 0 run function mob:plot_system/characters/test/main
execute if entity @s[tag=tutor] if score @s plot_timer matches 0 run function mob:plot_system/characters/tutor/main
execute if entity @s[tag=opera] if score @s plot_timer matches 0 run function mob:plot_system/characters/opera/main
execute if entity @s[tag=spacy] if score @s plot_timer matches 0 run function mob:plot_system/characters/spacy/main
execute if entity @s[tag=tokesor] if score @s plot_timer matches 0 run function mob:plot_system/characters/tokesor/main
execute if entity @s[tag=madeya] if score @s plot_timer matches 0 run function mob:plot_system/characters/madeya/main
execute if score @s[nbt={interaction:{}}] plot_type matches 10 run tellraw @a [{"italic": false,"bold": true,"color": "green","text": "["},{"italic": false,"bold": false,"color": "green","selector":"@s","hoverEvent": {"action": "show_text","contents": [{"text":""}]}},{"italic": false,"bold": true,"color": "green","text": "]"},{"italic": false,"bold": true,"color": "white","text": "："},{"italic": false,"bold": false,"color": "white","translate": "...。"}]
execute if score @s[nbt={interaction:{}}] plot_type matches 10 run data remove entity @s interaction
#plot type: 0 = 