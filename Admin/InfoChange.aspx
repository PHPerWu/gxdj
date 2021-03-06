﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoChange.aspx.cs" Inherits="SysAdmin_InfoChange" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>个人信息修改</title>
    <style type="text/css">
        .info
        {
            margin-top: 80px;
            margin-left: 250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="info">
            <tr>
                <td colspan="3" align="center">
                    <asp:Label ID="Label1" runat="server" Text="个人信息修改" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Text="真实姓名:" Font-Size="13px"></asp:Label>
                </td>
                <td colspan="2">
                    <dx:ASPxTextBox ID="txtRealName" runat="server" Width="170px" Theme="Glass" 
                        ClientInstanceName="txtRealName">
                        <ValidationSettings>
                            <RequiredField ErrorText="请填写！" IsRequired="True" />
                        </ValidationSettings>
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label3" runat="server" Text="电话:" Font-Size="13px"></asp:Label>
                </td>
                <td colspan="2">
                    <dx:ASPxTextBox ID="txtPhone" runat="server" Width="170px" Theme="Glass" 
                        ClientInstanceName="txtPhone">
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label4" runat="server" Text="邮箱:" Font-Size="13px"></asp:Label>
                </td>
                <td colspan="2">
                    <dx:ASPxTextBox ID="txtMail" runat="server" Width="170px" Theme="Glass" 
                        ClientInstanceName="txtMail">
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label5" runat="server" Text="办公室:" Font-Size="13px"></asp:Label>
                </td>
                <td colspan="2">
                    <dx:ASPxTextBox ID="txtOffice" runat="server" Width="170px" Theme="Glass" 
                        ClientInstanceName="txtOffice">
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td width="85px">
                    <dx:ASPxButton ID="btnSave" runat="server" Text="保存" Theme="Glass" 
                        onclick="btnSave_Click">
                    </dx:ASPxButton>
                </td>
                <td width="85px">
                    <dx:ASPxButton ID="btnClean" runat="server" Text="清除" Theme="Glass" 
                        AutoPostBack="False" CausesValidation="False">
                        <ClientSideEvents Click="function(s, e) {
	txtRealName.SetText();
    txtPhone.SetText();
    txtMail.SetText();
    txtOffice.SetText();
}" />
                    </dx:ASPxButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
