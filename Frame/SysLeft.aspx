<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SysLeft.aspx.cs" Inherits="Frame_SysLeft" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>������У�����о�������վ��̨����</title>
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
            tp.src = "../Images/ico05.gif"; //ͼƬico04Ϊ��ɫ��������

            for (var i = 1; i < 30; i++) {

                var nametu2 = "xiaotu" + i;
                if (i != idt * 1) {
                    var tp2 = document.getElementById('xiaotu' + i);
                    if (tp2 != undefined)
                    { tp2.src = "../Images/ico06.gif"; } //ͼƬico06Ϊ��ɫ��������
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
                                        ���ã�<span class="left-font02"><asp:Label ID="lblName" runat="server" Text=""></asp:Label></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="22" class="left-font01">
                                        [&nbsp;<a href="../Login.aspx" target="_top" class="left-font01">ע��</a>&nbsp;]
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <!--˵��-->
                <!--class="left-table03"��ʾ��һ���˵� class="left-table02"��ʾ�Ƕ����˵�-->
                <!--img��id,nameӦ��ͬ��id��name�е����ֺ�js�д�������Ҫһ����һ����list��������tupian-->
                <!--subtree��������ֺ�list������һ��-->
                <!--  �����һ���˵�    -->
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
                    <tr>
                        <td height="29">
                            <table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="8%">
                                        <img name="img1" id="img1" src="../Images/ico04.gif" width="8" height="11" />
                                    </td>
                                    <td width="92%">
                                        <a href="javascript:" target="mainFrame" class="left-font03" onclick="list('1');">�������</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table id="subtree1" style="display: none" width="80%" border="0" align="center"
                    cellpadding="0" cellspacing="0" class="left-table02">
                    <tr>
                        <td width="9%" height="20">
                            <img id="xiaotu1" src="../Images/ico06.gif" width="8" height="12" />
                        </td>
                        <td width="91%">
                            <a href="../SysAdmin/NewsTypeManage.aspx" target="mainFrame" class="left-font03" onclick="tupian('1');">�������͹���</a>
                        </td>
                    </tr>
                    <%-- <tr>
                        <td width="9%" height="21">
                            <img id="xiaotu2" src="../Images/ico06.gif" width="8" height="12" />
                        </td>
                        <td width="91%">
                            <a href="#" target="mainFrame" class="left-font03" onclick="tupian('2');">
                                ��һ���˵��µĶ����˵�</a>
                        </td>
                    </tr>--%>
                </table>
                <!--  ��һ���˵�����    -->
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
                    <tr>
                        <td height="29">
                            <table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="8%">
                                        <img name="img3" id="img3" src="../Images/ico04.gif" width="8" height="11" />
                                    </td>
                                    <td width="92%">
                                        <a href="../SysAdmin/UserManage.aspx" target="mainFrame" class="left-font03" onclick="tupian('3');">�û�����</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <!--  ������Ϣ��ʼ    -->
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
                    <tr>
                        <td height="29">
                            <table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="8%">
                                        <img name="img2" id="img2" src="../Images/ico04.gif" width="8" height="11" />
                                    </td>
                                    <td width="92%">
                                        <a href="javascript:" target="mainFrame" class="left-font03" onclick="list('2');">������Ϣ����</a>
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
                            <a href="../SysAdmin/InfoChange.aspx" target="mainFrame" class="left-font03" onclick="tupian('3');">������Ϣ�޸�</a>
                        </td>
                    </tr>
                    <tr>
                        <td width="9%" height="23">
                            <img id="xiaotu4" src="../Images/ico06.gif" width="8" height="12" />
                        </td>
                        <td width="91%">
                            <a href="../SysAdmin/PwdChange.aspx" target="mainFrame" class="left-font03" onclick="tupian('4');">�����޸�</a>
                        </td>
                    </tr>
                </table>
                <!--  ������Ϣ����    -->
                <!--  һ���˵��ɵ��    -->
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
                    <tr>
                        <td height="29">
                            <table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="8%">
                                        <img name="img4" id="img4" src="../Images/ico04.gif" width="8" height="11" />
                                    </td>
                                    <td width="92%">
                                        <a href="../SysAdmin/PasswordSet.aspx" target="mainFrame" class="left-font03" onclick="tupian('4');">��������</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
