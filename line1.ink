===line1===
红发大波浪：千春千春，我们明天一起去游乐园玩好不好！#CHAT:kiyora
土味女水友：行啊，你想玩啥？我们规划规划。#CHAT:chiharu
红发大波浪：过山车和旋转木马怎么样？#CHAT:kiyora
NPC：摩天轮呢？摩天轮也是必须的吧！#CHAT:star
小心二次元：鬼屋绝对不能少。#CHAT:chaos
红发大波浪：我还要吃游乐园特供儿童套餐！#CHAT:kiyora
土味女水友：行行行，我来安排，明天早上游乐园门口见。#CHAT:chiharu
红发大波浪：千春你真靠谱！爱你哦！#CHAT:kiyora
土味女水友：口区。#CHAT:chiharu

“果然还是想要好好计划一下游玩的行程！一年一度的生日，稍微认真对待一下也算是犒劳一下自己吧。”，清良放下手机，开心地想着。

第二天 #CLASS:caption_title

上午十点，游乐园门口。
清良发现了一只在看手机的野生千春，该怎么办呢？
* (hand)[挥着手跑过去打招呼]
  清良边跑边向千春挥着手，“千春千春，早~”
  千春同样挥着手，“早，我还以为你会很早到呢。”
* (back)[绕到背后吓她一跳]
  清良悄悄绕到了千春的背后，然后趁她不注意，拍了拍她的肩膀，“早！”
  千春吓得跳了起来，差点把手机丢了，“哇！吓死我了~为什么吓我嘛”
  “对不起对不起我错了啵啵么么啾咪啾咪捏。”
  千春翻了下白眼，“早你个大头鬼啦，我还以为你会很早到呢。”
* [捕捉！]
  你想太多了
  {~->back|->hand}
-
“哎呀，其实我昨晚太兴奋了，那个辗转反侧呐！就是睡不着！害得我今早差点起不来。”
“……你这是小学生出来秋游吗？”，千春的声音中透露着一丝笑意。
“这也是没办法的嘛！天知道我有多期待今天。”，清良摊了摊手，然后看了下周围，“对了，素素和卡西……哦不，卡欧斯呢？”
“阿星已经进去了，今天她给你准备了一点惊喜。你得在游乐园里找到她才能拿到哦。”
“哇！这是什么新奇的玩法？那我们得赶紧去找她。”，清良拉着千春跑向游乐园。
“别急别急慢慢走，没事的，边玩边找就行了。”，千春赶紧拉住了清良。
“那她一个人不要紧吗？”
“没事没事，这也是她的意思，今天你才是主角。” 千春不急不忙地说。
“啊~好嘛，那卡欧斯去哪了？”
“呃……我也不知道，电话也联系不上，八成是睡过去了吧。要不别管他了。”

~ temp TURN = 0
-(door_loop)
{wait:
  {shuffle:
    - 周围的游人来来往往，似乎只有她们两个是静止的<>
    - 游走着卖东西的小摊贩从她们面前经过了不知道多少次<>
    - 门口停着的车已经换了一批了<>
    - 一个倒立的魔术师从她们面前走了过去<>
    - 天上飞过了好几只鸟，飞向那又高又大的摩天轮<>
    - 过山车上的尖叫声已经过了不知道多少波了<>
  }，但卡欧斯还是没有出现
}

{TURN>=5:
    ->tired("找到卡欧斯")
}
+ (wait)[等一下卡欧斯？]
  ~ TURN += 1
  “{~我们等一下卡欧斯吧|卡欧斯怎么还没来啊……等一下吧|我们稍微等一下吧|等那么一下下吧}。”
  千春{~点了点头|点头说：“好吧”|看了下手表说：“可是不早了诶”}
  -> door_loop
* [不等了！]
  “啊！坏家伙，人家生日活动他竟然睡过头。不理他了了”，清良果断地抛弃了卡欧斯。
  “那我们进去吧。”千春一边说一边走向了游乐园。
  “嗯！出发！”，清良举起一只手，踏着六亲不认的步伐，向游乐园走了过去
  -> entry

