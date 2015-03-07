<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newsShow.aspx.cs" Inherits="newsShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="image/newsShow/layout.css" rel="stylesheet" type="text/css">

     <link href="image/newsShow/details.css" rel="stylesheet" type="text/css" media="all">
    <link href="image/newsShow/print.css" rel="stylesheet" type="text/css" media="print">

<style type="text/css" media="screen">p.audioplayer_container span {visibility:hidden;height:24px;overflow:hidden;padding:0;border:none;}</style>
<style>
.info-counter-list li{color:#000;}
</style>
    <link rel="shortcut icon" type="image/ico" href="http://www.hubei.gov.cn/favicon.ico">
    	<!--<base target="_blank">--><base href="." target="_blank">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link href="image/newsShow/layout.css" rel="stylesheet" type="text/css">
<style type="text/css">
.info-counter-list li{color:#000;}
</style>
    <link rel="shortcut icon" type="image/ico" href="http://www.hubei.gov.cn/favicon.ico">
    	<!--<base target="_blank">--><base href="." target="_blank">


         
         




		 
	 </div>
</div>


<div class="wrap container">
	 <div class="main" id="main">
	 	 <p class="current-page">您所在的位置：<a href="http://www.hubei.gov.cn/hbgk/lsrw/" target="_self" title="历史人文" class="CurrChnlCls">历史人文</a></p>
<!--titlestart-->		 
		 <h1 class="gov-news-title" id="tts-title">
        <asp:Label ID="lblTitle" runat="server" Text="无标题新闻"></asp:Label></h1>
<!--titleend-->
<!--metastart-->		 
		 <cite class="gov-news-meta"><span>湖北省人民政府门户网站</span><span>www.hubei.gov.cn</span><span>来源：</span></cite>
<!--metaend-->
<div style="margin:0 auto; width:100%; text-align: center;">
<object type="application/x-shockwave-flash" name="tts-player" style="outline: none" data="http://sayso.w3cool.com/js/player.swf?m=447" width="290" height="24" id="tts-player"><param name="bgcolor" value="#FFFFFF"><param name="wmode" value="transparent"><param name="menu" value="false"><param name="flashvars" value="allowscriptaccess=always&amp;allownetworking=all&amp;autostart=no&amp;loop=no&amp;titles=Sayso Speech API&amp;artists=http://sayso.w3cool.com&amp;bg=CDDFF3&amp;leftbg=357DCE&amp;lefticon=F2F2F2&amp;rightbg=357DCE&amp;rightbghover=4499EE&amp;righticon=F2F2F2&amp;righticonhover=FFFFFF&amp;text=357DCE&amp;slider=357DCE&amp;track=FFFFFF&amp;tracker=DDDDDD&amp;border=FFFFFF&amp;loader=8EC2F4&amp;voltrack=F2F2F2&amp;volslider=666666&amp;skip=666666&amp;tts_async_url=http://sayso.w3cool.com/web/async&amp;tts_title=以下是合成语音朗读的内容：&amp;tts_text=


#TRS_AUTOADD_1333696106437 P {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 TD {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 DIV {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 LI {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
/**---JSON--
{&quot;p&quot;:{&quot;font-family&quot;:&quot;宋体&quot;,&quot;font-weight&quot;:&quot;&quot;,&quot;font-size&quot;:&quot;12pt&quot;,&quot;line-height&quot;:&quot;&quot;,&quot;direction&quot;:&quot;&quot;,&quot;margin-top&quot;:&quot;6px&quot;,&quot;margin-bottom&quot;:&quot;6px&quot;,&quot;text-indent&quot;:&quot;28px&quot;},&quot;td&quot;:{&quot;font-family&quot;:&quot;宋体&quot;,&quot;font-weight&quot;:&quot;&quot;,&quot;font-size&quot;:&quot;12pt&quot;,&quot;line-height&quot;:&quot;&quot;,&quot;direction&quot;:&quot;&quot;,&quot;margin-top&quot;:&quot;6px&quot;,&quot;margin-bottom&quot;:&quot;6px&quot;,&quot;text-indent&quot;:&quot;28px&quot;},&quot;div&quot;:{&quot;font-family&quot;:&quot;宋体&quot;,&quot;font-weight&quot;:&quot;&quot;,&quot;font-size&quot;:&quot;12pt&quot;,&quot;line-height&quot;:&quot;&quot;,&quot;direction&quot;:&quot;&quot;,&quot;margin-top&quot;:&quot;6px&quot;,&quot;margin-bottom&quot;:&quot;6px&quot;,&quot;text-indent&quot;:&quot;28px&quot;},&quot;li&quot;:{&quot;font-family&quot;:&quot;宋体&quot;,&quot;font-weight&quot;:&quot;&quot;,&quot;font-size&quot;:&quot;12pt&quot;,&quot;line-height&quot;:&quot;&quot;,&quot;direction&quot;:&quot;&quot;,&quot;margin-top&quot;:&quot;6px&quot;,&quot;margin-bottom&quot;:&quot;6px&quot;,&quot;text-indent&quot;:&quot;28px&quot;},&quot;&quot;:{&quot;font-family&quot;:&quot;宋体&quot;,&quot;font-weight&quot;:&quot;&quot;,&quot;font-size&quot;:&quot;12pt&quot;,&quot;line-height&quot;:&quot;&quot;,&quot;direction&quot;:&quot;&quot;,&quot;margin-top&quot;:&quot;6px&quot;,&quot;margin-bottom&quot;:&quot;6px&quot;,&quot;text-indent&quot;:&quot;28px&quot;}}
--**/


#TRS_AUTOADD_1333696106437 P {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 TD {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 DIV {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 LI {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
/**---JSON--
{&quot;p&quot;:{&quot;font-family&quot;:&quot;宋体&quot;,&quot;font-weight&quot;:&quot;&quot;,&quot;font-size&quot;:&quot;12pt&quot;,&quot;line-height&quot;:&quot;&quot;,&quot;direction&quot;:&quot;&quot;,&quot;margin-top&quot;:&quot;6px&quot;,&quot;margin-bottom&quot;:&quot;6px&quot;,&quot;text-indent&quot;:&quot;28px&quot;},&quot;td&quot;:{&quot;font-family&quot;:&quot;宋体&quot;,&quot;font-weight&quot;:&quot;&quot;,&quot;font-size&quot;:&quot;12pt&quot;,&quot;line-height&quot;:&quot;&quot;,&quot;direction&quot;:&quot;&quot;,&quot;margin-top&quot;:&quot;6px&quot;,&quot;margin-bottom&quot;:&quot;6px&quot;,&quot;text-indent&quot;:&quot;28px&quot;},&quot;div&quot;:{&quot;font-family&quot;:&quot;宋体&quot;,&quot;font-weight&quot;:&quot;&quot;,&quot;font-size&quot;:&quot;12pt&quot;,&quot;line-height&quot;:&quot;&quot;,&quot;direction&quot;:&quot;&quot;,&quot;margin-top&quot;:&quot;6px&quot;,&quot;margin-bottom&quot;:&quot;6px&quot;,&quot;text-indent&quot;:&quot;28px&quot;},&quot;li&quot;:{&quot;font-family&quot;:&quot;宋体&quot;,&quot;font-weight&quot;:&quot;&quot;,&quot;font-size&quot;:&quot;12pt&quot;,&quot;line-height&quot;:&quot;&quot;,&quot;direction&quot;:&quot;&quot;,&quot;margin-top&quot;:&quot;6px&quot;,&quot;margin-bottom&quot;:&quot;6px&quot;,&quot;text-indent&quot;:&quot;28px&quot;},&quot;&quot;:{&quot;font-family&quot;:&quot;宋体&quot;,&quot;font-weight&quot;:&quot;&quot;,&quot;font-size&quot;:&quot;12pt&quot;,&quot;line-height&quot;:&quot;&quot;,&quot;direction&quot;:&quot;&quot;,&quot;margin-top&quot;:&quot;6px&quot;,&quot;margin-bottom&quot;:&quot;6px&quot;,&quot;text-indent&quot;:&quot;28px&quot;}}
--**/
世界文化遗产
武当山古建筑群&amp;nbsp; 位于湖北丹江口市武当山风景区内，始建于唐贞观年间（627∽649年），宋、元时进行规模建筑。明代早期，明成祖朱棣为鼓吹“君权神授”，将武当山道场辟为皇室家庙，永乐十年（1412年），朱棣派遣隆平侯张信、驸马都尉沐昕、工部侍郎郭进等500多名官员为钦差，率领军民工匠20万人，历时12年，建成8宫、2观、3 6庵堂、7 2岩庙等33组建筑群，总建筑面积达160万平方米。明嘉靖年间又大规模维修和扩建。明代200多年间，每一位新皇帝登基都照例对武当山许以各种特权，并直接委派内臣代表皇帝对武当山进行管理，使武当山古建筑群保存完好，成为天下第一。明末清初， 部分建筑毁于战乱。武当山古建筑群现存较完好的古建筑129处，建筑面积5万平方米，占地面积100多万平方米。著名的建筑有金殿、太和宫、南岩宫、紫霄宫、复真观、玄岳门等，重要的建筑遗址有玉虚宫遗址、五龙宫遗址等。其中， 金殿、南岩宫、紫霄宫、玄岳门、玉虚宫遗址为全国重点文物保护单位。1994 年，武当山古建筑群被联合国教科文组织列为世界文化遗产。
　　显陵明代皇陵 位于湖北省钟祥
　　市郢中街道办事处皇城村松林山。中心地理坐标：东经112°37＇50″—112°38′09″， 北纬31°12′20″—31°13′。陵区面积约50 万平方米。为明世宗嘉靖皇帝生父朱佑杬和生母蒋氏的合葬墓。显陵平面为呈金瓶形状，布局按帝制“三朝两宫”式和“天子五门”制式排列；四周环黄瓦朱墙，墙高6。5米，厚1。9米，周长4730 米。逻城内陵墓建筑平面布局按中轴线排列，依次为新红门、大红门、碑亭、华表、神道、石象生、棂星门、神龙道、内明塘、棱恩门、棱恩殿、二柱门、十五供、方城、宝城，九曲河蜿蜒其间，河上以五道御桥相连。宝城共两座，平面呈“8”字形。两座宝城上共有向外悬挑的散水螭首16个，设计精巧，为独特的排水系统。1988年被国务院公布为第三批全国重点文物保护单位。2000年被联合国教科文组织列为世界文化遗产。
　 
古文化遗址 
鸡公山旧石器时代遗址 位于湖北省荆州市荆州区郢城镇郢北村。面积约1000平方米。是中国首次发现的平原地区旧石器时代晚期居住遗址。1986年修建宜黄公路时发现， 1992年发掘。文化层厚0.6米∽0.75 米，分上、下两层。上文化层，年代距今约2万∽1万年，为含锰较多的黄色亚黏土，厚0.1米∽0.25米，出土石制品近500件，大部分是采用石英、煫石及石英岩打制的小型刮削器和尖状器。下层文化层，年代距今约5万∽4万年，为含锰较多的棕红色亚黏土，厚约0.5米，是该遗址的主体部分，发现5处由砾石围成的圆圈及脚窝遗迹。石圈外径约4米， 圈内面积5平方米∽8平方米，放置有少量尖状器和砍砸器。据推测，应为当时人类居住的圆形窝棚遗迹。其南部有两处石器加工区，出土有刮削器、砍砸器等石制品和石锤、石砧等石器加工工具，以及大量石核、石片等。该遗址的考古发掘资料首次揭示出旧石器时代不同文化类型的多层叠压关系，首次发现了在距今约5万年前的旧石器时代人类在平原上的活动遗迹，具有重要的考古价值。1996年被国务院公布为第四批全国重点文物保护单位。
屈家岭新石器时代遗址 位于湖北省京山县屈家岭村西100米，青木档河和青木河交汇的台地上。面积约300万平方米，文化层厚约3米。为“屈家岭文化”命名遗址。1954年修建石龙过江水库，进行文物调查时发现， 1955年、1956年、1 989年发掘。发现有房基、墓葬、窖穴等遗迹。房基呈长方形，地面多用红烧土块铺筑，红烧土内发现有密结成层的大量粳稻稻谷壳。居住面有的筑成高出地面的土台子，上有成排对称分布的柱洞，为地面式建筑。成人墓多为单人土坑葬，儿童采用瓮棺葬，有多人合葬和拔牙等奇特葬俗。出土石器以磨制为主，有斧、凿、铲、锛、镞等。陶器以泥质灰陶为主，泥质红、黑陶次之；纹饰有弦纹、篮纹及镂孔、彩绘；器形有鼎、罐、壶形器、碗、三足碟等。出土器物以彩陶纺轮、双弧形折壁陶器、彩绘黑陶和蛋壳彩陶最具特色。屈家岭文化广泛分布于湖北省境内的江汉平原、西北山地以及豫西南邻鄂地带， 文化面貌具有极为浓厚的地方色彩。1988年被国务院公布为第三批全国重点文物保护单位。
盘龙城商代城址 位于湖北省武汉市黄陂区滠口街道办事处叶店村盘龙湖南。面积约110万平方米，由盘龙城城址、李家咀遗址、杨家湾遗址、楼子湾遗址、王家咀遗址、杨家咀遗址组成，为商代在南方建立的重要方国城址。1954年文物调查时发现， 1963年试掘， 1974年、1 976年发掘。盘龙城城址在遗址群的东南部，为商代文化中心区。坐落在府河北岸的台地上，其东面和东北面为盘龙湖，西面和西北面为丘陵岗地，南面为府河。城址平面略呈长方形，南北长约290米，东西宽约260 米。城垣夯筑，外坡陡峻，内坡较缓， 宽21米∽22米，残高2.5米∽3.3米，夯层厚8厘米∽10厘米。四垣中部各设有一门。城垣外有宽约14米、深约4米的护城河遗迹，在南部护城河中有桥桩柱穴。城内东北部发现三座前后并列， 坐北朝南的大型宫殿基址。已发掘两座，保存有较完整的墙基、柱础、柱洞和阶前散水，平面布局与文献记载的“前朝后寝”相符。其中1号宫殿基址面阔39.8米，进深12.3米，是一座外设回廊、内分四室、木骨泥墙的“茅茨土阶”式高台寝殿建筑；距1号宫殿基址以南13米的2号宫殿基址面阔27.5米，进深10.5米，是一座两侧开门的厅堂式建筑。城外有平民居址、手工作坊遗址及墓地等。主要分布在：城外西面的楼子湾，北面的杨家湾、杨家咀，东面的李家咀，南面的王家咀。其中李家咀遗址面积约10万平方米，文化层厚约1米，发现有灰坑、墓葬等，是贵族墓的主要集中地。以李家咀2号墓最为重要，该墓为长方形竖穴土坑墓，设有腰坑，墓底南北长3.77米，东西宽3.4米，残深1.41 米。墓内殉葬3人，随葬器物达77件。盘龙城遗址出土铜器有鼎、盂、鬲、簋、爵、觚和钺、镞、戈等，陶器以夹砂灰陶为主，有少量泥质黑皮陶；纹饰有绳纹、方格纹；器形有鼎、鬲、缸、大口尊、豆、瓮勺、长颈壶等。其中高85厘米的铜大圆鼎、长41厘米的铜夔龙纹钺、长94厘米的玉戈等，都是中国文物中极为罕见的珍品。1988年被国务院国务院公布为第三批全国重点文物保护单位。铜绿山古铜矿遗址 西周至汉代矿冶遗址位于湖北省大冶市西北3公里。面积约250万平方米。地表覆盖有厚数米、重约40万吨的古代铜炼渣，是中国古代铜矿的重要开采地。铜绿山， 根据清修《大冶县志》载：“山顶高平， 巨石对峙，每骤雨过时，有铜绿如雪花小豆点缀土石之上，故名。”遗址于1973 年大冶有色金属公司铜绿山矿在进行露天开采时发现，古矿井大多处在花岗闪长斑岩和大理岩的围岩蚀变带和破碎带内。1973年∽1979年多次发掘， 清理出西周至汉代不同结构、不同支护技术的数百口竖井、斜井、盲井和百余条大小平巷等采矿遗迹。同时清理出8座春秋时期的炼铜竖炉，炉体用红色黏土、石英砂、铁矿粉、高岭土等夯筑而成，高约1.5米，由炉基、炉缸、炉身组成。炉基位于当时地面之下，中间设有“一”字形或“丁”字形风沟。炉身设鼓风口，炉壁厚0.4米。炼炉周围发现有工棚遗迹和石砧、石球等碎矿工具及加工过的矿石、铜块等。遗址出土有铜斧、铜锛、铁斧、铁锤、铁锄、木铲、木搥、木辘轳、船形木斗等生产工具及陶、木质生活用具，共计1000余件。铜绿山古铜矿遗址年代久远，延续时间长，规模宏大，保存完好，内涵极为丰富。其先进的开采方法、合理的炉体结构、炉渣含铜量低均体现了当时矿业技术的成就。1982年被国务院公布为第三批全国重点文物保护单位。
&amp;nbsp; 
来源：《2011湖北年鉴》


         &amp;tts_text_md5=13b0efae9fc26e272fb0c813c818cb51&amp;tts_url=http://www.hubei.gov.cn/hbgk/lsrw/201204/t20120406_344476.shtml&amp;tts_url_md5=535155af08265a8fcbb9232c0f5430cc&amp;lang_code=undefined&amp;hasloaded=yes&amp;soundFile=http://sayso.w3cool.com/static/1/3/b/0/13b0efae9fc26e272fb0c813c818cb51.mp3&amp;playerID=tts-player"></object>
</div>
<!--poststart-->
		 <div class="gov-news-post" id="tts-text">
<div id="TRS_AUTOADD_1333696106437"><style id="_Custom_V6_Style_">

#TRS_AUTOADD_1333696106437 P {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 TD {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 DIV {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 LI {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
/**---JSON--
{"p":{"font-family":"宋体","font-weight":"","font-size":"12pt","line-height":"","direction":"","margin-top":"6px","margin-bottom":"6px","text-indent":"28px"},"td":{"font-family":"宋体","font-weight":"","font-size":"12pt","line-height":"","direction":"","margin-top":"6px","margin-bottom":"6px","text-indent":"28px"},"div":{"font-family":"宋体","font-weight":"","font-size":"12pt","line-height":"","direction":"","margin-top":"6px","margin-bottom":"6px","text-indent":"28px"},"li":{"font-family":"宋体","font-weight":"","font-size":"12pt","line-height":"","direction":"","margin-top":"6px","margin-bottom":"6px","text-indent":"28px"},"":{"font-family":"宋体","font-weight":"","font-size":"12pt","line-height":"","direction":"","margin-top":"6px","margin-bottom":"6px","text-indent":"28px"}}
--**/</style>
<div id="TRS_AUTOADD_1333696106437"><style id="_Custom_V6_Style_">

#TRS_AUTOADD_1333696106437 P {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 TD {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 DIV {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 LI {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
#TRS_AUTOADD_1333696106437 {
	MARGIN-TOP: 6px; TEXT-INDENT: 28px; FONT-FAMILY: 宋体; MARGIN-BOTTOM: 6px; FONT-SIZE: 12pt
}
/**---JSON--
{"p":{"font-family":"宋体","font-weight":"","font-size":"12pt","line-height":"","direction":"","margin-top":"6px","margin-bottom":"6px","text-indent":"28px"},"td":{"font-family":"宋体","font-weight":"","font-size":"12pt","line-height":"","direction":"","margin-top":"6px","margin-bottom":"6px","text-indent":"28px"},"div":{"font-family":"宋体","font-weight":"","font-size":"12pt","line-height":"","direction":"","margin-top":"6px","margin-bottom":"6px","text-indent":"28px"},"li":{"font-family":"宋体","font-weight":"","font-size":"12pt","line-height":"","direction":"","margin-top":"6px","margin-bottom":"6px","text-indent":"28px"},"":{"font-family":"宋体","font-weight":"","font-size":"12pt","line-height":"","direction":"","margin-top":"6px","margin-bottom":"6px","text-indent":"28px"}}
--**/</style>

        <asp:Label ID="lblContent" runat="server" Text="没有新闻内容"></asp:Label>
</div>
</div>
         </div>
		 <div id="pages-nav" class="pages-nav"></div>
<!--postend-->
	   
	 </div>
	 <div class="grid-250 flt-r">
                   <div class="md notes-md" id="third-tabs">
	 	  	   <div class="hd">
	 	  	   	    <ul class="hd-tabs">
	 	  	   	    	<li class="tab first current"><a href="newsList.aspx?newsClass=08">理论研究</a></li>
	 	  	   	    	<li class="tab"><a href="newsList.aspx?newsClass=09">实务服务</a></li>
	 	  	   	    </ul>
	 	  	   </div>
			   <div class="bd notes-bd" style="height:104px;">
			   	    <ul class="bd-list">
			   	    
                              <asp:ObjectDataSource ID="odsLLYJ" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="_defaultTableAdapters.显示新闻列表TableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="4" Name="P_显示条数" Type="Decimal" />
                    <asp:Parameter DefaultValue="" Direction="Output" Name="P_RESULT" 
                        Type="Object" />
                    <asp:Parameter DefaultValue="08" Name="P_新闻类型代码" Type="String" />
                </SelectParameters>
                        </asp:ObjectDataSource>
            <asp:Repeater ID="rptLLYJ" runat="server" DataSourceID="odsLLYJ">
            <ItemTemplate>
              <li><a href="newsShow.aspx?newsID=<%#Eval("新闻ID") %>"><%#Eval("新闻标题") %></a></li>
            </ItemTemplate>
            </asp:Repeater>
			   	    </ul>
			   	    <ul class="bd-list hide">
			   	    	
                              <asp:ObjectDataSource ID="odsSWFW" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="_defaultTableAdapters.显示新闻列表TableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="4" Name="P_显示条数" Type="Decimal" />
                    <asp:Parameter DefaultValue="" Direction="Output" Name="P_RESULT" 
                        Type="Object" />
                    <asp:Parameter DefaultValue="09" Name="P_新闻类型代码" Type="String" />
                </SelectParameters>
                        </asp:ObjectDataSource>
            <asp:Repeater ID="rptSWFW" runat="server" DataSourceID="odsSWFW">
            <ItemTemplate>
              <li><a href="newsShow.aspx?newsID=<%#Eval("新闻ID") %>"><%#Eval("新闻标题") %></a></li>
            </ItemTemplate>
            </asp:Repeater>
			   	    </ul>
			   </div>
	 	  </div>
	 	   <div class="md yj-man-md" id="yj-man">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="newsList.aspx?newsClass=10">工作评价</a></h2>
	 	  	   	    
	 	  	   </div>
			   <div class="bd yjgl-bd" style="height:104px;">
			   	    <ul class="bd-list">
			   	    
                              <asp:ObjectDataSource ID="odsGZPJ" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="_defaultTableAdapters.显示新闻列表TableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="4" Name="P_显示条数" Type="Decimal" />
                    <asp:Parameter DefaultValue="" Direction="Output" Name="P_RESULT" 
                        Type="Object" />
                    <asp:Parameter DefaultValue="10" Name="P_新闻类型代码" Type="String" />
                </SelectParameters>
                        </asp:ObjectDataSource>
            <asp:Repeater ID="rptGZPJ" runat="server" DataSourceID="odsGZPJ">
            <ItemTemplate>
              <li><a href="newsShow.aspx?newsID=<%#Eval("新闻ID") %>"><%#Eval("新闻标题") %></a></li>
            </ItemTemplate>
            </asp:Repeater>
			   	    </ul>
			   </div>
	 	  </div>
	 	   <div class="md yjsc-md" id="yj-cookbook">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="newsList.aspx?newsClass=11">信息采集</a></h2>
	 	  	   </div>
			    <div class="bd yjgl-bd" style="height:124px;">
			   	    <ul class="bd-list">
			   	    
                              <asp:ObjectDataSource ID="odsXXCJ" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="_defaultTableAdapters.显示新闻列表TableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="4" Name="P_显示条数" Type="Decimal" />
                    <asp:Parameter DefaultValue="" Direction="Output" Name="P_RESULT" 
                        Type="Object" />
                    <asp:Parameter DefaultValue="11" Name="P_新闻类型代码" Type="String" />
                </SelectParameters>
                        </asp:ObjectDataSource>
            <asp:Repeater ID="rptXXCJ" runat="server" DataSourceID="odsXXCJ">
            <ItemTemplate>
              <li><a href="newsShow.aspx?newsID=<%#Eval("新闻ID") %>"><%#Eval("新闻标题") %></a></li>
            </ItemTemplate>
            </asp:Repeater>
			   	    </ul>
			   </div>
	 	  </div>
   
		
	 </div>
</div>
<script type="text/javascript" src="image/newsShow/home.min0807.js"></script>
<script type="text/javascript" src="image/newsShow/scrollWin.js"></script><style>
.scrollWin{background:#fff; border-left:solid #D70D0E 3px;border-right:solid #D70D0E 3px; width:250px; position:absolute; right:50px; bottom:100px; display:none; overflow:hidden;z-index:999;}
.scrollWin .topArea{background:url(http://www.hubei.gov.cn/images/scrollWin_top_1.gif) left top repeat; margin:0 0;  text-align:center; overflow:hidden; padding:3px 0 0 0;height:26px;*padding:0;*height:26px; cursor:move;}
.scrollWin .title{ font-size:12px;color:#fff; margin:0 0 0 3px;height:22px;line-height:22px;cursor:pointer;}
.scrollWin .minimize{ position: absolute;right:24px; top:8px; background:url(http://www.hubei.gov.cn/images/2008001y_03.gif) left top no-repeat; width:14px; height:14px; cursor:pointer;}
.scrollWin .closewin{position: absolute;right:8px; top:8px; background:url(http://www.hubei.gov.cn/images/2008001y_07.jpg) left top no-repeat; width:14px; height:14px; cursor:pointer;}
.scrollWin .scrollWinLink{ line-height:20px;}
.scrollWin .middleArea{float:left; display:inline;  padding:0 0 0 0;   height:110px; overflow:hidden;font-size:12px; text-align:center; vertical-align:middle;}
.scrollWin .bottomArea{ float:left; width:100%; margin:0 0 3px 0;}
.scrollWin .showBtn{ float:right; cursor:pointer; background:url(http://www.hubei.gov.cn/images/2008001y_18.jpg) left top no-repeat; width:57px; height:20px; margin:0 10px 0 8px;}
.scrollWin .scrollShowMore{float:right;font-size:12px;color:#797676; margin:-3px 8px 0 0;height:20px;line-height:20px;cursor:pointer;}
.scrollWin .bottomArea .time{display:none;}
.scrollWin .bottombg{background:url(http://www.hubei.gov.cn/images/scrollWin_bottom_1.gif) left top repeat-x; height:3px; font-size:1px;}
.scrollWin .content{ width:92%; height:100%; text-align:left; text-indent:2em; margin:0 0 0 5px;}
.scrollWin .middleArea a{ line-height:22px;}
</style>

<script type="text/javascript" src="image/newsShow/opensug.js" charset="gbk"></script><iframe class="bdSug_sd" style="display: none; position: absolute; border-width: 0px;"></iframe><div id="bdSug_1425610789941" class="bdSug_wpr" style="display: none;"></div>
<!-- Piwik -->
<script type="text/javascript">
    var _paq = _paq || [];
    _paq.push(["trackPageView"]);
    _paq.push(["enableLinkTracking"]);

    (function () {
        var u = (("https:" == document.location.protocol) ? "https" : "http") + "://stat.hubei.gov.cn/";
        _paq.push(["setTrackerUrl", u + "piwik.php"]);
        _paq.push(["setSiteId", "1"]);
        var d = document, g = d.createElement("script"), s = d.getElementsByTagName("script")[0]; g.type = "text/javascript";
        g.defer = true; g.async = true; g.src = u + "piwik.js"; s.parentNode.insertBefore(g, s);
    })();
</script>


<!-- End Piwik Code -->
<!-- 模版制作：姚海啸 -->	
<script type="text/javascript" src="image/newsShow/jquery.js"></script>
<script type="text/javascript" src="image/newsShow/tabsview.js"></script>
<script type="text/javascript" src="image/newsShow/webaccess.js"></script>
<script type="text/javascript" src="image/newsShow/accordiontabs.js"></script>
<script type="text/javascript">
    (function () {
        var topTabs = new $.accordionTabs({
            root: '#tabs-nav',
            tabs: '.tab-hd',
            contents: '.tab-md'
        }),
        // 设为首页
	setHome = function () {
	    var c = document.getElementById('lnk-home'), b = 'http://www.hubei.gov.cn/';
	    if (!$.browser.msie) {
	        alert("您的浏览器不支持自动设置主页，请使用浏览器菜单手动设置。");
	        return false;
	    }

	    c.style.behavior = "url(#default#homepage)";
	    c.setHomePage(b);
	},
	mainPost = $('#main'),
	sideBar = $('#sidebar');

        $.tabs({
            root: '#navigation',
            tabs: '.tab-item',
            contents: '.sub-channel',
            evtType: 'mouseover'
        });

        $('#lnk-home').click(function (evt) {
            setHome();

            evt.preventDefault();
            evt.stopPropagation();
        });

        if (sideBar.height() > mainPost.height()) {
            mainPost.css('height', sideBar.height() + 'px');
        }
    })();
</script>
<script type="text/javascript" src="image/newsShow/page_control.js"></script>
<script type="text/javascript">
    pageControl(1, 0, "t20120406_344476", "shtml", 10, 'pages-nav');	
</script>
<script type="text/javascript" src="image/newsShow/backtop.js"></script>
<!-- Piwik -->
<script type="text/javascript">
    var _paq = _paq || [];
    _paq.push(["trackPageView"]);
    _paq.push(["enableLinkTracking"]);

    (function () {
        var u = (("https:" == document.location.protocol) ? "https" : "http") + "://stat.hubei.gov.cn/";
        _paq.push(["setTrackerUrl", u + "piwik.php"]);
        _paq.push(["setSiteId", "1"]);
        var d = document, g = d.createElement("script"), s = d.getElementsByTagName("script")[0]; g.type = "text/javascript";
        g.defer = true; g.async = true; g.src = u + "piwik.js"; s.parentNode.insertBefore(g, s);
    })();
</script>
<!-- End Piwik Code -->
<!-- 模版制作：姚海啸 -->

<!-- Sayso TTS  -->
<script type="text/javascript">
    var _ssq = _ssq || {};
    _ssq = {
        "url": window.location.href,
        "title": "tts-title",
        "text": "tts-text", 		//你希望朗读的文章块的id;
        "player": "tts-player"		//显示播放器的id;
    };
    (function () {
        var u = (("https:" == document.location.protocol) ? "https" : "http") + "://sayso.w3cool.com/";
        var d = document, g = d.createElement("script"), dt = new Date();
        g.type = "text/javascript"; g.defer = true; g.async = true; g.src = u + "web/js?m=" + dt.getMilliseconds(); d.body.appendChild(g);
    })();
</script><script type="text/javascript" defer="" async="" src="image/newsShow/js"></script>
<!-- End Sayso TTS -->


<script type="text/javascript" defer="" async="" src="image/newsShow/swfplayer"></script>
</asp:Content>

