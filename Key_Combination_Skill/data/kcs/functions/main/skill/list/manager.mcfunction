

$execute as @s if predicate kcs:take_sword at @s run function kcs:main/skill/id/sword/$(ID)
$execute as @s if predicate kcs:take_bow at @s run function kcs:main/skill/id/bow/$(ID)

scoreboard players reset @s KCS.Skill.ID
scoreboard players reset @s KCS.Skill.ID.Count