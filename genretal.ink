===genretal===
红发大波浪：千春千春，我只要和大家在一起就满足了！不用刻意做规划啦！！#CHAT: kiyora
  土味女水友：那也行吧，我看明天好像天气不错，要不我们去逛该？#CHAT:chiharu
  小心二次元：好啊，而且最近有新电影上映了，正好还能看个电影。#CHAT:chaos
  NPC：那我们明天在商场门口集合吧！#CHAT: star
  红发大波浪：那就说好了哦 到时不见不散#CHAT: kiyora
比起被安排好的行程，她更喜欢随心所欲地去玩，谁也不知道下一步会去什么地方，这种未知的可能性令人着迷。
而且无论在什么地方，做什么事情，只要和他们在一起，就是最棒的了。

第二天 #CLASS: caption_title

下午两点的时候，四人在商场门口碰面了，难得可以看见大家平时生活中的打扮，感觉有点奇妙。
“我想要去买点好看的衣服，你们呢？” 千春看向大家。
素星立刻赞同了千春的意见，“好啊好啊，我刚好也想买一顶新帽子，我和你一起去吧。”
卡欧斯看起来对买衣服并没有什么兴趣，“那我先去排队买下午场的电影票咯，等买好了再去找你们。”
“阿良想买啥吗？” 千春站在清良的旁边拍着她的肩膀。
“诶？我吗？等我想想……”

~temp TURN = 0
- (shop_loop)
{bridge: ->dinner}
{cloth or book or food or film: 
  {~千春|素星|{chaos:卡欧斯}}{~问道|提出了一个很关键的问题|看了看四周，然后问道} “接下来去哪呢？”
}

* [去买衣服？]
  ~TURN+=1
  “不如我们去买衣服吧！” 清良看了看周围后做出了决定。
  ->cloth->shop_loop
* [逛逛商场？]
  ~TURN+=1
  “我想去逛一下商场！”
  ->book->shop_loop
* {book or cloth or food}[去看电影？]
  ~TURN+=1
  “嗯……去看电影吧。”
  ->film->shop_loop
* {film} [再去逛逛商场？]
  ~TURN += 1
  ->bridge->shop_loop
* {film} [去吃晚餐吧！]
  ~TURN += 1
  ->dinner
// * [去吃日料？]
//   ~TURN+=1
//   “不如我们去吃日料吧！”
//   ->food->shop_loop

- (dinner)
但是千春似乎对晚饭更加感兴趣，“是不是快饭点了，晚饭咋解决啊朋友们。” 
“逛了一天好像有点饿了……” NPC赞同了大侦探的观点。
“要去我家吃自炊的火锅吗？我那备了不少食材哦！”卡欧斯再次露出了自豪的神情，“不过要是想在外面吃大餐也可以。”
“阿良你来挑一个吧？ ” 千春将决定权传递给了清良。
* [回去一起吃火锅吧！]
  ->line2->
*  [在外面吃顿好的！]
  ->line3->

- ->->

= cloth
清良、千春和素星三人来到了某名牌服装店，琳琅满目的商品，够让她们挑一整天了。

“好多好看的衣服啊！完了完了，这下要选择困难了。” 清良的眼睛像是放出了光似的。
“确实啊，感觉会被服装店困住呢……” 素星在一边点着头。
“反正本来就是逛该的，放开了看呗。” 千春顺手拿过旁边的一件衣服 “正好，阿良来帮我试试这件！”
“让我看看，哇！这件有点好看。” 清良接过千春手中的衣服之后，转头看了一下素星，“素素手里那件也好看！”

在服装店里，他们沉迷了许久，阿良被拖着试穿了很多好看的衣服。虽然千春说是自己想买衣服，但她总是让清良来代替她试穿。
而素星就在店里的一角，仔细挑选着各式各样的帽子，最后还是选择了一款可爱的粉色鸭舌帽。
* [照镜子]
-
“真是人靠衣装，原来我可以这么可爱吗？！”
千春在一旁看着自恋的清良，“呃……妹妹你自我感觉真好。”
素星也在一边看着，“今天阿良是主角嘛，可爱才是正义！”
“就是就是！” 说完清良就向千春做了个鬼脸
“行行行，来，再试试这件。”
素星趁机递了一顶帽子过去，“这个帽子也试试！”
...
最后试穿都穿得累了的三人，各有所获。
{not chaos: ->chaos->}
走出服装店之后，<>
->->

