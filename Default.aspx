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
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="_defaultTableAdapters.显示新闻列表TableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="P_显示条数" Type="Decimal" />
            <asp:Parameter DefaultValue="" Direction="Output" Name="P_RESULT" 
                Type="Object" />
        </SelectParameters>
    </asp:ObjectDataSource>

<!-- <div class="side-advs side-advs-r">
     <p><a href="http://en.hubei.gov.cn/zwenfr/"><img src="http://www.hubei.gov.cn/images/tianyibei.jpg" alt="天怡杯" width="100" height="290" /></a></p>
    <a href="#close" class="advs-close">关闭</a>
</div> 

<div class="side-advs side-advs-r">
    <p><a href="http://en.hubei.gov.cn/zwenfr/"><img src="http://www.hubei.gov.cn/images/tianyibei.jpg" alt="天怡杯" width="100" height="290" /></a></p>
    <a href="#close" class="advs-close">关闭</a>
</div>  -->
<div class="wrap top-navigation w_top first-wrap" id="top-navigation">
	 <div class="wrap">
	 <ul class="top-lang-nav">
	 	 <li class="zw_zw"><a href="image/default/湖北省人民政府门户网站.htm">简体中文版</a></li>
		 <li><a href="http://en.hubei.gov.cn/">English</a></li>
		 <li><a href="http://fr.hubei.gov.cn/">Français</a></li>
		 <li><a href="http://www.hubei.gov.cn/#web-accessibility" id="web-accessibility">无障碍阅读</a></li>
	 </ul>
	 <ul class="top-info-nav">
	 	 <li><a href="http://tg.hubei.gov.cn:8000/wcm/">信息报送</a></li>
		 <li><a href="http://mail.hubei.gov.cn:8080/">邮箱</a></li>
		 <li><a href="image/default/湖北省人民政府门户网站.htm" id="lnk-home">设为首页</a></li>
	 </ul>
	 <div class="weather"><iframe width="280" scrolling="no" height="25" frameborder="0" allowtransparency="true" src="image/default/index.php"></iframe></div>
	 </div>
</div>
<div class="wrap logo">
     <h1><a href="image/default/湖北省人民政府门户网站.htm" title="湖北省人民政府" target="_self">湖北省人民政府</a></h1>
</div>
<div class="wrap main-navigation" id="main-navigation">
	 <div class="main-nav">
	 	  <ul class="main-channels visible">
              <li class="tab">
              	  
                  <a href="image/default/湖北省人民政府门户网站.htm" target="_self">首页</a>
                  
				  <ul class="sub-menu hide">
				  	  <li>湖北高校党建研究中心欢迎您! </li>
				  </ul>
			  </li>
			  <li class="tab">
			  	  
                  <a href="http://www.hubei.gov.cn/zwgk/zfld/szzc/sld01/" target="_self">中心简介</a>
                  
				  <ul class="sub-menu leaders-menu hide">
                      			
                      <li><a href="http://www.hubei.gov.cn/zwgk/zfld/szzc/sld01/">中心目标</a></li>
                      			
                      <li><a href="http://www.hubei.gov.cn/zwgk/zfld/szzc/sld12_1/index.shtml">中心功能</a></li>
                      			
                      <li><a href="http://www.hubei.gov.cn/zwgk/zfld/szzc/sld03/">中心任务</a></li>
                      			
                      <li><a href="http://www.hubei.gov.cn/zwgk/zfld/szzc/fszcgj/">管理机制</a></li>
			      </ul>
			  </li>
			  <li class="tab">
			  	  
                  <a href="http://www.hubei.gov.cn/hbgk/" target="_self">组织机构</a>
                  
				  <ul class="sub-menu intro-menu hide">
                     			
                      <li><a href="http://www.hubei.gov.cn/hbgk/zrdl/">领导小组</a></li>
                      			
                      <li><a href="http://www.hubei.gov.cn/hbgk/lsrw/">运行平台</a></li>
                      			
                      <li><a href="http://www.hubei.gov.cn/hbgk/index.shtml">专家委员会</a></li>
                      			
                     
                        
		          </ul>
			  </li>
              <li class="tab">
              	  
                  <a href="http://www.hubei.gov.cn/zwgk/index.shtml" target="_self">党建研究</a>
                  
			      <ul class="sub-menu open-menu hide">
                      			
                      <li><a href="http://gkml.hubei.gov.cn/">理论研究</a></li>
                      			
                      <li><a href="http://www.hubei.gov.cn/zwgk/zfld/szzc/sld01/">实务服务</a></li>
                      			
                      <li><a href="http://gkml.hubei.gov.cn/index.htm?classInfoId=974">工作评价</a></li>
                      			
                      <li><a href="http://gkml.hubei.gov.cn/index.htm?classInfoId=991">信息采集</a></li>
                     
		          </ul>
			  </li>
              <li class="tab">
              	  
                  <a href="http://www.hubei.gov.cn/wsbs/index.shtml" target="_self">党建动态</a>
                  
				  <ul class="sub-menu online-menu hide">
                       			
                      <li><a href="http://www.hubei.gov.cn/wsbs/bsfwtis/qc/">时政要闻</a></li>
                      			
                      <li><a href="http://www.hubei.gov.cn/wsbs/index.shtml">党章党史</a></li>
                      			
                      <li><a href="http://www.hubei.gov.cn/wsbs/index.shtml">热点关注</a></li>
                      			
                      <li><a href="http://www.hubei.gov.cn/wsbs/index.shtml">高校风采</a></li>
                    
		          </ul>
			  </li>
              <li class="tab">
              	   
                  <a href="http://www.hubei.gov.cn/gzhd/" target="_self">规章制度</a>
                  
				   <ul class="sub-menu inter-menu hide">
                      			
                      <li><a href="http://wsxf.hbzw.gov.cn:8001/acceptOutQuery.qd">中心管理办法</a></li>
                      			
                      <li><a href="http://www.hubei.gov.cn/gzhd/zxft/">专家委员会章程</a></li>
                       
                      	
		           </ul>
			  </li>
              <li class="tab">
              	   
                  <a href="http://www.hubei.gov.cn/tzhb/" target="_self">资源共享</a>
                  
				 
			  </li>


	 	  </ul>





		
	 </div>
