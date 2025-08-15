

execute store result score ToDH.Boss.subordinate.Count Math run execute if entity @e[tag=enemy,tag=!boss]

execute if score ToDH.Boss.subordinate.Count Math matches 17.. run kill @n[tag=enemy,tag=!boss]

execute store result score ToDH.Boss.subordinate.Count Math run execute if entity @e[tag=enemy,tag=!boss]

execute if score ToDH.Boss.subordinate.Count Math matches 17.. run function orc:main/manager/aj/lolo/clear
