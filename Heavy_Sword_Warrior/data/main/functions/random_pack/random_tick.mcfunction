scoreboard players operation time var += 1 var


scoreboard players operation seed var += time var
scoreboard players operation seed var *= a var
scoreboard players operation seed var += c var
scoreboard players operation seed var %= m var

scoreboard players set random var 0
scoreboard players operation random var += seed var
scoreboard players operation random var %= 25 var

scoreboard players remove @e[type=zombie,tag=Heavy_Sword_Warrior] Heavy_Sword_Warrior_Timer 1
execute as @e[type=zombie,tag=Heavy_Sword_Warrior] if score @s Heavy_Sword_Warrior_Timer <= 0 var run scoreboard players set @s Heavy_Sword_Warrior_Timer 25 