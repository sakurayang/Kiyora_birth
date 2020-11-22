INCLUDE sences.ink
INCLUDE variables.ink
INCLUDE line1.ink
INCLUDE line2.ink
INCLUDE line3.ink
INCLUDE genretal.ink

# author: Gerard
<script>turnonlight()</script>
您是否在直播
*[是] 
~live=true
*[否] 
~live=false
-
十条盟约#CLASS: caption_title
【一】在游玩过程中关闭页面的视为败北。
【二】所有选项都会导致不同结果，一旦选择无法撤回。
【三】在不违反【二】的情况下，选择的顺序不受限制。
【四】除有提示外，不保存游戏进度。
【五】本作品剧情纯属虚构，不应过于代入。
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

阿良生日前夜，974的四人结束了直播正在QQ群内闲聊。
土味女水友：阿良，明天是你的生日吧？ #CHAT:chiharu
红发大波浪：对呀对呀！小千你是准备有什么表示吗？#CHAT:kiyora
土味女水友：那肯定是要跟你说生日快乐的啊！#CHAT:chiharu
红发大波浪：啊？就这？#CHAT: kiyora
土味女水友：那你想要啥哦？#CHAT: chiharu
NPC：不如我们一起出去玩吧？正好庆祝一下。#CHAT: star
小心二次元：好耶！#CHAT:chaos
* [“那我们去哪玩呢？”]
- 红发大波浪：那我们去哪玩呢？#CHAT: kiyora
小心二次元：KTV怎么样？#CHAT:chaos
红发大波浪：唱歌好难哦——还是算了吧？#CHAT: kiyora
土味女水友：去找前辈打游戏？#CHAT: chiharu
红发大波浪：平时一直在打游戏了，找点别的事做吧？#CHAT: kiyora
NPC：那……那……哎我也想不出。#CHAT: star
土味女水友：阿良要不你来决定吧！给个大方向也行，我来帮你安排。#CHAT: chiharu
红发大波浪：哇小千你好棒！让我想想哦……#CHAT: kiyora

* [好好规划去大玩一通？]
  红发大波浪：好好规划，去大玩一通！#CHAT: kiyora
  ->line1->
* [和大家一起过就行？]
  红发大波浪：千春千春，我只要和大家在一起就满足了！不用刻意做规划啦！！#CHAT: kiyora
  土味女水友：那也行吧，我看明天好像天气不错，要不我们去逛该？#CHAT:chiharu
  小心二次元：好啊，而且最近有新电影上映了，正好还能看个电影。#CHAT:chaos
  NPC：那我们明天在商场门口集合吧！#CHAT: star
  红发大波浪：那就说好了哦 到时不见不散#CHAT: kiyora

  ->genretal->

- ->finall
