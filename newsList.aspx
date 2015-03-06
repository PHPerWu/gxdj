﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newsList.aspx.cs" Inherits="newsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="image/newsList/list.css" rel="stylesheet" type="text/css" media="all">
      <link href="image/newsList/layout.css" rel="stylesheet" type="text/css">
<style type="text/css">
.info-counter-list li{color:#000;}
</style>
    <link rel="shortcut icon" type="image/ico" href="http://www.hubei.gov.cn/favicon.ico">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="wrap container">
	 <div class="main" id="main" style="height: 1246px;">
	 	 <p class="current-page">您所在的位置：<a href="image/newsList/新闻列表.htm" target="_self" title="历史人文" class="CurrChnlCls"><asp:Label
    ID="lblTitle" runat="server" Text=""></asp:Label></a></p>
         <ul class="news-list">
         	
                              <asp:ObjectDataSource ID="odsList" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="_defaultTableAdapters.显示新闻列表TableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="100000" Name="P_显示条数" Type="Decimal" />
                    <asp:Parameter DefaultValue="" Direction="Output" Name="P_RESULT" 
                        Type="Object" />
                    <asp:QueryStringParameter DefaultValue="" Name="P_新闻类型代码" 
                        QueryStringField="newsClass" Type="String" />
                </SelectParameters>
                        </asp:ObjectDataSource>
            <asp:Repeater ID="rptList" runat="server" DataSourceID="odsList">
            <ItemTemplate>
             <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html"></a></li>
            </ItemTemplate>
            </asp:Repeater>
         </ul> 
		 <div id="pages-nav" class="pages-nav"></div>
	 </div>
	 <div id="third-tabs" class="md notes-md">
         <div class="hd">
             <ul class="hd-tabs">
                 <li class="tab first current"><a href="http://www.hubei.gov.cn/zwgk/tzgg/">理论研究</a></li>
                 <li class="tab"><a href="http://www.hubei.gov.cn/zwgk/zcsd/">实务服务</a></li>
             </ul>
         </div>
         <div class="bd notes-bd">
             <ul class="bd-list">
                 <li><a href="http://www.hbsjg.gov.cn/hubeijiaoguan_xinwenjujiao/2015/02/27/64564d54a9b94aa8b43908a184d7c7c0.html#top">
                     春节长假期间全省道路交通安全畅通有序</a></li>
                 <li><a href="http://www.hubei.gov.cn/zwgk/tzgg/201501/t20150127_613731.shtml">
                     2013年度湖北省收费公路统计公报</a></li>
                 <li><a href="http://www.hubei.gov.cn/zwgk/tzgg/201501/t20150120_611529.shtml">
                     中共湖北省委组织部干部任前公示公告</a></li>
                 <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201501/t20150101_605286.html">
                     2014年淘汰落后和过剩产能检查验收公告</a></li>
             </ul>
             <ul class="bd-list hide">
                 <li><a href="http://www.hbsjg.gov.cn/hubeijiaoguan_xinwenjujiao/2015/02/27/64564d54a9b94aa8b43908a184d7c7c0.html#top">
                     春节长假期间全省道路交通安全畅通有序</a></li>
                 <li><a href="http://www.hubei.gov.cn/zwgk/zcsd/201503/t20150304_623359.shtml">
                     2015年省委1号文件解读</a></li>
                 <li><a href="http://www.hubei.gov.cn/zwgk/zcsd/201503/t20150303_622420.shtml">
                     解读《全省出生人口登记管理十二条规定》</a></li>
                 <li><a href="http://www.hubei.gov.cn/zwgk/zcsd/201503/t20150302_621898.shtml">
                     《湖北生态省建设规划纲要》解读</a></li>
             </ul>
         </div>
     </div>
     <div id="yj-man" class="md yj-man-md">
         <div class="hd">
             <h2 class="hd-title">
                 <a href="http://yj.hubei.gov.cn/">工作评价</a></h2>
         </div>
         <div class="bd yjgl-bd">
             <ul class="bd-list">
                 <li><a href="http://www.hbsjg.gov.cn/hubeijiaoguan_xinwenjujiao/2015/02/27/64564d54a9b94aa8b43908a184d7c7c0.html#top">
                     春节长假期间全省道路交通安全畅通有序</a></li>
                 <li><a href="http://www.hubei.gov.cn/zwgk/yjgl/201503/t20150302_622141.shtml">
                     六部门发文禁止个人网上发布危险物品信息</a></li>
                 <li><a href="http://www.hubeisafety.gov.cn/content/content_a.asp?id=10181">
                     省安监局发布1月份全省安全生产形势分析</a></li>
                 <li><a href="http://www.hubei.gov.cn/zwgk/yjgl/201502/t20150224_619804.shtml">
                     全省铁路客流高位运行 迎来节后高峰</a></li>
             </ul>
         </div>
     </div>
     <div id="yj-cookbook" class="md yjsc-md">
         <div class="hd">
             <h2 class="hd-title">
                 信息采集</h2>
         </div>
         <div class="bd yjgl-bd" style="height:124px;">
             <ul class="bd-list">
                 <li><a href="http://www.hbsjg.gov.cn/hubeijiaoguan_xinwenjujiao/2015/02/27/64564d54a9b94aa8b43908a184d7c7c0.html#top">
                     春节长假期间全省道路交通安全畅通有序</a></li>
                 <li><a href="http://www.hubei.gov.cn/zwgk/yjgl/201503/t20150302_622141.shtml">
                     六部门发文禁止个人网上发布危险物品信息</a></li>
                 <li><a href="http://www.hubeisafety.gov.cn/content/content_a.asp?id=10181">
                     省安监局发布1月份全省安全生产形势分析</a></li>
                 <li><a href="http://www.hubei.gov.cn/zwgk/yjgl/201502/t20150224_619804.shtml">
                     全省铁路客流高位运行 迎来节后高峰</a></li>
             </ul>
         </div>
     </div>
</div>
<script type="text/javascript" src="image/newsList/home.min0807.js"></script>
<script type="text/javascript" src="image/newsList/scrollWin.js"></script><style>
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

<script type="text/javascript" src="image/newsList/opensug.js" charset="gbk"></script><iframe class="bdSug_sd" style="display: none; position: absolute; border-width: 0px;"></iframe><div id="bdSug_1425610752851" class="bdSug_wpr" style="display: none;"></div>
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
<script type="text/javascript" src="image/newsList/jquery.js"></script>
<script type="text/javascript" src="image/newsList/tabsview.js"></script>
<script type="text/javascript" src="image/newsList/webaccess.js"></script>
<script type="text/javascript" src="image/newsList/accordiontabs.js"></script>
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
<script type="text/javascript" src="image/newsList/page_control.js"></script>
<script type="text/javascript">
    pageControl(1, 0, "index", "shtml", 10, 'pages-nav');	
</script>
<!-- Piwik --> 
<script type="text/javascript">
    (function () {
        var pkBaseURL = (("https:" == document.location.protocol) ? "https://stat.hubei.gov.cn/" : "http://stat.hubei.gov.cn/");

        document.write(unescape("%3Cscript src='" + pkBaseURL + "piwik.js' type='text/javascript'%3E%3C/script%3E"));

        try {
            var piwikTracker = Piwik.getTracker(pkBaseURL + "piwik.php", 1);
            piwikTracker.trackPageView();
            piwikTracker.enableLinkTracking();
        }
        catch (err) {
        }
    })();
</script><script src="image/newsList/piwik.js" type="text/javascript"></script>
<noscript>&lt;p&gt;&lt;img src="http://stat.hubei.gov.cn/piwik.php?idsite=1" style="border:0" alt /&gt;&lt;/p&gt;</noscript>
<!-- End Piwik Tracking Code -->
<!-- 模版制作：姚海啸 -->
</asp:Content>
