execute at @s[predicate=mob:hold_bow] if entity @a[distance=..4] run effect give @s slowness 2 2 false
execute at @s[predicate=mob:hold_bow] if entity @a[distance=..4] run item replace entity @s weapon.mainhand with iron_axe{AttributeModifiers:[{Amount:6,AttributeName:"minecraft:generic.attack_damage",UUID:[I;-56737819,14278143,-84421291,22172665],Slot:"mainhand",Operation:0},{Amount:-0.75,AttributeName:"minecraft:generic.attack_speed",UUID:[I;63476799,-68657122,34656409,40813788],Slot:"mainhand",Operation:1}],display:{Name:'{"italic": false,"bold": true,"text": "汙穢鐵斧"}'}}
execute at @s[predicate=mob:hold_iron_axe] if entity @a[distance=8..] run effect give @s slowness 2 2 false
execute at @s[predicate=mob:hold_iron_axe] if entity @a[distance=8..] run item replace entity @s weapon.mainhand with bow{AttributeModifiers:[{Amount:-0.1,AttributeName:"minecraft:generic.movement_speed",UUID:[I;-39601576,69078355,-70916623,-97074908],Slot:"mainhand",Operation:1}] ,display:{Name:'{"italic": false,"bold": true,"text": "腐敗短弓"}'}}
item replace entity @s[predicate=mob:hold_bow,predicate=!mob:offhand_hold_arrow] weapon.offhand with tipped_arrow{custom_potion_effects:[{id:"minecraft:blindness",amplifier:1,duration:60,show_particles:true}],CustomPotionColor:1925926}
item replace entity @s[predicate=mob:hold_iron_axe,predicate=mob:offhand_hold_arrow] weapon.offhand with air
execute unless score @s mob_varient = anger_dark_skeleton mob_varient run scoreboard players operation @s mob_varient = anger_dark_skeleton mob_varient