- (entry)
~ TURN = 0
游乐园里面人山人海，无论是小贩的摊位还是游乐项目的前面都排成了一条长龙。

清良拉了千春的衣服，“呜啊！好多人！这样好难找素素啊……”
“确实，没想到周一也有这么多人。” 千春用手挡了挡太阳，“先玩起来吧，说不定等会儿就遇到了。”

- (play_loop)
  {rool_coaster or ghost_house or hourse: “我们接下来去哪呢？” 千春看着{~周围|地图|清良}问道}
+ {TURN<6 or lunch}[{rool_coaster: 再玩一遍}过山车]
  {rool_coaster: 
    “我们再去玩一遍过山车吧！”
  - else:
    “我们{not rool_coaster or not ghost_house or not hourse: 先}去玩过山车吧！”
  }
  ~ TURN+=1
  ->rool_coaster->play_loop
+ {TURN<6 or lunch}[{ghost_house: 再玩一遍}鬼屋]
  {ghost_house: 
    “我们再去玩一遍鬼屋吧！”
  - else:
    “我们{not rool_coaster or not ghost_house or not hourse: 先}去玩鬼屋吧！”
  }
  ~ TURN+=1
  ->ghost_house->play_loop
+ {TURN<6 or lunch}[{hourse:  再去一遍}旋转木马]
  {hourse: 
    “我们再去玩一遍旋转木马吧！”
  - else:
    “我们{not rool_coaster or not ghost_house or not hourse: 先}去玩旋转木马吧！”
  }
  ~ TURN+=1
  ->hourse->play_loop
* {TURN>=3 and not lunch}[去吃午餐]
  ->lunch
* {lunch}[去玩摩天轮吧]
  ->whell

- (lunch)
清良拉着千春，边走向餐厅边说，“呜啊！玩得我肚子都饿了，我们去吃饭吧？”
“嗯。我记得你想吃儿童套餐来着？”
“对对对，其实我馋那个很久了！” 清良感觉嘴边似乎有口水流下。
“那今天正好满足一下愿望呗。”
“好耶！”
来到餐厅，清良无视了其他人的目光，点了一份儿童套餐。
托盘上放着三个形状各不相同的盘子，放在中间的盘子是一个{live: 黑色的圆形，在左上和右上角各有一个略小的圆形|米奇头的形状}，里面放着螺旋状的意大利面，覆盖着一层厚厚的深棕色肉酱，其中点缀着一些南瓜和胡萝卜的颗粒和一些细碎的罗勒，一种混合着西红柿和肉的香味随着热气一起弥漫在空中。在这个盘子左边是一碟刚炸好的薯条，酥脆的外壳上沾着少许细碎的盐粒，包裹着奶白色的薯泥，金黄色在白色的碟子里显得格外的诱人。 右边是一大块插着小旗子的炸鸡胸肉，松脆的外壳上撒着一些孜然粉，咬开的时候里面鲜嫩的鸡肉释放出来一股热气，同时在渗出美味的肉汁，腌制过的鸡胸肉并不显得咸，而是有一种恰好的味道，让你欲罢不能。
*[“这上面插了一面小旗子诶”]
-“小千你看！这上面还插了一面小旗子欸！” 清良指着炸鸡上面的棋子说道，很是兴奋。
她对面的千春单手扶额，“看到了看到了，我怎么觉得我像在带娃？” 
清良吃下一根薯条，“嘿嘿，千春妈妈~”
千春突然感觉到皮肤上一阵颤抖，“哎哟我鸡皮疙瘩都要掉了，你过生日是又不是减一岁。”
“这叫寻找童趣好不好！我跟你说，这儿童套餐还挺好吃的。”
“哦？让我也尝尝。” 千春突然对清良面前的儿童套餐起了兴趣。
“好呀，我们交换着吃吧！” 清良说完这句话，还没等千春反应过来，便把她的肉夹到了自己的碗里面。
“哇！你抢我的肉！”

在少女之间的嬉闹之中，午餐吃完了，清良和千春坐在椅子上捧着肚子，“好~饱~啊~” 
->play_loop

