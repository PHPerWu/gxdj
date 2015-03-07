<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>后台管理系统登录</title>
    <link href="Styles/Login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellspacing="0" cellpadding="0" width="651" align="center" border="0">
            <tbody>
                <tr>
                    <td height="160">
                    </td>
                </tr>
                <tr>
                    <td height="351">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tbody>
                                <tr>
                                    <td width="15" background="Images/ileft.gif" height="43">
                                    </td>
                                    <td width="620" background="Images/i_topbg2.gif">
                                        <%-- <img height="43" src="Images/i_top1.gif" width="43">--%>
                                    </td>
                                    <td width="16">
                                        <img height="43" src="Images/iright.gif" width="16">
                                    </td>
                                </tr>
                                <tr>
                                    <td background="Images/ileftbg.gif">
                                    </td>
                                    <td valign="center" background="Images/bg.gif" height="279">
                                        <table height="109" cellspacing="0" cellpadding="0" width="369" align="center" border="0">
                                            <tbody>
                                                <tr>
                                                    <td width="155">
                                                        <img height="140" src="Images/logo.jpg" width="155" usemap="#Map" border="0">
                                                    </td>
                                                    <td valign="top" align="left" width="214">
                                                        <table cellspacing="0" cellpadding="0" width="167" border="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td valign="bottom" width="167" height="30">
                                                                        <img height="19" src="Images/adminsyteam.gif" width="154" border="0">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="123">
                                                                        <table height="109" cellspacing="0" cellpadding="0" align="center" border="0">
                                                                            <form name="form2" action="" method="post">
                                                                            <tr>
                                                                                <td valign="bottom" align="left" width="44" height="28">
                                                                                    <div align="right" style="margin-bottom: 3px;">
                                                                                        <img height="14" src="Images/id.gif" width="43"></div>
                                                                                </td>
                                                                                <td valign="bottom" align="left" width="114" height="28">
                                                                                    <%-- <input class="input_1" id="username" size="15" name="username">--%>
                                                                                    <asp:TextBox ID="txtUserName" class="input_1" runat="server"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="left" height="20">
                                                                                    <div align="right">
                                                                                        <img height="14" src="Images/pass.gif" width="43"></div>
                                                                                </td>
                                                                                <td height="20">
                                                                                    <%--  <input class="input_1" id="password" type="password" size="15" name="password">--%>
                                                                                    <asp:TextBox ID="txtPwd" class="input_1" runat="server" TextMode="Password"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td valign="center" colspan="2" height="25">
                                                                                    <div align="center">
                                                                                        <asp:ImageButton ID="imgBtnLogin" runat="server" src="Images/b_login.gif" 
                                                                                            onclick="imgBtnLogin_Click" />
                                                                                       <%-- <asp:ImageButton ID="imgBtnClean" runat="server" src="Images/b_clean.gif" 
                                                                                            onclick="imgBtnClean_Click" />--%>
                                                                                        <%-- <input type="image" src="Images/b_login.gif" name="Login">
                                                                                        <img style="cursor: hand" onclick="document.form1.reset()" height="21" src="Images/b_clean.gif"
                                                                                            width="73">--%>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                            </form>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td background="Images/irightbg.gif">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img height="29" src="Images/i_bottom_left.gif" width="15">
                                    </td>
                                    <td background="Images/i_bottom_bg.gif">
                                    </td>
                                    <td width="16">
                                        <img height="29" src="Images/i_bottom_right.gif" width="16">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="1">
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