</div>
<div class="wrap headline">
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
      <li class="tab"><a href="http://www.hubei.gov.cn/zwgk/gwy/">中心目标</a></li>
      <li class="tab first"><a href="http://www.hubei.gov.cn/zwgk/hbyw/">中心功能</a></li>
      <li class="tab"><a href="http://www.hubei.gov.cn/zwgk/rdgz/">中心任务</a></li>
      <li class="tab current"><a href="http://www.hubei.gov.cn/zwgk/bmdt/">管理机制 </a></li>

    </ul>
  </div>
  <div class="bd yw-bd" style="height:294px;overflow:hidden;">
    <ul class="bd-list">
        <asp:Repeater ID="rptAim" runat="server">
            <ItemTemplate>
                
            </ItemTemplate>
        </asp:Repeater>  
    </ul>
        <ul class="bd-list hide">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                
            </ItemTemplate>
        </asp:Repeater>  
    </ul>
        <ul class="bd-list hide">
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                
            </ItemTemplate>
        </asp:Repeater>  
    </ul>
        <ul class="bd-list hide">
        <asp:Repeater ID="Repeater3" runat="server">
            <ItemTemplate>
                
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
			   <form class="hd-form" method="post" id="hd-form" name="hd-form" action="http://so.hubei.gov.cn/search.php">
				     <input type="text" class="key" name="query" id="gkml-key" placeholder="请输入要搜索的关键字！" vlaue="">
                                     <input type="hidden" value="Web" name="service_op">
					 <button type="submit" class="button" name="gkml-submit" id="gkml-submit">目录搜索</button>
			   </form>
			   &nbsp;</div>
                  <div class="grid-320 flt-l md last-nots-md" id="last-notes">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="http://www.hubei.gov.cn/zwgk/zxwj/">时政要闻</a></h2>
					<span class="hd-more"><a href="http://www.hubei.gov.cn/zwgk/rdzt_v12/2014mhwzt/2014shbmys/" id="lnk-2013ys-open">2014部门预算公开</a>&nbsp;&nbsp;<a href="http://www.hubei.gov.cn/zwgk/zfxxgkzt/2013bmjs/" id="lnk-2013ys-open">2013部门决算公开</a></span>
			   </div>
			   <div class="bd">
			   	    <ul class="bd-list">

                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html">省人民政府关于规范性文件清理结果的决定</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619586.html">省人民政府办公厅关于印发湖北省信访听证办法的通知</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619582.html">关于开展非法集资风险专项排查处置活动的通知</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619597.html">省人民政府关于加强环境监管能力建设的意见</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619584.html">关于印发湖北省环境保护大检查工作方案的通知</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619596.html">关于加快推动能源生产和消费革命的指导意见</a></li>
                   	
			   	    </ul>
			   </div>
	 	  </div>
                  <div class="grid-330 flt-r md infopen-guid-md" id="infopen-guid">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="http://gkml.hubei.gov.cn/">党章党史</a></h2>
					<span class="hd-more"><a href="http://www.hubei.gov.cn/zwgk/zdlyxxgk/" id="lnk-important-infopen">重点领域信息公开</a></span>
			   </div>
			   <div class="bd">
			   	    <ul class="bd-list">

                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619593.html">省人民政府关于规范性文件清理结果的决定</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619586.html">省人民政府办公厅关于印发湖北省信访听证办法的通知</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619582.html">关于开展非法集资风险专项排查处置活动的通知</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619597.html">省人民政府关于加强环境监管能力建设的意见</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619584.html">关于印发湖北省环境保护大检查工作方案的通知</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201502/t20150217_619596.html">关于加快推动能源生产和消费革命的指导意见</a></li>
                   	
			   	    </ul>
			   </div>
	 	  </div>
                  <div class="grid-320 flt-l md lzdt-news-md" id="lzdt-news">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="http://www.hubei.gov.cn/zwgk/lzjs/">热点关注</a></h2>
                                    <span class="hd-more"><a href="http://www.hbjwjc.gov.cn/info/iIndex.jsp?cat_id=10807">纠正“四风”监督举报直通车</a></span>
			   </div>
			   <div class="bd">
			   	    <ul class="bd-list lzdt-list">

                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150305_623546.shtml">[案件查处]武汉江夏区常务副区长黄文超被调查</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150304_623237.shtml">[廉政要闻]中纪委:省区市巡视要重点监督地市县一把手</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150304_623231.shtml">[廉政要闻]从中央巡视组首轮巡视透视2015反腐新看点</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150302_622015.shtml">[曝光台]鄂州点名通报17起顶风违纪行为</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150301_621380.shtml">[案件查处]龙福清涉嫌严重违纪受调查</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150301_621381.shtml">[案件查处]王绍志涉嫌严重违纪受调查</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150301_621382.shtml">[案件查处]襄阳市委原常委夏先禄被“双开”</a></li>
                                  	
			   	    </ul>
			   </div>
	 	  </div>
