<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0055)http://i.tianqi.com/index.php?c=code&id=26&icon=1&num=3 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">

<title>武汉天气预报代码调用</title>
<link href="mobile.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#mobile1 .divCurrentWeather img{ padding: 0 5px ;}
</style>
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">
var color = bgcolor = bdcolor = site = icon = "";
var num = wind = 0;
$(document).ready(function(){
	init();

	if (typeof(bgcolor) != 'undefined' && bgcolor != '') {
		$("#mobile1").css('background-color', bgcolor);
	}
	if (typeof(bdcolor) != 'undefined' && bdcolor != '') {
		$("#mobile1").css('border', '1px solid ' + bdcolor);
	}
	if (typeof(color) != 'undefined' && color != '') {
		$("#mobile1 a").css('color', color);
	}
	if (typeof(site) != 'undefined' && site == 'zgwdq') {
		$("#link_more").html('[<a class="cc30" href="http://www.tianqi.com/data/html/code_city.html?site=sds">更换城市</a>]');
	}
	if (typeof(wind) != 'undefined' && wind == 0) {
		$("#mobile1 span.wind").remove();
	}
});
function init()
{
    if(num == 0) num=2;

    if(num == 1) {
    	$("div.divForecastWeather").remove();
    }
	if (typeof(icon) != 'undefined' && icon != '') {
		$("img.pngtqico").each(function(i){
			this.src = this.src.replace("images/tianqi", "images/" + icon);
		});
	}
}
</script>
</head>
<body marginwidth="0" marginheight="0" style="background-color:transparent;">
<div id="mobile1" class="code1">
	<a target="_blank" href="http://wuhan.tianqi.com/?tq" title="武汉天气预报,点击查看武汉未来七天天气预报 ">
		<div class="cityname">武汉</div>
		<div class="divCurrentWeather">
			<img class="pngtqico" align="absmiddle" src="d06.png" style="border:0;width:20px;height:20px">雨夹雪转小雨
			<span class="cc30">5℃</span>～<span class="c390">1℃</span>
		</div>
		
	</a>
	<div id="link_more" class="order">
			
		</div>
</div>
<div style="display:none"><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F86f43783acc56b0c8abb5bb039edc763' type='text/javascript'%3E%3C/script%3E"));
</script><script src="h.js" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=86f43783acc56b0c8abb5bb039edc763" target="_blank"><img border="0" src="21.gif" width="20" height="20"></a></div>
<script type="text/javascript">num=3;icon="tqicon1";wind=0;temp=0;</script></body></html>