INCLUDE sences.ink
INCLUDE variables.ink
INCLUDE line1.ink
INCLUDE line2.ink
INCLUDE line3.ink





# author: Gerard

十条盟约#CLASS: caption_title
【一】在游玩过程中关闭页面的视为败北。
【二】所有选项都会导致不同结果，一旦选择无法撤回。
【三】在不违反【二】的情况下，选择的顺序不受限制。
【四】除有提示外，不保存游戏进度。
【五】使用隐身模式或清空浏览器缓存的视同败北
【六】举凡“向盟约宣誓”的规则绝对要遵守。
【七】多人游戏应指定全权代理人。
【八】游戏当中若有不正当行为，一旦败露视同败北。
【九】以作者之名宣布，以上各条皆为不变的规则。
【十】大家一起和平地玩吧!!
* [向盟约宣誓]

- 提示#CLASS: caption_title

▶ 游山西村之颔。
▶ 遵循愚者的指示，警惕魔术师的倒转，谨记命运之轮的教诲，终会到达世界的正面。
▶ 神是博爱的，故最终那日到来时，人人皆会得到好的救赎。
▶ 研究人员应注意自己行进的路线，以免走向意外的地方——尽管每一条路都通向某个地方。
* [我知道了！]


- #CLEAR

这里是开头的场景描述 

你决定？
* “好好规划，去大玩一通[？”]！”
->line1->
* “和大家一起过就行了[？”]！”
“那我们先导出逛逛再做决定吧”

- 

*[第二天]

- 第二天，974在商场大门前会和了，每个人的打扮都各有特色，让人眼前一亮。

- (shop_loop)
{cloth and food and shop and film: ->dinner}
接下来：
* 去买衣服[？]！
->cloth->shop_loop
* 去吃日料[？]！
->food->shop_loop
* 逛逛商场[？]！
->shop->shop_loop
* 去看电影[？]！
->film->shop_loop

= cloth
买衣服剧情
->->
= food
日料店剧情
->->
= shop
商店剧情
->->
= film
电影剧情
->->

= dinner
“那我们去哪吃？”
“去外面吃也不错”
“我家里还有挺多准备好的事物诶~” 卡欧斯的声音从一旁传来
在外面吃还是回家吃？
“那阿良来决定吧！”
* “回去一起吃火锅吧！”
->line2->
*  “在外面吃顿好的！”
->line3->

- ->finall