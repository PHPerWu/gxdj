<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="Frame_left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>湖北高校党建研究中心网站后台管理</title>
    <link href="../Styles/Left.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-image: url(../Images/left.gif);
        }
    </style>
    <script type="text/javascript">
        function tupian(idt) {
            var nametu = "xiaotu" + idt;
            var tp = document.getElementById(nametu);
            tp.src = "../Images/ico05.gif"; //图片ico04为白色的正方形

            for (var i = 1; i < 30; i++) {

                var nametu2 = "xiaotu" + i;
                if (i != idt * 1) {
                    var tp2 = document.getElementById('xiaotu' + i);
                    if (tp2 != undefined)
                    { tp2.src = "../Images/ico06.gif"; } //图片ico06为蓝色的正方形
                }
            }
        }

        function list(idstr) {
            var name1 = "subtree" + idstr;
            var name2 = "img" + idstr;
            var objectobj = document.all(name1);
            var imgobj = document.all(name2);


            //alert(imgobj);

            if (objectobj.style.display == "none") {
                for (i = 1; i < 10; i++) {
                    var name3 = "img" + i;
                    var name = "subtree" + i;
                    var o = document.all(name);
                    if (o != undefined) {
                        o.style.display = "none";
                        var image = document.all(name3);
                        //alert(image);
                        image.src = "../Images/ico04.gif";
                    }
                }
                objectobj.style.display = "";
                imgobj.src = "../Images/ico03.gif";
            }
            else {
                objectobj.style.display = "none";
                imgobj.src = "../Images/ico04.gif";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="207" height="55" background="../Images/nav01.gif">
                            <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="25%" rowspan="2">
                                        <img src="../Images/ico02.gif" width="35" height="35" />
                                    </td>
                                    <td width="75%" height="22" class="left-font01">
                                        您好，<span class="left-font02"><asp:Label ID="lblName" runat="server" Text=""></asp:Label></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="22" class="left-font01">
                                        [&nbsp;<a href="../Login.aspx" target="_top" class="left-font01">注销</a>&nbsp;]
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <!--说明-->
                <!--class="left-table03"表示是一级菜单 class="left-table02"表示是二级菜单-->
                <!--img的id,name应相同，id，name中的数字和js中传的数字要一样，一级用list，二级用tupian-->
                <!--subtree后面的数字和list的数字一样-->
                <!--  中心风采 开始   -->
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
                    <tr>
                        <td height="29">
                            <table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="8%">
                                        <img id="img4" src="../Images/ico04.gif" width="8" height="11" />
                                    </td>
                                    <td width="92%">
                                        <a href="javascript:" target="mainFrame" class="left-font03" onclick="list('4');">中心风采</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table id="subtree4" style="display: none" width="80%" border="0" align="center"
                    cellpadding="0" cellspacing="0" class="left-table02">
                    <tr>
                        <td width="9%" height="22">
                            <img id="xiaotu5" src="../Images/ico06.gif" width="8" height="12" />
                        </td>
                        <td width="91%">
                            <a href="../Admin/InfoManage.aspx?infoType=1" target="mainFrame" class="left-font03"
                                onclick="tupian('5');">中心目标</a>
                        </td>
                    </tr>
                    <tr>
                        <td width="9%" height="23">
                            <img id="xiaotu6" src="../Images/ico06.gif" width="8" height="12" />
                        </td>
                        <td width="91%">
                            <a href="../Admin/InfoManage.aspx?infoType=2" target="mainFrame" class="left-font03"
                                onclick="tupian('6');">中心功能</a>
                        </td>
                    </tr>
                    <tr>
                        <td width="9%" height="23">
                            <img id="Img6" src="../Images/ico06.gif" width="8" height="12" />
                        </td>
                        <td width="91%">
                            <a href="../Admin/InfoManage.aspx?infoType=3" target="mainFrame" class="left-font03"
                                onclick="tupian('6');">中心任务</a>
                        </td>
                    </tr>
                    <tr>
                        <td width="9%" height="23">
                            <img id="Img7" src="../Images/ico06.gif" width="8" height="12" />
                        </td>
                        <td width="91%">
                            <a href="../Admin/InfoManage.aspx?infoType=4" target="mainFrame" class="left-font03"
                                onclick="tupian('6');">管理机制</a>
                        </td>
                    </tr>
                </table>
                <!--  中心风采 结束    -->
                <!--  输入第一个菜单    -->
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
                    <tr>
                        <td height="29">
                            <table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="8%">
                                        <img name="img1" id="img1" src="../Images/ico04.gif" width="8" height="11" />
                                    </td>
                                    <td width="92%">
                                        <a href="../Admin/NewsManage.aspx" target="mainFrame" class="left-font03" onclick="tupian('1');">
                                            新闻管理</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <!--  第一个菜单结束    -->
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
                    <tr>
                        <td height="29">
                            <table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="8%">
                                        <img name="img1" id="img5" src="../Images/ico04.gif" width="8" height="11" />
                                    </td>
                                    <td width="92%">
                                        <a href="../Admin/FileManage.aspx" target="mainFrame" class="left-font03" onclick="tupian('1');">
                                            附件管理</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <!--  个人信息开始    -->
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
                    <tr>
                        <td height="29">
                            <table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="8%">
                                        <img name="img2" id="img2" src="../Images/ico04.gif" width="8" height="11" />
                                    </td>
                                    <td width="92%">
                                        <a href="javascript:" target="mainFrame" class="left-font03" onclick="list('2');">个人信息管理</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table id="subtree2" style="display: none" width="80%" border="0" align="center"
                    cellpadding="0" cellspacing="0" class="left-table02">
                    <tr>
                        <td width="9%" height="22">
                            <img id="xiaotu3" src="../Images/ico06.gif" width="8" height="12" />
                        </td>
                        <td width="91%">
                            <a href="../Admin/InfoChange.aspx" target="mainFrame" class="left-font03" onclick="tupian('3');">
                                个人信息修改</a>
                        </td>
                    </tr>
                    <tr>
                        <td width="9%" height="23">
                            <img id="xiaotu4" src="../Images/ico06.gif" width="8" height="12" />
                        </td>
                        <td width="91%">
                            <a href="../Admin/PwdChange.aspx" target="mainFrame" class="left-font03" onclick="tupian('4');">
                                密码修改</a>
                        </td>
                    </tr>
                </table>
                <!--  个人信息结束    -->
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
