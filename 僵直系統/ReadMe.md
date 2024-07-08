用來搞玩家的同時對玩家與怪物都新增僵直
用來增加戰鬥的挑戰性
並且善用僵直使出各種戰術

僵直包 v0.4
開始請先打 /function stiff:main/start/setup  用來初始化數值

v0.4：

    1.現在dodge可以無視一般攻擊造成的僵直
      -持續傷害在dodge仍造成僵直
      -dodge途中遭受強攻擊將獲得與抵擋同等僵直
v0.3.1：

    1.現在(只能)由玩家對怪物使用強攻擊可以增加50.0-75.0的僵直
      -damage @e[tag=enemy,limit=1] 1 stiff:hard_damage by @s
      -此指令可對怪物造成來源為玩家自身的強攻擊
      -如果怪物持盾且附帶可抵擋nbt則強攻擊轉微弱攻擊
v0.3：

    1.新增對怪物的僵直
      -但需先設置怪物的 stiff.bodylimit.Max 值
      -且怪物需帶有標籤 Tags:["enemy"]
    
    2.現在持續傷害(中毒、凋零、燃燒)仍會造成恢復恢復
      -因為脫戰恢復速度的太快，持續傷害在此情況下毫無影響
v0.2.1：

    更改彈性基礎值
     -2.0 >> 4.0
    更改僵硬恢復固定值
     -3.0 >> 1.0
v0.2：

1.新增對強攻擊Block的偵測
  -強攻擊將可以被盾牌阻擋
  -阻擋將免疫傷害，但仍增加僵直
  -增加值為50.0~75.0 

2.可調整值：
    name = "身體極限最大值(僵直)"
    board = "stiff.bodylimit.Max"
    description 
    影響承受僵直的最大值與僵硬後的恢復速度
    
    
    name = "身體韌性"
    board = "stiff.toughness"
    description
    影響受到的僵直幅度，與受值成反比
    公式：
     stiff.bodylimit.add = new add
     stiff.toughness = new tn
    
    stiff.bodylimit += add^2 / ( add + tn )
    
    
    name = "身體彈性"
    board = "stiff.resilience"
    description
    影響僵直回復速度與僵硬後的恢復速度
    
    公式(每秒恢復)：
    //初始值為每秒恢復，除以20唯每刻恢復//
    stiff.resilience = 20 //初始值2.0//
    
    //換算每刻恢復量，方便系統計算 //
    tick = 20
    stiff.bodylimit.regen = stiff.resilience / tick
    
    //如果距離上次受值超過5秒(100tick)，則恢復速度乘10 //
    if ( BattleTime >= 100 ){
    stiff.bodylimit.regen * 10
    }
    
    公式(僵硬恢復)：
    //遭受強攻擊函數//
    function stiff:main/do/damage/hard
    
    stiff.bodylimit = new limit
    
    if( limit > 0 ){
    //僵直固定每刻減少3.0外加身體彈性值(基礎2.0)，共5.0每刻100.0每秒//
    limit -= 30 + stiff.resilience

