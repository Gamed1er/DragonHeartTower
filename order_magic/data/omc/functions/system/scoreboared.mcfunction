
scoreboard objectives add OMC.Player.ID dummy
scoreboard objectives add OMC.Player.check.drop custom:drop
scoreboard objectives add OMC.Player.Mana.Strength dummy
scoreboard objectives add OMC.Player.Mana.Points dummy
scoreboard objectives add OMC.Player.Mana.Points.display dummy
scoreboard objectives add OMC.Player.Mana.Points.display.d dummy
scoreboard objectives add OMC.Player.Mana.Points.Max dummy
scoreboard objectives add OMC.Player.Mana.Points.Max.display dummy
scoreboard objectives add OMC.Player.Mana.Points.Regen dummy


scoreboard objectives add OMC.Skill.ID dummy
scoreboard objectives add OMC.Skill.ID.Limit dummy
scoreboard objectives add OMC.Skill.ID.Count dummy

scoreboard objectives add OMC.storage.reg dummy
scoreboard objectives add OMC.storage.hotbar.slot dummy

scoreboard objectives add OMC.vector.Pos.X dummy
scoreboard objectives add OMC.vector.Pos.Y dummy
scoreboard objectives add OMC.vector.Pos.Z dummy

scoreboard objectives add Math dummy



# 100.0
scoreboard players set @a OMC.Player.Mana.Points.Max 1000
# 0.1/tick
scoreboard players set @a OMC.Player.Mana.Points.Regen 1
# 4.0
scoreboard players set @a OMC.Player.Mana.Strength 40 
scoreboard players set @a OMC.Skill.ID.Limit 2


scoreboard players set 10 Math 10
scoreboard players set 100 Math 100