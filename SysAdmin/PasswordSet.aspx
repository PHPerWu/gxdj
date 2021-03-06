﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordSet.aspx.cs" Inherits="SysAdmin_PswdSet" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        
        .style1
        {
            width: 246px;
        }
        .style2
        {
            width: 47px;
            height: 23px;
        }
        .style3
        {
            height: 23px;
        }
        .style4
        {
            width: 246px;
            height: 23px;
        }
        
        .style5
        {
            width: 47px;
        }
        
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
    <tr>
    <td >&nbsp;</td>
    <td align="right" class="style1">
        &nbsp;</td>
    <td colspan="2" >
        &nbsp;</td>
    <td >&nbsp;</td>
    </tr>
    <tr>
    <td >&nbsp;</td>
    <td align="right" class="style1">
        &nbsp;</td>
    <td colspan="2" >
        &nbsp;</td>
    <td >&nbsp;</td>
    </tr>
    <tr>
    <td ></td>
    <td align="right" class="style1">
        <dx:ASPxLabel ID="lb_RealName" runat="server" Text="用户名:">
        </dx:ASPxLabel>
        </td>
    <td colspan="2" >
        <dx:ASPxTextBox ID="txt_Name" runat="server" Width="170px" Theme="Glass">
            <ValidationSettings>
                <RequiredField ErrorText="必填！" IsRequired="True" />
            </ValidationSettings>
        </dx:ASPxTextBox>
        </td>
    <td ></td>
    </tr>
    <tr>
    <td ></td>
    <td align="right" class="style1" >
        <dx:ASPxLabel ID="lb_NewPswd" runat="server" Text="新密码:">
        </dx:ASPxLabel>
        </td>
    <td colspan="2" >
        <dx:ASPxTextBox ID="txt_NewPswd" runat="server" Width="170px" Password="True" 
            Theme="Glass">
            <ValidationSettings>
                <RequiredField ErrorText="必填" IsRequired="True" />
            </ValidationSettings>
        </dx:ASPxTextBox>
        </td>
    <td ></td>
    </tr>
    <tr>
    <td class="style3" ></td>
    <td align="right" class="style4" >
        <dx:ASPxLabel ID="lb_NewPswdConfirm" runat="server" Text="确认新密码:">
        </dx:ASPxLabel>
        </td>
    <td class="style2" >
        <dx:ASPxTextBox ID="txt_NewPswdConfirm" runat="server" Width="170px" 
            Password="True" Theme="Glass">
            <ValidationSettings>
                <RequiredField ErrorText="必填！" IsRequired="True" />
            </ValidationSettings>
        </dx:ASPxTextBox>
        </td>
    <td class="style3" >
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txt_NewPswd" ControlToValidate="txt_NewPswdConfirm" 
            ErrorMessage="两次密码输入不一致！" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
        </td>
    <td class="style3" ></td>
    </tr>
    <tr>
    <td >&nbsp;</td>
    <td align="right" class="style1" >
        &nbsp;</td>
    <td align="center" class="style5" >
        <dx:ASPxButton ID="btn_OK" runat="server" onclick="btn_OK_Click" Text="确 定" 
            Theme="Glass">
            <ClientSideEvents Click="function(s, e) {
	if(confirm(&quot;确定要重置密码吗？&quot;))
    {
		e.processOnServer=true;
    }
    else
    {
       e.processOnServer=false;
    }
}" />
        </dx:ASPxButton>
        </td>
    <td >
        &nbsp;</td>
    <td >&nbsp;</td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
