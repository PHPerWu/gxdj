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

    <div class="wrap container">
	 <div class="main" id="main">
	 	 <p class="current-page">您所在的位置：<a href="http://www.hubei.gov.cn/hbgk/lsrw/" target="_self" title="历史人文" class="CurrChnlCls">历史人文</a></p>
<!--titlestart-->		 
		 <h1 class="gov-news-title" id="tts-title"><p align="center"><strong>
    <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></strong></p></h1>
<!--titleend-->
<!--metastart-->		 
		 <cite class="gov-news-meta"><span>湖北高校党建研究中心</span><span>www.hubei.gov.cn</span><span>来源：</span></cite>
<!--metaend-->
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


    <asp:Label ID="lblContent" runat="server" Text=""></asp:Label>
</div>
</div>
         </div>
		 <div id="pages-nav" class="pages-nav"></div>
<!--postend-->
	     <div class="related-post">
	     	  <h2>相关消息</h2>
			  <ul class="related-post-list">
			  	  
			  </ul>
	     </div>
	 </div>
        <div class="grid-250 flt-r">
            <div id="third-tabs" class="md notes-md">
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
                                <li><a href='newsShow.aspx?newsID=<%#Eval("新闻ID") %>'><%#Eval("新闻标题") %></a>
                                </li>
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
                                <li><a href='newsShow.aspx?newsID=<%#Eval("新闻ID") %>'><%#Eval("新闻标题") %></a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <div id="yj-man" class="md yj-man-md">
                <div class="hd">
                    <h2 class="hd-title">
                        <a href="newsList.aspx?newsClass=10">工作评价</a></h2>
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
                                <li><a href='newsShow.aspx?newsID=<%#Eval("新闻ID") %>'><%#Eval("新闻标题") %></a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <div id="yj-cookbook" class="md yjsc-md">
                <div class="hd">
                    <h2 class="hd-title">
                        <a href="newsList.aspx?newsClass=11">信息采集</a></h2>
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
                                <li><a href='newsShow.aspx?newsID=<%#Eval("新闻ID") %>'><%#Eval("新闻标题") %></a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
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
    </div>
    </div>
</asp:Content>