= book
一行{chaos:四|三}人经过了一家书店，看到了橱窗上陈列着的书本，封面上的图片吸引着人们的眼睛，让人不禁好奇里面到底会是什么样的内容。
阿良下意识地停在了那家书店外面。
一边的{~千春|{chaos:卡欧斯}|素星}察觉到清良的样子，问 “要进去看看吗？”
* “还是算了”[] 清良摇了摇头，走开了。
  ->shop_loop
* “好呀好呀！” [] 
  ->in
- (in)
于是他们走进了那家书店，到处看看，或许看到自己感兴趣的书本，便会翻开来阅读。
“阿良果然很喜欢看书啊，不如我们就在这里先休息一下怎么样？”小千见到阿良这幅模样，知道她肯定会看好一阵子才舍得离开。
{chaos:: “我没问题的，而且距离电影开场还有很多时间，可以慢慢来。”卡欧斯说着自己找了个小凳子坐下，翻开一本书来看。}
“我，我也没问题，这里的书很多我也想看。”素星也对书店里的书籍很感兴趣的样子。
于是他们就在书店里度过了一段时间，{cloth: 眼看着距离电影开场还有半个小时，}他们已经在店门外准备好离开了，阿良却还津津有味地看着书，叫她都没有反应。
{not chaos: ->chaos->}
“阿良我们快走吧，{cloth:不然就错过电影的开场片头了！|你难道打算一下午都在这吗？}” 小千拉住阿良的手，硬是拖着她走出了门外。
“呜呜呜，我还要看嘛，再等一会不可以吗？”阿良依依不舍地看着那本读到一半的小说，直到她被拖走到书店外面为止。
“我说不可以就不可以，下次来这里看个够好不好。”小千觉得阿良仿佛一个小孩子，得哄她才会跟着走。
于是，三人还拖着一个阿良离开了书店。
->->

= bridge

正好是黄昏前的时分，此时的风景无论哪方面都很棒，卡欧斯提议去这栋高楼顶层的玻璃大桥看看，也算是个著名景点，许多人都会到那里去拍照打卡。
来到了顶层，他们见到了所谓的的玻璃大桥，一直连到对面的高楼上，有好多人在桥上走来走去，甚至能清楚看见桥下络绎不绝的车流。
“啊这，啊这，你们先上吧，这我有点害怕，我得先做好心理准备。”阿良一看到那么高的景象，双脚就不自觉软了，有点挪不动的感觉。
“我我我也是，卡欧斯你先上，我们等下就跟上来。”小千手握着栏杆，战战兢兢把脚伸过去，看到脚下的透明桥底又赶紧缩了回去。
“我有点恐高。” 素星也表示自己不敢上去。
“问号，居然都恐高吗？既然都来了景点，不在这里拍张照吗？”卡欧斯大大咧咧地走上玻璃桥，对着扑面而来的狂风张开双手。
不得不说，这种强风吹拂的感觉真的舒服。
反正都来了，就这么离开也挺可惜的，而且这么多人在上面走动，不至于会掉下去吧。
这么想着的她们，终于勇敢地踏出第一步，然后扶着栏杆一步步地挪到了桥中央，但还是不敢松手。
“卡欧斯，你负责拍照，我们都腾不出手来了。”小千把相机递给了卡欧斯，相机离手后又迅速扶住栏杆。
“草，你们别那么害怕啊，这里很安全的。”因为三个女孩都不敢离开栏杆的缘故，卡欧斯只好站在她们的左手边，努力寻找一个适合的角度。
最后他们四人还是走完了玻璃大桥，还拍到了几张好看的合照，三个女孩的表情都很有趣，收获不错。

->->