<div class="grid-370 flt-r md projects-md visible" id="projects">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="http://gcjs.cnhubei.com/">高校风采</a></h2>
			   </div>
		  <div class="bd">
			   	    <ul class="bd-list lzdt-list">

                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150305_623546.shtml">[案件查处]武汉江夏区常务副区长黄文超被调查</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150304_623237.shtml">[廉政要闻]中纪委:省区市巡视要重点监督地市县一把手</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150304_623231.shtml">[廉政要闻]从中央巡视组首轮巡视透视2015反腐新看点</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150302_622015.shtml">[曝光台]鄂州点名通报17起顶风违纪行为</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150301_621380.shtml">[案件查处]龙福清涉嫌严重违纪受调查</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150301_621381.shtml">[案件查处]王绍志涉嫌严重违纪受调查</a></li>
               
                   <li><a href="http://www.hubei.gov.cn/zwgk/lzjs/201503/t20150301_621382.shtml">[案件查处]襄阳市委原常委夏先禄被“双开”</a></li>
                                  	
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
			   <div class="bd notes-bd">
			   	    <ul class="bd-list">
			   	    	<li><a href="http://www.hbsjg.gov.cn/hubeijiaoguan_xinwenjujiao/2015/02/27/64564d54a9b94aa8b43908a184d7c7c0.html#top">春节长假期间全省道路交通安全畅通有序</a></li>
                     <li><a href="http://www.hubei.gov.cn/zwgk/tzgg/201501/t20150127_613731.shtml">2013年度湖北省收费公路统计公报</a></li>
                
                     <li><a href="http://www.hubei.gov.cn/zwgk/tzgg/201501/t20150120_611529.shtml">中共湖北省委组织部干部任前公示公告</a></li>
                
                     <li><a href="http://gkml.hubei.gov.cn/auto5472/auto5473/201501/t20150101_605286.html">2014年淘汰落后和过剩产能检查验收公告</a></li>
                
			   	    </ul>
			   	    <ul class="bd-list hide">
			   	    	<li><a href="http://www.hbsjg.gov.cn/hubeijiaoguan_xinwenjujiao/2015/02/27/64564d54a9b94aa8b43908a184d7c7c0.html#top">春节长假期间全省道路交通安全畅通有序</a></li>
                     <li><a href="http://www.hubei.gov.cn/zwgk/zcsd/201503/t20150304_623359.shtml">2015年省委1号文件解读</a></li>
                
                     <li><a href="http://www.hubei.gov.cn/zwgk/zcsd/201503/t20150303_622420.shtml">解读《全省出生人口登记管理十二条规定》</a></li>
                
                     <li><a href="http://www.hubei.gov.cn/zwgk/zcsd/201503/t20150302_621898.shtml">《湖北生态省建设规划纲要》解读</a></li>
                
			   	    </ul>
			   </div>
	 	  </div>
	 	   <div class="md yj-man-md" id="yj-man">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title"><a href="http://yj.hubei.gov.cn/">工作评价</a></h2>
	 	  	   	    
	 	  	   </div>
			   <div class="bd yjgl-bd">
			   	    <ul class="bd-list">
			   	    	
                     <li><a href="http://www.hbsjg.gov.cn/hubeijiaoguan_xinwenjujiao/2015/02/27/64564d54a9b94aa8b43908a184d7c7c0.html#top">春节长假期间全省道路交通安全畅通有序</a></li>
                
                     <li><a href="http://www.hubei.gov.cn/zwgk/yjgl/201503/t20150302_622141.shtml">六部门发文禁止个人网上发布危险物品信息</a></li>
                
                     <li><a href="http://www.hubeisafety.gov.cn/content/content_a.asp?id=10181">省安监局发布1月份全省安全生产形势分析</a></li>
                
                     <li><a href="http://www.hubei.gov.cn/zwgk/yjgl/201502/t20150224_619804.shtml">全省铁路客流高位运行 迎来节后高峰</a></li>
                
			   	    </ul>
			   </div>
	 	  </div>
	 	   <div class="md yjsc-md" id="yj-cookbook">
	 	  	   <div class="hd">
	 	  	   	    <h2 class="hd-title">信息采集</h2>
	 	  	   </div>
			    <div class="bd yjgl-bd" style="height:124px;">
			   	    <ul class="bd-list">
			   	    	
                     <li><a href="http://www.hbsjg.gov.cn/hubeijiaoguan_xinwenjujiao/2015/02/27/64564d54a9b94aa8b43908a184d7c7c0.html#top">春节长假期间全省道路交通安全畅通有序</a></li>
                
                     <li><a href="http://www.hubei.gov.cn/zwgk/yjgl/201503/t20150302_622141.shtml">六部门发文禁止个人网上发布危险物品信息</a></li>
                
                     <li><a href="http://www.hubeisafety.gov.cn/content/content_a.asp?id=10181">省安监局发布1月份全省安全生产形势分析</a></li>
                
                     <li><a href="http://www.hubei.gov.cn/zwgk/yjgl/201502/t20150224_619804.shtml">全省铁路客流高位运行 迎来节后高峰</a></li>
                
			   	    </ul>
			   </div>
	 	  </div>
	 </div>
	 </div>
     <div class="wrap footer">
	 <div class="wrap">

	 <p class="bottom-icon" style="width:400px;">
