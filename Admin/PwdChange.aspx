<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PwdChange.aspx.cs" Inherits="SysAdmin_PwdChange" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>密码修改</title>
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
                    <asp:Label ID="Label1" runat="server" Text="密码修改" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Text="旧密码:" Font-Size="13px"></asp:Label>
                </td>
                <td colspan="2">
                    <dx:ASPxTextBox ID="txtOldPwd" runat="server" Width="170px" Theme="Glass" Password="true"
                        ClientInstanceName="txtOldPwd">
                        <ValidationSettings>
                            <RequiredField ErrorText="请填写！" IsRequired="True" />
                        </ValidationSettings>
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label3" runat="server" Text="新密码:" Font-Size="13px"></asp:Label>
                </td>
                <td colspan="2">
                    <dx:ASPxTextBox ID="txtPwd" runat="server" Width="170px" Theme="Glass" Password="true"
                        ClientInstanceName="txtPwd">
                        <ValidationSettings>
                            <RequiredField ErrorText="请填写！" IsRequired="True" />
                        </ValidationSettings>
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label4" runat="server" Text="确认新密码:" Font-Size="13px"></asp:Label>
                </td>
                <td colspan="2">
                    <dx:ASPxTextBox ID="txtConfirmPwd" runat="server" Width="170px" Theme="Glass" Password="true"
                        ClientInstanceName="txtConfirmPwd">
                        <ValidationSettings>
                            <RequiredField ErrorText="请填写！" IsRequired="True" />
                        </ValidationSettings>
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td colspan="2">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="两次密码输入不一致！" ControlToCompare="txtPwd" 
                        ControlToValidate="txtConfirmPwd" Display="Dynamic" Font-Size="13px" 
                        ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td width="85px">
                    <dx:ASPxButton ID="btnSave" runat="server" Text="保存" Theme="Glass" OnClick="btnSave_Click">
                    </dx:ASPxButton>
                </td>
                <td width="85px">
                    <dx:ASPxButton ID="btnClean" runat="server" Text="清除" Theme="Glass" 
                        AutoPostBack="False" CausesValidation="False">
                        <ClientSideEvents Click="function(s, e) {
	txtOldPwd.SetText();
    txtPwd.SetText();
    txtConfirmPwd.SetText();
}" />
                    </dx:ASPxButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