- (whell)
午饭后，两人又玩了不少游乐项目。
时间快接近黄昏了，阿良和小千走在游乐园里。
“哎，都玩了这么久了，还是没见到素素。也不知道她还好不好……” 清良看向人群，声音越来越低。
“应该没事的吧？ 啊，到摩天轮了。” 千春安慰着清良。
但千春的安慰似乎没有什么效果，“昨晚素素还提到了摩天轮，好想和她一起坐哦。”
“那你看看那是谁？” 千春指向不远处，清良顺着千春的指的方向看过去，摩天轮下的阴影里，NPC少女背着双手，笑盈盈地看向二人。
“素素！我想死你啦！” 清良飞奔过去，扑向素星。
素星接住清良，笑着对她说，“阿良！生日快乐哦！” 
“谢谢！我们一起去坐摩天轮吧！” 清良拉着素星走向了摩天轮
“走！” 三位少女牵起手，一起登上了摩天轮。
随着摩天轮缓缓转动，窗外，夕阳为游乐园铺上一层金色的薄层，混合着多彩的霓虹灯和欢快的音乐，为形形色色的人笼罩上一层不真实的色彩，似乎进入了一个美丽的梦境，让她们三人久久无言。
在行至摩天轮顶端的时候，阿良好像突然想起了什么，她拉起千春和素星，三位少女以金光闪耀的游乐园为背景，留下来一张自拍合影。
想必这会是属于她们的，一块非常璀璨的记忆拼图。

从摩天轮走下来的时候，夜幕已经开始降临了。
清良抓着千春和素星的手，不停地晃着，“呜呜呜，今天过得好快啊！这就要结束了……”
“还没有结束哦！” 素星在一边望着远处轻轻地说着。
“对，还有一个非常棒的重头戏。” 千春笑着望向清良

* “是什么？”<>
* “你还准备了什么？”<>
* “是蛋糕吗？”<>
- 清良扭过头去问。

远远传来悠扬欢快的乐曲，伴随着多彩的霓虹灯与绚丽的表演，花车游行的队伍在缓缓驶来。那是一场无比盛大的宴会，是一场人们狂欢的庆典，许许多多卡通人物和花车踩着欢快的音乐，带来令人难以忘怀的美妙演出。
被千春和素星牵起双手，三人一同穿行在形形色色的绚烂花车间，随着形形色色的卡通人物与演者们美妙舞蹈，三位本应格格不入的精灵也被带入了舞动的画中。
//怎么飞 也飞不出 这花花的世界~
在队伍的尽头，有一辆蛋糕样式的花车缓缓行来，卡通服装的演出队环绕而来，仿佛在邀请精灵们加入，而此时远处的城堡，突然有绚烂的烟花腾空而起，花车巡游的演出被推向再一度的也是最后的高潮。
绚随着演出队伍渐渐静止，蛋糕花车上突然亮起了“生日快乐”四个字，绚丽的烟花还在绽放，被好友们牵着手阿良在队伍的中央看着这场景，眼眶有些湿润，突然间，清良突然像是想起了什么似的。
* “卡欧斯呢？”[]清良扭头问旁边的千春
* “他不会鸽了吧。”[]清良喃喃自语道
* (fire)[等回去就用火焰魔法烤了他]
-
{fire: 清良四处寻找着卡欧斯，但因为人太多了，完全看不见，只好求助于千春和素星，}千春和素星笑而不语，看向花车队伍的最前面，随着最明亮的花火升空，摘下头套的演者领队正是卡欧斯。
原来是这坏家伙！阿良狠狠地想着，却笑得无比开心。
“生日快乐！”，祝福与掌声回绕在乐园上空，经久不散。
#APlayer: play
#IMAGE:img/line1_end.jpg
*{fire}[扭头看向卡欧斯]
{fire:
  "对了，"清良突然向卡欧斯说道，“我们等了你一整天了知道吗？”
  然后望向准备悄悄咪咪跑路的某位侦探
  “你和他们一伙的吧！”
  ……
  世界突然变得安静起来。
  “跑啊！”卡欧斯率先做出了动作，转头就跑
  “System call generate thermal element from large element ball shape fly to Chaos!”
  卡欧斯听见这句话，跑得更快了。
  此时，一个巨大的火球在空中慢慢地浮现出来，悬浮在清良的头顶。
  “Discharge!”
  火球在空中划过一道弧线，飞向了卡欧斯。
  一阵炫目的火光之后，烤刺猬做好了！
  ……
  “对不起了卡欧斯！”千春和素星的声音远远地传了过来。
  ……
  “System call generate thermal element from large element ball shape fly to Chiharu! Discharge!”
  “System call generate thermal element from large element ball shape fly to Prime Star! Discharge!”
  火球划过天际，留下两道炫目美丽的尾迹。
  //单押！
}
* ->end
- (end)
清良笑了。她笑得很开心，因为她从来没有体验过这么快乐的生日。
->->