<a title="网络110 报警服务" href="http://wuhan.cyberpolice.cn/ga/"><img width="120" height="50" alt="网络110 报警服务" src="image/default/net110.jpg"></a>
<a title="不良信息 举报中心" href="http://net.china.com.cn/index.htm"><img width="120" height="50" alt="不良信息 举报中心" src="image/default/jb.jpg"></a>
<a title="惩治有偿新闻" href="http://www.hubei.gov.cn/zwgk/lzjs/201501/t20150108_607949.shtml"><img width="120" height="50" alt="惩治有偿新闻" src="image/default/net100.jpg"></a>
<!--<a href="http://zhanzhang.anquan.org/physical/report/?domain=www.hubei.gov.cn" name="gyHFGOIjQqgpMR880YGafcKEjXw5WOab0zy5FMzIusLZ5f5JJa" ><img height="47" src="...images/zhanzhang.png" alt="安全联盟站长平台" /></a>-->
	 </p>
<script type="text/javascript" defer="" async="" src="image/default/piwik.js"></script><script type="text/javascript">                                                                                                 document.write(unescape("%3Cspan id='_ideConac' %3E%3C/span%3E%3Cscript src='http://dcs.conac.cn/js/18/000/0000/60422363/CA180000000604223630002.js' type='text/javascript'%3E%3C/script%3E"));</script><span id="_ideConac"><a href="http://bszs.conac.cn/sitename?method=show&id=085B302CA0945C90E053012819ACCDED" target="_blank"><img id="imgConac" vspace="0" hspace="0" border="0" src="image/default/red.png" data-bd-imgshare-binded="1"></a></span><script src="image/default/CA180000000604223630002.js" type="text/javascript"></script><span id="_ideConac"></span>
	 <div class="copyright">
          <p>| <a href="http://www.hubei.gov.cn/wzdh/">网站地图</a> |
            <a href="http://www.hubei.gov.cn/ggdy/ggdb/201402/t20140220_490282.shtml">联系我们</a> |
            <a href="http://www.hubei.gov.cn/ggdy/ggdb/200810/t20081017_243627.shtml">地理位置</a> |
            <a href="http://www.hubei.gov.cn/ggdy/ggdb/200810/t20081017_243626.shtml">网站申明</a> |
          </p>
          <p>鄂ICP备05011090号-1 电子邮件：<a href="mailto:webmaster@hubei.gov.cn">webmaster@hubei.gov.cn</a></p>
          <p>湖北省人民政府办公厅主管 湖北日报传媒集团承办 <a title="返回顶部" id="lnk-backtop" class="lnk-backtop" target="_self" href="http://www.hubei.gov.cn/#top">返回顶部</a></p>
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

