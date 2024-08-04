
$summon item ~ ~.3 ~ {Item:{id:"minecraft:stone_button",Count:1},PickupDelay:-1,Invulnerable:1b,NoGravity:0b,Silent:1b,Tags:["ToDH.dodge.M"],Motion:[$(X),$(Y),$(Z)]}
playsound minecraft:block.azalea.break ambient @a[distance=..12] ~ ~ ~ 5 0.1
playsound minecraft:ui.stonecutter.take_result ambient @a[distance=..12] ~ ~ ~ 0.5 0.75
ride @s mount @e[tag=ToDH.dodge.M,limit=1,sort=nearest]
execute at @s positioned ~ ~.5 ~ run function dodge:do/particle with storage todh:dodge temp.ParticlePos
function dodge:do/subparticle
scoreboard players reset @s dodgeTick
tag @s add dodge
advancement revoke @s only dodge:clear
effect give @s resistance 1 2 true
