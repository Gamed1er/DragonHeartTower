## 創建 ScoreBoard
    scoreboard objectives add assassin dummy "幻蹤刺客．沁玲"
    scoreboard players set Health assassin 0
    scoreboard players set SkillCoolDown assassin 100
    scoreboard players set SkillChooser assassin -1

## 創建 BossBar
    bossbar add assassin [{"text":"幻蹤刺客．沁玲","color":"dark_gray","bold":true}]
    bossbar set assassin visible true
    bossbar set assassin color pink
    bossbar set assassin style notched_10
    bossbar set assassin players @a

## 創建 team
    team add assassin
    team modify assassin friendlyFire false

## 本體召喚
    execute unless entity @e[tag = assassin] run summon vindicator ~ ~ ~ {NoAI:true,Silent:1b,Health:250f,Tags:["boss","enemy","assassin"],CustomName:'{"text":"幻蹤刺客．沁玲","color":"dark_gray","bold":true}',Attributes:[{Name:generic.max_health,Base:250},{Name:generic.follow_range,Base:120},{Name:generic.attack_damage,Base:8}]}
    data modify entity @e[tag=assassin, limit=1] NoAI set value false
    execute store result bossbar assassin max run data get entity @e[tag = assassin, limit = 1] Health
    function boss:assassin/loop1
    team join assassin @e[tag = assassin]