= rool_coaster
{rc_end: 
  “你还要玩？之前不是被吓到了吗？” 千春看着清良问
  “人总是会成长的嘛！”说完，<>
}
清良<>
{shuffle:
  - 率先走向了<>
  - 拉着千春走向了<>
  - 被千春拉着走向了<>
}过山车外面的排队长龙。
~temp t = RANDOM(5,20)
经过了{t}分钟的排队，终于轮到了千春和清良了，清良的心跳更加快了。
“我们坐哪？” 清良看向千春，强装镇定。
“我们坐{~最前面|中间|最后面}吧！” 千春想都不想，拉着清良走向了过山车上的座位。

“妈呀……为什么这个爬升感觉{rc_end:还是}这么吓人，我腿{rc_end:又|都}有点软了。” 清良紧紧抓住了座位上的安全压杆
“没事，你等会儿尽管叫，我不会告诉别人的。” 千春以一种轻松的方式回应，但并不能掩饰她用力抓住压杆的动作
“呃啊！起哈鲁你欺负人！说不定你等会儿{rc_end:还是}叫得比我还响呢！”
“嘿，你现在就逞强吧。” 
“坏女人！你！” 清良不敢扭头过去瞪她，只能直直地看着前面无能狂怒
{not rc_end:千春伸出手，抓住了清良的手，清良被稍微吓到了一下，“你伸手干嘛？”}
“要不要抓住我的手？” 千春扭头，笑着问道
清良的内心挣扎了一会儿，最终做出了选择，“……要！”
过山车爬到了最顶端，似乎静止在了这里，天空中的云一动不动，似乎连空气都静止了。
下一个瞬间，引力拖着巨大的过山车以及里面的人，将势能迅速转化为动能，顺着轨道飞速滑落而下，原本静止的空气此时飞速向着清良和千春扑来，伴随着巨大的引力加速度，带来一种直接袭击心底的夹杂着恐惧的气息。
“啊————————————” 巨大的尖叫声从下落过程中传了出来。

直到走下了过山车，清良和千春还觉得自己的腿有些软。
-(rc_end)
->->

= ghost_house
清良犹豫着，做出了这个决定。然而千春看起来很高兴，拉着清良走向了鬼屋。
{shuffle:
  - “走……走慢点！”清良试图拖延时间
  - {gh_end: “呜呜呜，我就随便说说嘛” 清良对着拉着自己的千春说}
  - “我突然觉得去鬼屋不是一个好主意” 清良停在原地说
}
~temp t = RANDOM(1,5)
~temp t2 = RANDOM(10,30)
千春似乎没听见清良在说什么，继续拉着她走到了鬼屋的队伍后面，清良只好祈祷着鬼屋的队伍能长点，然而<>
{shuffle:
  - 事与愿违，在短短的{t}分钟后便轮到了她们。
  - 上天似乎听到了清良的祈祷，经过了{t2}分钟才轮到他们。
 }

