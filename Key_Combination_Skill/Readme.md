# 組合鍵技能
* ver.0.5
update 250225


* ｛舊版｝
下列武器帶有標籤(tag){Tags:["KCS.trigger"]}時
[劍、弓、斧(ing)、弩(ing)]

* ｛新版｝
物品帶有下列nbt
```javascrpit
components.custom_data{KCS:{trigger:true}}
```
* KCS資料包含
```javascript
{trigger:true,type:"sword",class:"normal"}
//type為武器類型，class為技能種類
```
* 類別
<table>
	<tr>
		<td>名稱</td>
  		<td>類型</td>
	</tr>
 	<tr>
  		<td>{type:""}</td>
                <td>"sword"、"bow"、"axe"、"pickaxe"、"shovel"</td>
        </tr>
        <tr>
                <td>{class:""}</td>
                <td>"normal"、"iron_blood(sword)"</td>
        </tr>
</table>

放置副手進入架式
## 架式
* 舊版
```
進入狀態後開始偵測左右鍵，並記錄
偵測三次直接施放技能，其中左右鍵可交錯
施放後偵測工具欄位1是否有物品，如無直接覆蓋至其，有則成為掉落物快速進入背包
請注意，當下背包為滿時，可能無法撿起
若未完成施放直接F即可退出狀態
施法會依照既能增加不等得僵直，降低釋放頻率，並讓玩家注意對僵直的操控
(舊版保留部分功能)
```
* 新版
```
歸還物品的不分進行改良，進入架式時原儲存格將被系統物品【施法中...】佔用，
結束時偵測佔用格是否正常，如是正常歸還，如否則清除系統物品，並原地生成物品歸還
```

### 配方表
* 劍
<table>
	<tr>
		<td>配方</td>
		<td>名稱</td>
		<td>描述</td>
		<td>數值</td>
	</tr>
	<tr>
		<td>LLL</td>
		<td>穿刺</td>
		<td>對前方直線6-7格內，至多三名敵人造成弱攻擊，並賦予破甲II/5秒</td>
		<td>(ATK*0.8+4.0)<br/>
			僵直24~28</td>
	</tr>
 	<tr>
		<td>RRR</td>
		<td>水平斬</td>
		<td>對前方半徑為3、160的扇形內的敵人造成弱攻擊</td>
		<td>(ATK*0.4+2.0)<br/>
			僵直20~24</td>
	</tr>
	<tr>
		<td>LRR</td>
		<td>突進</td>
		<td>向前突進2~3格距離，對路徑敵人造成多段弱攻擊，並賦予緩速II/3秒</td>
		<td>(ATK?)<br/>
			僵直32~36</td>
	</tr>
	<tr>
		<td>RLL</td>
		<td>上挑</td>
		<td>對前方直線5格內，至多3名敵人造成弱攻擊，並擊飛該敵人</td>
		<td>(ATK?)<br/>
			僵直20~24</td>
	</tr>		
</table>

* 弓
<table>
	<tr>
		<td>配方</td>
		<td>名稱</td>
		<td>描述</td>
		<td>數值</td>
	</tr>
	<tr>
		<td>LLL</td>
		<td>穿甲箭</td>
		<td>下一發箭矢可穿透3名敵人，並賦予首位命中敵人破甲III/8秒</td>
		<td>(ATK?)<br/>
			僵直12~16</td>
	</tr>
 	<tr>
		<td>RRR</td>
		<td>散射</td>
		<td>快速射出3發箭矢，並消耗等量箭矢</td>
		<td>(ATK?)<br/>
			僵直20~24</td>
	</tr>
	<tr>
		<td>LLR</td>
		<td>狙擊</td>
		<td>下一發箭矢無視重力且逐漸加速，越遠造成傷害越高，造成強攻擊</td>
		<td>(ATK?)<br/>
			僵直36~40</td>
	</tr>
	<tr>
		<td>RRL</td>
		<td>箭雨</td>
		<td>下一發箭矢會額外消耗5個箭矢，並對落地點持續2秒的3*3箭雨，如命中敵人則箭雨跟隨敵人</td>
		<td>(ATK?)<br/>
			僵直28~32</td>
	</tr>		
</table>

## 更新
<table>
	<tr>
		<td>版本</td>
		<td>日期</td>
		<td>內容</td>
	</tr>
	<tr>
		<td>0.5</td>
  		<td>2025/02/25</td>
    		<td>升級至1.21.4</td>
	</tr>
 	<tr>
  		<td>0.4</td>
    		<td>(missing)</td>
      		<td>
			* 新增：斧、鎬、鏟 
				_配方自己摸_(懶<br/>
			* 調整：劍
				上挑：固定垂直
		</td>
	</tr>
</table>

0.3.2

	調整：弓、劍
		弓：技能
			麒麟臂：刪除
			狙擊：新增並取代麒麟臂
			箭雨：將不再限制數量
			散射：角度從120降至90
		劍：技能
			水平斬：鎖定角度，將不再隨玩家上下視角改變位置

0.3.1

	小修：挑整僵直增加幅度，並修復部分BUG

0.3

	新增：弓

