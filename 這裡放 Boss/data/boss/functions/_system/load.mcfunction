execute as @r run say BOSS 資源包已載入完畢

## 啟用 second
    # second 每 20t 執行一次，更省效能，適用於比較不用快速監測的東西
    schedule clear boss:_system/second
    function boss:_system/second

## 擊殺所有已生成的 BOSS
    kill @e[tag = boss]
    kill @e[tag = boss_partner]


## 創建 ScoreBoard
    scoreboard objectives add ParticleTime dummy

##創建 Bossbar


##隱藏所有 Bossbar

