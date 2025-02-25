

data modify entity @s Owner set from entity @p[tag=KCS.Players.arrow.Owner] UUID
data modify entity @s Motion set from entity @e[tag=KCS.marker.vector,limit=1] Pos
tag @s add KCS.arrow.nom
data modify entity @s pickup set value 1b