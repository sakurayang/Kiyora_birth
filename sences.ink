===ttk===
那么，你的命运将会是如何的呢
且听，下回分解
待续 #CLASS: end
 * [重玩] ->finall.restart
 * [结束] ->finall
- ->DONE

===finall===
…………
…………
…………
…………
“我说完了”，我合上了笔记本对你说道。
+ “我觉得有问题[。”]<>
，”你向我提出了质疑，“肯定有哪些地方不对”
“那是你自己的选择，”我无奈地摊了摊手，“不过你不满意的话，那就重来一次吧”
我把笔记本重新摊开
“这次要好好选择哟。”
 ++ “来吧” 
 ->restart
+ “挺好的故事”
“那就好” 
->DONE
=restart
# RESTART
->DONE

===two_and_three===
这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 这里是二和三的共通线 

清良思考了一下，决定
  * 在外面吃[？]<>吧。
  ->line2->
  * 回家吃火锅[？]<>吧。
  ->line3->
- ->->

===shop===
这里是购物 这里是购物 这里是购物 这里是购物
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
 
=open_eye
，发现周围并不是她家。
“这里是？” 
“别问，跟我来！” 
千春拉着清良，向着前面的房子走了过去，然后转过身来，面朝着清良说：
“来，打开你的礼物吧！”，说着退到了一边，示意清良打开门。

-(loop)
{notopen: 
  {shuffle:
    - “没事的，开门呀”，千春催促着清良
    - “真的没事的，宝贝你相信我。”
    - “宝贝你开门呀，这真的是礼物”
  }
}
+[打开门]
清良带着一丝疑惑，打开了门。
->party
+(notopen)[不打开]
{shuffle:
- “我才不开，要是你整我怎么办”
- “你们有什么阴谋？”
- {TURNS_SINCE(->notopen)>=3}清良摇了摇头，坚定地拒绝了。
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

=sleep
清良决定装睡，因为她太累了。
然后她听见千春叹了口气。然后深吸了一口气。
“起！床！啦！”
整个世界似乎一下安静了下来，清良只听见自己脑袋里面的嗡嗡声。
然后恢复过来的时候又听见了千春的吸气声。
“起了起了起了！” 清良一下子睁开了眼睛，捂住了千春的嘴巴，“别喊了！”
“早点起就好了嘛，”千春用一脸欠揍的表情回答，然后扭过头去对司机说，“对不起啦司机大叔(´▽｀)”
清良跟着千春下了车<>
->open_eye

=party
伴随着彩带飞舞，三个声音同时响起，“生日快乐！”
然后清良就看见了两个穿着玩偶服的人。
“其实我们想在游行的时候给你一个惊喜的。” 卡欧斯摘下了头套。
“结果你说累了，回家了，还好千春让司机开慢点，我们才能在你之前赶回来。”素星也摘下了头套。
“不管怎么样，总之，生日快乐！”千春在清良一边推着她，一边说，“快点进去吧，别站在门口了。”

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













