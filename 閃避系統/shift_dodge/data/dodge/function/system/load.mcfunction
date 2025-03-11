
function dodge:setup/scoreboard
function dodge:setup/marker

tellraw @a ["",{"text":"Dodge包載入完成\n","color":"dark_purple"},{"text":"使用Dodge請接觸地面，\n並短案","color":"blue"},{"text":"[","color":"yellow"},{"keybind":"key.sneak","bold":true,"color":"yellow"},{"text":"]","color":"yellow"},{"text":"於2tick之內放開","color":"blue"},{"text":"，隨後根據自身位移方向做衝刺","color":"blue"},{"text":"\n因此如原地點按並不會衝刺，內置冷卻1.5秒","color":"blue"}]