class Post {
  Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,
  });

  final String title;
  final String author;
  final String imageUrl;
  final String description;


  bool selected = false;
}

final List<Post> posts = [
  Post(
    title: 'Candy Shop',
    author:  'Mohamed Chahin',
    description: '一不叫你忧来哎，二不叫你愁啊,三不叫你穿错了小妹妹的花兜兜啊,小妹妹的兜兜本是一个金锁链啊,情郎哥的兜兜妹八宝镀金钩啊,小妹妹送我的郎啊，送到了大门东啊,偏赶上这个老天爷下雨又刮风啊',
    imageUrl: 'https://gank.io/images/d6bba8cf5b8c40f9ad229844475e9149',
  ),
  Post(
    title: 'Childhood in a picture',
    author: 'Mohamed Chahin',
    description: '一呀嘛更儿里呀，月了影儿照花台。秋香姐定下了计 ，她说晚傍晌来。牡丹亭前我们多恩爱，但愿得鸾凤早早配和谐，左等也不来呀，右等也不来，唐解元望苍天，止不住的好伤怀，美人呐，秋香哎，勾魂的女裙钗。二呀嘛更儿里呀，月了影儿照花前，华相府困住了，多情的唐解元。痴心的才子，我风流的汉，我在那佛前我求了几千年。不见那女天仙呀，不见那女婵娟，唐伯虎对明月哪顾夜风寒，美人呐，秋香哎，勾魂的女婵娟。三呀嘛更儿里，明月照当空，听谯楼更鼓响檐前铁马声，牡丹亭前我空埋怨，点点的相思长叹一阵风。天边月朦胧，亭前恨无穷，月下老因何故不来拴红绳，美人呐，秋香哎，勾了魂的女花容。',
    imageUrl: 'https://gank.io/images/02eb8ca3297f4931ab64b7ebd7b5b89c',
  ),
  Post(
    title: 'Contained',
    author: 'Mohamed Chahin',
    description: '酒是穿肠毒药，色是刮骨钢刀，\n财是惹祸根苗，气是无烟火炮；\n无酒不成宴席，无色人类灭绝，\n无财寸步难行，无气反被人欺',
    imageUrl: 'https://gank.io/images/50e3dd62dd9e4b0db957b3c5e296d6b1',
  ),
  Post(
    title: 'Dragon',
    author: 'Mohamed Chahin',
    description: '守法朝朝忧闷，强梁夜夜欢歌；\n损人利己骑马骡，正值公平挨饿；\n修桥补路瞎眼，杀人放火儿多；\n我到西天问我佛，佛说：我也没辙！',
    imageUrl: 'https://gank.io/images/19c99c447e0a40a6b3ff89951957cfb1',
  ),
  Post(
    title: 'Free Hugs',
    author: 'Mohamed Chahin',
    description: '道德三皇五帝，功名夏后商周。\n英雄五伯闹春秋，秦汉兴亡过手。\n青史几行名姓，北邙无数荒丘。\n前人田地后人收，说甚龙争虎斗。',
    imageUrl: 'https://gank.io/images/bdb35e4b3c0045c799cc7a494a3db3e0',
  ),
  Post(
    title: 'Gravity Falls',
    author: 'Mohamed Chahin',
    description: '伤情最是晚凉天,憔悴斯人不堪怜。\n邀酒摧肠三杯醉,寻香惊梦五更寒。\n钗头凤斜卿有泪,茶糜花了我无缘。\n小楼寂寞新雨月,也难如钩也难圆。',
    imageUrl: 'https://gank.io/images/21c417e3a84842bfa585dee686f6b992',
  ),
  Post(
    title: 'Icecream Truck',
    author: 'Mohamed Chahin',
    description: '八月中秋白露，路上行人凄凉；\n小桥流水桂花香，日夜千思万想;\n心中不得宁静，青春好做文章；\n十年寒苦在书房，方显才高志广。',
    imageUrl: 'https://gank.io/images/dc75cbde1d98448183e2f9514b4d1320',
  ),
  Post(
    title: 'keyclack',
    author: 'Mohamed Chahin',
    description: '桃叶儿那尖上尖 柳叶儿遮满了天 在其位的这个明阿公 细听我来言呐此事哎 出在了京西蓝靛厂啊蓝靛厂 火器营儿 有一个松老三提起了松老三两口子卖大烟一辈子无有儿生了个女儿婵娟呐小妞哎 年长刚一十五啊起了个乳名儿 荷花万字叫大莲姑娘叫大莲俊俏好容颜似鲜花无人采琵琶断弦无人弹呐奴好比貂蝉思吕布啊又好比阎婆惜坐楼想张三太阳落了山秋虫儿闹声喧日思夜想的六哥哥来在了我的门前呐约下了今晚三更来相会呀大莲我羞答答 低头无话言一更鼓儿天姑娘她泪涟涟最可恨二爹娘 爱抽鸦片烟呐耽误了小奴我的婚姻事啊青春要是过去 何处你找少年二更鼓儿发小六儿他把墙爬惊动了上房屋 痴了心的女娇娃呀急慌忙打开了门双扇呐一把手拉住了心爱的小冤家三更鼓儿天月亮那照中间好一对多情的人 对坐话缠绵呐鸳鸯哎戏水 我说说心里话呀手拉着知心的人 不住地泪涟涟五更天大明爹娘他知道细情无廉耻的这个丫头哎败坏了我的门庭啊今日里一定要将你打呀皮鞭子沾凉水 定打不容情大莲无话说被逼就跳了河惊动了六哥哥来探清水河呀亲人哎 你死都是为了我呀大莲妹妹慢点走 等等六哥哥秋雨下连绵霜降那清水河好一对钟情的人双双跳下了河哟鸳鸯诶 戏水 我说说心里话呀编成了小曲儿来探清水河编成了小曲儿来探清水河 啊',
    imageUrl: 'https://gank.io/images/6b2efa591564475fb8bc32291fb0007c',
  ),
  Post(
    title: '清平调·其一',
    author: '李白',
    description: '云想衣裳花想容，春风拂槛露华浓。\n若非群玉山头见，会向瑶台月下逢。',
    imageUrl: 'https://gank.io/images/f12526b3e9654a47842db6ce21222874',
  ),
  Post(
    title: '桃夭',
    author: '佚名',
    description: '桃之夭夭，灼灼其华。\n之子于归，宜其室家。\n桃之夭夭，有蕡其实。\n之子于归，宜其家室。\n桃之夭夭，其叶蓁蓁。\n之子于归，宜其家人。',
    imageUrl: 'https://gank.io/images/ccf0316264d245018fc651cffa6e90de',
  ),
  Post(
    title: '蒹葭',
    author: '佚名',
    description: '蒹葭苍苍，白露为霜。\n所谓伊人，在水一方。\n溯洄从之，道阻且长；\n溯游从之，宛在水中央。',
    imageUrl: 'https://gank.io/images/e0b652d2a0cb46ba888a935c525bd312',
  ),
  Post(
    title: '上邪',
    author: '无名',
    description: '上邪！\n我欲与君相知，长命无绝衰。\n山无陵，江水为竭，\n冬雷震震夏雨雪，\n天地合，乃敢与君绝！',
    imageUrl: 'https://gank.io/images/95ddb01b6bd34a85aedfda4c9e9bd003',
  ),
  Post(
    title: '卜算子',
    author: '李之仪',
    description: '我住长江头，君住长江尾。\n日日思君不见君，共饮长江水。\n此水几时休，此恨何时已。\n只愿君心似我心，定不负相思意。',
    imageUrl: 'https://gank.io/images/5fe5b1e9168d4a8a8f6f4e0acefef8f5',
  ),
  Post(
    title: '江城子',
    author: '苏轼',
    description: '十年生死两茫茫，不思量，自难忘。\n千里孤坟，无处话凄凉。\n纵使相逢应不识，尘满面，鬓如霜。\n夜来幽梦忽还乡，小轩窗，正梳妆。\n相顾无言，惟有泪千行。\n料得年年肠断处，明月夜，短松冈。',
    imageUrl: 'https://gank.io/images/f7b320f1a89a4aaebadb1922c2a7a368',
  ),
  Post(
    title: '摸鱼儿',
    author: '元好问',
    description: '问世间，情为何物，直教生死相许？天南地北双飞客，老翅几回寒暑！欢乐趣，离别苦，就中更有痴儿女。君应有语：渺万里层云，千山暮雪，只影向谁去！横汾路，寂寞当年箫鼓，荒烟依旧平楚。招魂楚些何嗟及，山鬼暗啼风雨。天也妒，未信与，莺儿燕子俱黄土。千秋万古，为留待骚人，狂歌痛饮，来访雁丘处。',
    imageUrl: 'https://gank.io/images/b25e97747ed041fbb7a11f59f7fed5da',
  )
];
