

$execute as @s if predicate kcs:take_sword at @s run function kcs:main/skill/id/sword/$(ID)

scoreboard players reset @s KCS.Skill.ID
scoreboard players reset @s KCS.Skill.ID.Count