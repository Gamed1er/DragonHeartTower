240708 上傳

排列組合釋放魔法

排列組合魔法v0.1
目前大致完善
並無設計技能因此沒有法術可以施放
但是法術ID Manager的功能完善
可以正常呼叫ID
F魔杖至副手進入施法狀態

魔量(OMC.Player.Mana.Points)與回魔(OMC.Player.Mana.Points.Regen)
功能皆正常
但並無設計GUI
因此請用
/scoreboard player get OMC.Player.Mana.Points
查看當前魔量

可以Q出法杖釋放小魔球，消耗3.0魔量
魔杖的定義為物品Tags帶有["OMC.trigger"]皆為魔杖
example
/give @s stick{Tags:["OMC.trigger"]}


v0.2

新增魔法[大魔彈](ID:11)
投入(Q)兩個無屬性及釋放