“阿良是不会怕的，这一点都不可怕。” 清良硬着头皮，{gh_end:再次}向着一片漆黑的鬼屋内部走去，“对，一点都……啊！！！！！！！！！！！！！！！！！！”
一只白色的不可名状之物出现在清良的眼前，让她本就剩余不多的理智值迅速减少，陷入疯狂。{gh_end:再一次见到的清良依然被吓了一跳。}
千春立马用手捂住耳朵，“求求你，放过我的耳朵。”
“这，这是意外，下次不会了！这又不吓人！” 清良躲到了千春的身后，抓着她的衣服。
“那你别躲我后面啊！{gh_end:还有！你上次也是这么说的！}”
“躲，躲一下怎么了！又不会少块肉！” 清良Kiyora试图嘴硬
然而某位大侦探并不领情，“行行行，走了。”
“慢点！慢点！哇——————” 天花板上洒下的水滴配合着周围的蜘蛛网，让两人觉得仿佛有无数的蜘蛛掉了下来。
不到一百米的路程，在清良和千春看来就像是几千米那么长。各种在清良眼中都不可名状的东西一个接一个地出现在天花板地板甚至拐角处，尖叫声一阵接一阵，谁也不知道，鬼屋里的惨叫到底回荡了多久。

“妹啊，我下次再也不带你来鬼屋了。” 千春感觉自己的耳边似乎还在回荡着一声声的尖叫。
“明明是你自己怕了嘛，明明是我带你走的。” 清良再度嘴硬，但还在紧紧抓着千春衣服的手暴露了一切。
- (gh_end)
->->

= hourse
清良说完便拉着千春跑向了旋转木马。
“妹啊你慢点啊~” 千春被清良拉着，边跑边说。<>
{h_end:
  “你不是来过一遍了吗，怎么还是那么兴奋？”
  “要保持一颗童真的心。” 清良一脸严肃对着千春说。
  {gh_end: 
    “这就是你之前在鬼屋被吓到走不动的原因吗？我的小清良？” 
    “胡说！我才没有被吓倒！” 
  }
}
说完，不等千春回答，继续拉着千春跑向了旋转木马的队尾。
来这里的大多数都是{~情侣|带着小孩子的家长|情侣和带着小孩子的家长}，他们两个在这里显得特别不同。
~temp t = RANDOM(5,20)
经过{t}分钟后，终于轮到了千春他们了，清良拉着千春迅速转了一圈，<>
{shuffle:
  - 但是很不幸的，清良想要的那匹马已经被别人捷足先登了，她只好找了另一匹马。
  - 很幸运地，清良想要的马还没有人坐在上面，她拉着千春跑了过去。
}
千春只好在清良的附近随便找了匹马坐了上去，此时千春脑海中开始翻腾起一些记忆的泡泡，里面包含着某些奇怪的疼痛记忆。
然而清良{lunch:和刚刚吃午餐的时候一样，}毫不在乎周围的目光，“小千，你看我现在身骑小白马，像不像公主？” 
清良一手扶着扶杆，另一只手举起，向着侧后方的千春喊道。
千春把头靠在扶杆上，一脸无奈，“哇，妹妹你今年几岁了啊？” 
“干嘛！你不就比我大两个月吗！” 清良向千春翻了个白眼
“行行行， {not h_end:今天你就是最棒的|我最可爱的}小公举。”
清良听见这句话，眼里面闪过一种奇怪的光，“好耶，那千春{h_end:继续变成|是}我的女仆好不好？”
“都依你，都依你。{not h_end:清良公主要不要小的给您怕个照？}” 千春此时只想快点结束这段游玩，因为她已经回想起了某些被自己尘封在记忆深处的青春回忆，例如某些奇怪的qq空间。
{not h_end:
  “好呀好呀，难得做一回公主，得留个纪念。”
  “来。1,2,3，茄子——” 千春举起了手机，学着网红的拍照方式，拍了一张。
  “好了吗？给我看看！” 清良迫不及待地向千春伸出手，然后在她看到照片的有瞬间愣住了。
  “起哈鲁？！你！你是怎么拍得这么难看的？”
  “啊？我只是模仿了一下网上那些网红小公举的拍照方式。”
  清良翻了翻白眼，用下一秒仿佛就要说出’哦我的老天爷‘的表情向千春说道，“啊？我求求你别学了，正常点就行了。”
  经过了无数次的尝试与折腾之后，千春·女仆·Chiharu和清良·公主·Kiyora终于拍下一张不那么难看的照片了。
- else:
  清良开心地举起双手，“芜湖~~~~~”
  千春在一边单手扶额，“你又不是第一次来这里了怎么还这么开心呢”
  “因为开心呀！所以来多少次都一样的！” 清良做出了最童真的回答。
}
- (h_end)
->->

