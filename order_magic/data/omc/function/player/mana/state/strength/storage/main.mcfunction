## /data modify storage omc:function Players.PC1.Mana[].strength.Extra append value {name:"test",count:0}
## /execute if data storage omc:function Players.PC1.Mana[].strength.Extra[{name:"test"}]


$execute store result score OMC.State.reg.limit Math run data get storage omc:function Players.PC$(ID).Mana[].Strength.Extra
execute store result storage omc:function reg.count int 1 run scoreboard players set OMC.State.reg.count Math 0

execute as @s run function omc:player/mana/state/strength/storage/circle with storage omc:function reg