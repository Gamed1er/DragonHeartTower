

$execute as @s at @s run summon minecraft:item ~ ~ ~ {Item:{Count:1,id:"$(id)",tag:$(nbt)},PickUpDelay:0}
execute as @s at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{Tags:["KCS.trigger"]}}}] run tp @s @p[tag=KCS.Players.standby]
