﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoManage.aspx.cs" Inherits="Admin_InfoManage" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxSpellChecker" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>中心风采信息管理</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table width="100%">
                    <tr>
                        <td width="5%">
                        </td>
                        <td width="90%" align="center">
                            <dx:ASPxLabel ID="lblTitle" runat="server" Text="" Theme="Glass" Font-Size="Medium"
                                Font-Bold="true">
                            </dx:ASPxLabel>
                        </td>
                        <td width="5%">
                        </td>
                    </tr>
                    <tr>
                        <td width="5%">
                            &nbsp;
                        </td>
                        <td width="90%" align="center">
                            <dx:ASPxHtmlEditor ID="htmlInfo" runat="server" Theme="Glass" Width="100%">
                            </dx:ASPxHtmlEditor>
                        </td>
                        <td width="5%">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td width="5%">
                            &nbsp;
                        </td>
                        <td width="45%" align="center" style="width: 90%">
                            <dx:ASPxButton ID="btnSave" runat="server" Text="保存" Theme="Glass" OnClick="btnSave_Click">
                            </dx:ASPxButton>
                        </td>
                        <td width="5%">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