=== tired(result) ===
天慢慢地黑了下来，你们还是没有{result}。
你们渐渐地感到了疲倦。
“回家吧，”清良对身旁的千春说道，“我累了。”
千春看了一眼满脸倦容的清良，似乎有什么话想说，但最终还是点了点头。

千春在游乐园门口拦了一辆出租车，和清良一起上了车。
清良靠在千春肩膀上睡着了。

“喂，醒醒，到了！” 清良模模糊糊地听见千春的声音。
* [睁开眼睛]
  清良睁开了眼睛<>
  -> open_eye
* [装睡]
  -> sleep

- (sleep)
清良决定装睡，因为她太累了。
然后她听见千春叹了口气。然后深吸了一口气。
“起！床！啦！”
整个世界似乎一下安静了下来，清良只听见自己脑袋里面的嗡嗡声。
然后恢复过来的时候又听见了千春的吸气声。
“起了起了起了！” 清良一下子睁开了眼睛，捂住了千春的嘴巴，“别喊了！”
“早点起就好了嘛，”千春用一脸欠揍的表情回答，然后扭过头去对司机说，“对不起啦司机大叔(´▽｀)”
清良跟着千春下了车<>
->open_eye

- (open_eye)
，发现周围并不是她家。
“这里是？” 
“别问，跟我来！” 
千春拉着清良，向着前面的房子走了过去，然后转过身来，面朝着清良说：
“来，打开你的礼物吧！”，说着退到了一边，示意清良打开门。

-(loop)
{notopen: 
  {shuffle:
    - “没事的，开门呀”<>
    - “真的没事的，宝贝你相信我。”<>
    - “宝贝你开门呀，这真的是礼物”<>
  }，千春{~用真挚的眼神望着清良|用诚恳的语气说|催促着清良}。
}
+[打开门]
  清良带着一丝疑惑，打开了门。
  ->party
+(notopen)[不打开]
  {shuffle:
    - “我才不开，要是你整我怎么办”
    - “你们有什么阴谋？”
    - {TURNS_SINCE(->notopen)>=3:清良摇了摇头，坚定地拒绝了。}
    - “才不要呢，快送我回家。”
  }
->loop
*(beat){notopen}[打千春]
  清良想了一会儿，决定打一顿千春，让她说出真相。
  清良举起了拳头！
  千春使用了接化发！
  {~千春接住了清良的拳头！|千春没接住！挨了一拳！}
  “快打开门吧，卡欧斯他们在等你呢。”，千春对着清良说，“敢打我，待会儿有你好看的。”
  清良不安地打开了门。
  ->party

- (party)
伴随着彩带飞舞，三个声音同时响起，“生日快乐！”
然后清良就看见了两个穿着玩偶服的人。
“其实我们想在游行的时候给你一个惊喜的。” 卡欧斯摘下了头套。
“结果你说累了，回家了，还好千春让司机开慢点，我们才能在你之前赶回来。”素星也摘下了头套。
“不管怎么样，总之，生日快乐！”千春在清良一边推着她，一边说，“快点进去吧，别站在门口了。”
#APlayer: tired
-(song)
他们高兴地唱着生日歌，一场临时举办的生日会就这样开始了，阿良许下了愿望吹灭蜡烛，然后大家开始分蛋糕，但是让人奇怪的是，千春在唱完生日歌之后便不知道到哪去了。
* “千春呢？”
- “在！这！里！” 千春从不知道哪个角落蹦了出来，手里拿着一大盘东西
{beat: 
  “让你打我”<>
- else:
  “生日会当然少不了这个东西”<>
}
，千春说着把手上那盘东西砸向清良。
纸盘带着奶油在空中划过一条直线，然后在清良的脸上炸开了一朵白色的花

“千！春！齐！哈！鲁！” 

->finall