= film
“好，都安排好了，也差不多可以准备入场看电影了。” 卡欧斯提着不知道从哪里变出来的袋子回答。
* “谢谢你卡欧斯！你真是个好人！”[] 清良开心地回答道。
-
“谢谢你卡欧斯！你真是个好人！” 素星和千春立刻复读跟上。
卡欧斯一时间陷入了尴尬之中，“呃……我真是谢谢你们了。”
“那走吧！去看电影咯！” 千春拉着清良和素星向着电影院的方向走。
“哦对了。” 卡欧斯突然说道。
走在前面的三个女生同时回过头来 “嗯？”
“阿良，这个给你。” 卡欧斯递给阿良一个小袋子。
“是昨晚我们挑的那个吗？” 素星看了一眼袋子，问道。
“嗯，我刚才顺便去取来了。生日快乐，阿良。”
“生日快乐！” 素星和千春立刻复读跟上。
“呜呜呜！你们特意给我准备的吗！谢谢你们！” 清良感到鼻头有点发酸，“我爱你们呜呜呜。”
*[接过袋子]
-
清良接过了卡欧斯手中的袋子。
“哎呀，小事啦。走了走了，看电影去。” 千春摆了摆手，拉着清良和素星继续向着电影院走。

走了不一会儿，电影院就到了
* “我们进去吧。”[] 这次换着清良拉着千春和素星走了。
-
你问卡欧斯？他当然是自己走。不然明天就被悬赏手脚了，这一点他自己十分清楚。

<em>请自行脑补电影情节</em>

看完电影后，四人心情舒畅地走出电影院，还在回味着电影中剧情起伏的余韵。

“真好看！我好喜欢这部电影！” 清良发表了她的感想
卡欧斯露出了自豪的神情，“我推荐的电影，不错吧？”
“确实好看，中间那段太感人了。” 千春发表了她的观点。
一旁的素星也表示赞同，”那段吗？我差点没憋住！“
看来中间那段确实感人，清良也表示了赞同 “对对对，我也是！”
“下次再一起来看电影吧？” 卡欧斯问道
清良的眼里再一次放出了光，“可以有！”
->->

= food
// 废弃支线
  这家日料店出乎意料地好吃呢，不愧是卡欧斯推荐的地方，而且氛围也很棒。
  渴了
  * [四处看看有没有水]
    {~->found_water|->not_found}
  * [问一下{~千春|卡欧斯|素星}]
    -> found_water
  * [用魔法整杯水吧！]
    ->not_found
- (not_found)
清良向四周望了望，却还是找不到水
她思考了一下，把一旁的冰块都装进了杯子
“System call generate thermal element from element ball shape”
“System call generate stone element from element hollow ball shape out side thermal.”
一个接一个滚烫的小石头出现在杯子里面，冰块快速从固体变成了冒着热气的液体。
做完这一切，清良抬起头来，发现周围的伙伴都在用奇怪的目光看着她。
* “干嘛？”
-
- (found_water)
“在这边有热水的续杯呀。”一旁的素星{not_found: 忍着笑，}指向了一个水龙头。
“啊…我还以为那个是洗手的呢。”清良尴尬地说。
{not_found:
  “我们没想到你这么傻啊，清良。”千春在一阵鹅叫后说道
  “干嘛？我第一次来这里啊？笑什么嘛。”
  “不不不，我们以为你会问问服务员的，结果你自己……竟然用魔法……哈哈哈哈哈哈……”
  清良看着某个已经变成了鹅的侦探，默默地喝了一口水
}
->->

= chaos
直到千春决定好去付款的时候，卡欧斯带着电影票过来了，而且他手上还提着一个小袋子，不知道里面装着什么。
“店员小姐，麻烦你把我们买的东西都寄送到这个地址，谢谢！” 卡欧斯对着店员说。
“是这个地址对吧，”店员把手中的纸条给卡欧斯看了一下，“请另外支付邮费哦。”
“对，需要支付邮费对吧，微信吧。”卡欧斯拿出了手机，打开了微信。
->->
