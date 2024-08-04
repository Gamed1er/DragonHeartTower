

$execute as @s if predicate kcs:take_sword at @s run function kcs:main/skill/id/sword/$(ID)
$execute as @s if predicate kcs:take_bow at @s run function kcs:main/skill/id/bow/$(ID)
$execute as @s if predicate kcs:take_axe at @s run function kcs:main/skill/id/axe/$(ID)
$execute as @s if predicate kcs:take_pickaxe at @s run function kcs:main/skill/id/pickaxe/$(ID)
$execute as @s if predicate kcs:take_shovel at @s run function kcs:main/skill/id/shovel/$(ID)

scoreboard players reset @s KCS.Skill.ID
scoreboard players reset @s KCS.Skill.ID.Count