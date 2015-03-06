<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="image/default/layout.css" rel="stylesheet" type="text/css">
<style type="text/css">
.info-counter-list li{color:#000;}
</style>
    <link rel="shortcut icon" type="image/ico" href="http://www.hubei.gov.cn/favicon.ico">
    	<!--<base target="_blank">--><base href="." target="_blank">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ObjectDataSource ID="odsAim" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByClass" 
        TypeName="_defaultTableAdapters.TA_中心信息TableAdapter" DeleteMethod="Delete" 
        InsertMethod="Insert" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_信息ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="信息ID" Type="String" />
            <asp:Parameter Name="信息类别" Type="String" />
            <asp:Parameter Name="信息内容" Type="Object" />
            <asp:Parameter Name="备用1" Type="String" />
            <asp:Parameter Name="备用2" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="中心目标" Name="信息类别" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="信息类别" Type="String" />
            <asp:Parameter Name="信息内容" Type="Object" />
            <asp:Parameter Name="备用1" Type="String" />
            <asp:Parameter Name="备用2" Type="String" />
            <asp:Parameter Name="Original_信息ID" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>


<div class="wrap headline">
	 <asp:ObjectDataSource ID="odsOpt" runat="server" 
         DeleteMethod="Delete" InsertMethod="Insert" 
         OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByClass" 
         TypeName="_defaultTableAdapters.TA_中心信息TableAdapter" UpdateMethod="Update">
         <DeleteParameters>
             <asp:Parameter Name="Original_信息ID" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="信息ID" Type="String" />
             <asp:Parameter Name="信息类别" Type="String" />
             <asp:Parameter Name="信息内容" Type="Object" />
             <asp:Parameter Name="备用1" Type="String" />
             <asp:Parameter Name="备用2" Type="String" />
         </InsertParameters>
         <SelectParameters>
             <asp:Parameter DefaultValue="中心功能" Name="信息类别" Type="String" />
         </SelectParameters>
         <UpdateParameters>
             <asp:Parameter Name="信息类别" Type="String" />
             <asp:Parameter Name="信息内容" Type="Object" />
             <asp:Parameter Name="备用1" Type="String" />
             <asp:Parameter Name="备用2" Type="String" />
             <asp:Parameter Name="Original_信息ID" Type="String" />
         </UpdateParameters>
     </asp:ObjectDataSource>
     <asp:ObjectDataSource ID="odsTask" runat="server" 
         DeleteMethod="Delete" InsertMethod="Insert" 
         OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByClass" 
         TypeName="_defaultTableAdapters.TA_中心信息TableAdapter" UpdateMethod="Update">
         <DeleteParameters>
             <asp:Parameter Name="Original_信息ID" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="信息ID" Type="String" />
             <asp:Parameter Name="信息类别" Type="String" />
             <asp:Parameter Name="信息内容" Type="Object" />
             <asp:Parameter Name="备用1" Type="String" />
             <asp:Parameter Name="备用2" Type="String" />
         </InsertParameters>
         <SelectParameters>
             <asp:Parameter DefaultValue="中心任务" Name="信息类别" Type="String" />
         </SelectParameters>
         <UpdateParameters>
             <asp:Parameter Name="信息类别" Type="String" />
             <asp:Parameter Name="信息内容" Type="Object" />
             <asp:Parameter Name="备用1" Type="String" />
             <asp:Parameter Name="备用2" Type="String" />
             <asp:Parameter Name="Original_信息ID" Type="String" />
         </UpdateParameters>
     </asp:ObjectDataSource>
     <asp:ObjectDataSource ID="odsMan" runat="server" 
         DeleteMethod="Delete" InsertMethod="Insert" 
         OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByClass" 
         TypeName="_defaultTableAdapters.TA_中心信息TableAdapter" UpdateMethod="Update">
         <DeleteParameters>
             <asp:Parameter Name="Original_信息ID" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="信息ID" Type="String" />
             <asp:Parameter Name="信息类别" Type="String" />
             <asp:Parameter Name="信息内容" Type="Object" />
             <asp:Parameter Name="备用1" Type="String" />
             <asp:Parameter Name="备用2" Type="String" />
         </InsertParameters>
         <SelectParameters>
             <asp:Parameter DefaultValue="管理机制" Name="信息类别" Type="String" />
         </SelectParameters>
         <UpdateParameters>
             <asp:Parameter Name="信息类别" Type="String" />
             <asp:Parameter Name="信息内容" Type="Object" />
             <asp:Parameter Name="备用1" Type="String" />
             <asp:Parameter Name="备用2" Type="String" />
             <asp:Parameter Name="Original_信息ID" Type="String" />
         </UpdateParameters>
     </asp:ObjectDataSource>
	 <div class="grid-500 flt-l">
                  <div class="slide-news" id="slide-news">
     
	 	  	   <div class="slide-md hide">
	 	  	   	    <h2 class="slide-hd"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150305_623933.shtml" target="_blank">十二届全国人大三次会议在京开幕</a></h2>
	 	  	   	    <p class="slide-bd"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150305_623933.shtml" target="_blank"><img src="image/default/W020150305582604218020.jpg" width="558" height="354" border="0"></a></p>
					<p class="slide-ft"></p>
	 	  	   </div>
                           
                           
	 	  	   <div class="slide-md hide">
	 	  	   	    <h2 class="slide-hd"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150305_623919.shtml" target="_blank">李克强作政府工作报告</a></h2>
	 	  	   	    <p class="slide-bd"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150305_623919.shtml" target="_blank"><img src="image/default/W020150305584342352839.jpg" width="558" height="354" border="0"></a></p>
					<p class="slide-ft"></p>
	 	  	   </div>
                           
	 	  	   <div class="slide-md">
	 	  	   	    <h2 class="slide-hd"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150304_622995.shtml" target="_blank">全国政协十二届三次会议在京开幕</a></h2>
	 	  	   	    <p class="slide-bd"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150304_622995.shtml" target="_blank"><img src="image/default/W020150304303487675659.jpg" width="558" height="354" border="0"></a></p>
					<p class="slide-ft"></p>
	 	  	   </div>
                           
	 	  	   <div class="slide-md hide">
	 	  	   	    <h2 class="slide-hd"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150302_621434.shtml" target="_blank">希望厨房开学第一餐</a></h2>
	 	  	   	    <p class="slide-bd"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150302_621434.shtml" target="_blank"><img src="image/default/W020150302309728867412.jpg" width="558" height="354" border="0"></a></p>
					<p class="slide-ft"></p>
	 	  	   </div>
                           
			   <ul class="slide-tabs">
                                                                     
                    <li class="tab"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150305_623933.shtml">1</a></li>
                    
                                                                     
                    <li class="tab"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150305_623919.shtml">2</a></li>
                    
                                                 
                    <li class="tab current"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150304_622995.shtml">3</a></li>
 
                                                 
                    <li class="tab"><a href="http://www.hubei.gov.cn/zwgk/zwtpxw/201503/t20150302_621434.shtml">4</a></li>
 
               </ul>
	 	  </div>
	 </div>
	 <div class="grid-450 flt-r">
                  <div class="md yw-md" id="first-tabs">
  <div class="hd">
    <ul class="hd-tabs">
      <li class="tab first"><a href="http://www.hubei.gov.cn/zwgk/gwy/">中心目标</a></li>
      <li class="tab "><a href="http://www.hubei.gov.cn/zwgk/hbyw/">中心功能</a></li>
      <li class="tab"><a href="http://www.hubei.gov.cn/zwgk/rdgz/">中心任务</a></li>
      <li class="tab current"><a href="http://www.hubei.gov.cn/zwgk/bmdt/">管理机制 </a></li>

    </ul>
  </div>
  <div class="bd yw-bd" style="height:294px;overflow:hidden;">
    <ul class="bd-list">
        <asp:Repeater ID="rptAim" runat="server" DataSourceID="odsAim">
            <ItemTemplate>
                <%#Eval("信息内容")%>
            </ItemTemplate>
        </asp:Repeater>  
    </ul>
        <ul class="bd-list hide">
        <asp:Repeater ID="rptOpt" runat="server" DataSourceID="odsOpt">
            <ItemTemplate>
                <%#Eval("信息内容")%>
            </ItemTemplate>
        </asp:Repeater>  
    </ul>
        <ul class="bd-list hide">
        <asp:Repeater ID="rptTask" runat="server" DataSourceID="odsTask">
            <ItemTemplate>
                <%#Eval("信息内容")%>
            </ItemTemplate>
        </asp:Repeater>  
    </ul>
        <ul class="bd-list hide">
        <asp:Repeater ID="rptMan" runat="server" DataSourceID="odsMan">
            <ItemTemplate>
                <%#Eval("信息内容")%>
            </ItemTemplate>
        </asp:Repeater>  
    </ul>
    
   
  </div>
</div> 
               	  	 	  
	 </div>
</div>

<div class="wrap infopen">
	           <div class="grid-700 flt-l visible">
                  <div class="mar-b-10 hd channel-hd">
	 	  	   <h2 class="hd-title"><a href="http://gkml.hubei.gov.cn/" title="信息公开">信息公开</a></h2>
			  
			   &nbsp;</div>
                  <div class="grid-320 flt-l md last-nots-md" id="last-notes">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="http://www.hubei.gov.cn/zwgk/zxwj/">时政要闻</a></h2>
					 </div>
			   <div class="bd" style="height:156px;">
			   	    <ul class="bd-list">
            <asp:ObjectDataSource ID="odsSZYW" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="_defaultTableAdapters.显示新闻列表TableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="6" Name="P_显示条数" Type="Decimal" />
                    <asp:Parameter DefaultValue="" Direction="Output" Name="P_RESULT" 
                        Type="Object" />
                    <asp:Parameter DefaultValue="12" Name="P_新闻类型代码" Type="String" />
                </SelectParameters>
                        </asp:ObjectDataSource>
            <asp:Repeater ID="rptSZYW" runat="server">
            <ItemTemplate>
             <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html"></a></li>
            </ItemTemplate>
            </asp:Repeater>
                    
                
                  
			   	    </ul>
			   </div>
	 	  </div>
                  <div class="grid-330 flt-r md infopen-guid-md" id="infopen-guid">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="http://gkml.hubei.gov.cn/">党章党史</a></h2>
					 </div>
			   <div class="bd" style="height:156px;">
			   	    <ul class="bd-list">

                              <asp:ObjectDataSource ID="odsDZDS" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="_defaultTableAdapters.显示新闻列表TableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="6" Name="P_显示条数" Type="Decimal" />
                    <asp:Parameter DefaultValue="" Direction="Output" Name="P_RESULT" 
                        Type="Object" />
                    <asp:Parameter DefaultValue="13" Name="P_新闻类型代码" Type="String" />
                </SelectParameters>
                        </asp:ObjectDataSource>
            <asp:Repeater ID="rptDZDS" runat="server">
            <ItemTemplate>
             <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html"></a></li>
            </ItemTemplate>
            </asp:Repeater>
			   	    </ul>
			   </div>
	 	  </div>
                  <div class="grid-320 flt-l md lzdt-news-md" id="lzdt-news">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="http://www.hubei.gov.cn/zwgk/lzjs/">热点关注</a></h2>
                               </div>
			   <div class="bd"style="height:174px;">
			   	    <ul class="bd-list lzdt-list">

                              <asp:ObjectDataSource ID="odsRDGZ" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="_defaultTableAdapters.显示新闻列表TableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="6" Name="P_显示条数" Type="Decimal" />
                    <asp:Parameter DefaultValue="" Direction="Output" Name="P_RESULT" 
                        Type="Object" />
                    <asp:Parameter DefaultValue="14" Name="P_新闻类型代码" Type="String" />
                </SelectParameters>
                        </asp:ObjectDataSource>
            <asp:Repeater ID="rptRDGZ" runat="server">
            <ItemTemplate>
             <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html"></a></li>
            </ItemTemplate>
            </asp:Repeater>
			   	    </ul>
			   </div>
	 	  </div>
<div class="grid-370 flt-r md projects-md visible" id="projects">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="http://gcjs.cnhubei.com/">高校风采</a></h2>
			   </div>
		  <div class="bd" style="height:174px;">
			   	    <ul class="bd-list lzdt-list" style="height:104px;">

                              <asp:ObjectDataSource ID="odsGXFC" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="_defaultTableAdapters.显示新闻列表TableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="6" Name="P_显示条数" Type="Decimal" />
                    <asp:Parameter DefaultValue="" Direction="Output" Name="P_RESULT" 
                        Type="Object" />
                    <asp:Parameter DefaultValue="15" Name="P_新闻类型代码" Type="String" />
                </SelectParameters>
                        </asp:ObjectDataSource>
            <asp:Repeater ID="rptGXFC" runat="server">
            <ItemTemplate>
             <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html"></a></li>
            </ItemTemplate>
            </asp:Repeater>
			   	    </ul>
			   </div>
	 	  </div>
 </div>
                   <div class="grid-250 flt-r">
                   <div class="md notes-md" id="third-tabs">
	 	  	   <div class="hd">
	 	  	   	    <ul class="hd-tabs">
	 	  	   	    	<li class="tab first current"><a href="http://www.hubei.gov.cn/zwgk/tzgg/">理论研究</a></li>
	 	  	   	    	<li class="tab"><a href="http://www.hubei.gov.cn/zwgk/zcsd/">实务服务</a></li>
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
            <asp:Repeater ID="rptLLYJ" runat="server">
            <ItemTemplate>
             <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html"></a></li>
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
            <asp:Repeater ID="rptSWFW" runat="server">
            <ItemTemplate>
             <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html"></a></li>
            </ItemTemplate>
            </asp:Repeater>
			   	    </ul>
			   </div>
	 	  </div>
	 	   <div class="md yj-man-md" id="yj-man">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="http://yj.hubei.gov.cn/">工作评价</a></h2>
	 	  	   	    
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
            <asp:Repeater ID="rptGZPJ" runat="server">
            <ItemTemplate>
             <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html"></a></li>
            </ItemTemplate>
            </asp:Repeater>
			   	    </ul>
			   </div>
	 	  </div>
	 	   <div class="md yjsc-md" id="yj-cookbook">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title">信息采集</h2>
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
            <asp:Repeater ID="rptXXCJ" runat="server">
            <ItemTemplate>
             <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html"></a></li>
            </ItemTemplate>
            </asp:Repeater>
			   	    </ul>
			   </div>
	 	  </div>
   
		
	 </div>
</div>
	 </div>
	 </div>
   
<script type="text/javascript" src="image/default/home.min0807.js"></script>
<script type="text/javascript" src="image/default/scrollWin.js"></script><style>
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

<script type="text/javascript" src="image/default/opensug.js" charset="gbk"></script><iframe class="bdSug_sd" style="display: none; position: absolute; border-width: 0px;"></iframe><div id="bdSug_1425544145085" class="bdSug_wpr" style="display: none;"></div>
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
<script type="text/javascript">
    // 公务员监督切换脚本
    (function () {
        $.tabs({
            root: '#eighth-tabs',
            tabs: '.title-tab',
            contents: '.bd',
            evtType: 'mouseover'
        });
        (function () {
            var titleTabs = $('.title-tab'),
	    jbTab = $($('.jb-hd-more')[0]);

            titleTabs.each(function (i, tab) {
                $(tab).mouseover(function (evt) {
                    if (i === 0) {
                        jbTab.removeClass('hide');
                    }
                    else {
                        jbTab.addClass('hide');
                    }
                });
            });
        })();

        // 对联广告关闭脚本
        $('.advs-close').each(function (i, lnk) {
            $(lnk).click(function (evt) {
                $(this).parent().remove();

                evt.preventDefault();
                evt.stopPropagation();
            });
        });
    })();	
</script>
</asp:Content>

