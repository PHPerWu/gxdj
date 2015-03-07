<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="UserManage.aspx.cs"
    Inherits="SysAdmin_UserManage" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
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
                <td width="90%" align="right">
                    <dx:ASPxButton ID="btnAdd" runat="server" Text="新增用户" AutoPostBack="False" Theme="Glass">
                        <ClientSideEvents Click="function(s, e) {
	gv_User.AddNewRow();
}" />
                    </dx:ASPxButton>
                </td>
                <td width="5%">
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <dx:ASPxGridView ID="gv_User" runat="server" AutoGenerateColumns="False" ClientInstanceName="gv_User"
                        DataSourceID="ods_用户" EnableTheming="True" KeyFieldName="用户ID" OnHtmlEditFormCreated="gv_User_HtmlEditFormCreated"
                        Theme="Glass" Width="100%" onrowinserting="gv_User_RowInserting">
                        <Columns>
                            <dx:GridViewCommandColumn Caption="操作" VisibleIndex="0">
                                <EditButton Visible="True">
                                </EditButton>
                                <DeleteButton Visible="True">
                                </DeleteButton>
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn FieldName="用户ID" ReadOnly="True" Visible="False" VisibleIndex="1">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="用户名" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="真实姓名" VisibleIndex="3">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="角色名" VisibleIndex="4">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="密码" Visible="False" VisibleIndex="5">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="电话" VisibleIndex="6">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="邮箱" VisibleIndex="7">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="办公室" VisibleIndex="8">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="备用一" Visible="False" VisibleIndex="9">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="备用二" Visible="False" VisibleIndex="10">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                        <SettingsBehavior ConfirmDelete="True" />
                        <Settings ShowTitlePanel="True" />
                        <SettingsText CommandDelete="删除" CommandEdit="修改" ConfirmDelete="确认要删除么？" Title="用户管理"
                            EmptyDataRow="暂无用户，请点击按钮新增！" />
                        <Styles>
                            <Table HorizontalAlign="Center">
                            </Table>
                            <Header HorizontalAlign="Center">
                            </Header>
                            <TitlePanel Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center">
                            </TitlePanel>
                        </Styles>
                        <Templates>
                            <EditForm>
                                <table class="style1">
                                    <tr>
                                        <td align="right" width="40%">
                                            <dx:ASPxLabel ID="lbName" runat="server" Text="用户名:">
                                            </dx:ASPxLabel>
                                        </td>
                                        <td align="left" colspan="3">
                                            <dx:ASPxTextBox ID="txt_Name" runat="server" Text='<%# Bind("用户名") %>' Width="170px">
                                                <ValidationSettings>
                                                    <RequiredField ErrorText="必填" IsRequired="True" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="40%">
                                            <dx:ASPxLabel ID="lbRealname" runat="server" Text="真实姓名:">
                                            </dx:ASPxLabel>
                                        </td>
                                        <td align="left" colspan="3">
                                            <dx:ASPxTextBox ID="txt_Realname" runat="server" Text='<%# Bind("真实姓名") %>' Width="170px">
                                                <ValidationSettings>
                                                    <RequiredField ErrorText="必填" IsRequired="True" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="40%">
                                            <dx:ASPxLabel ID="lbPswd" runat="server" Text="密码:">
                                            </dx:ASPxLabel>
                                        </td>
                                        <td align="left" colspan="3">
                                            <dx:ASPxTextBox ID="txt_Pswd" runat="server" Password="True"
                                                Width="170px">
                                                <ValidationSettings>
                                                    <RequiredField ErrorText="必填" IsRequired="True" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="40%">
                                            <dx:ASPxLabel ID="lbPhone" runat="server" Text="电话:">
                                            </dx:ASPxLabel>
                                        </td>
                                        <td align="left" colspan="3">
                                            <dx:ASPxTextBox ID="txt_Phone" runat="server" Text='<%# Bind("电话") %>' Width="170px">
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="40%">
                                            <dx:ASPxLabel ID="lbEmail" runat="server" Text="邮箱:">
                                            </dx:ASPxLabel>
                                        </td>
                                        <td align="left" colspan="3">
                                            <dx:ASPxTextBox ID="txt_Email" runat="server" Text='<%# Bind("邮箱") %>' Width="170px">
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="40%">
                                            <dx:ASPxLabel ID="lbOffice" runat="server" Text="办公室:">
                                            </dx:ASPxLabel>
                                        </td>
                                        <td align="left" colspan="3">
                                            <dx:ASPxTextBox ID="txt_Office" runat="server" Text='<%# Bind("办公室") %>' Width="170px">
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            &nbsp;
                                        </td>
                                        <td align="left" width="10%">
                                            <dx:ASPxButton ID="btn_Save" runat="server" CommandArgument="<%# Container.VisibleIndex %>"
                                                OnCommand="btn_Save_Command" Text="保 存" Theme="Glass">
                                            </dx:ASPxButton>
                                        </td>
                                        <td align="left" width="10%">
                                            <dx:ASPxButton ID="btn_Cancel" runat="server" CausesValidation="False" OnClick="btn_Cancel_Click"
                                                Text="取 消" Theme="Glass">
                                            </dx:ASPxButton>
                                        </td>
                                        <td align="left">
                                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("用户ID") %>' />
                                        </td>
                                    </tr>
                                </table>
                            </EditForm>
                        </Templates>
                    </dx:ASPxGridView>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:ObjectDataSource ID="ods_用户" runat="server" DeleteMethod="Delete" InsertMethod="Insert"
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.TA_用户TableAdapter"
                        UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_用户ID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="用户名" Type="String" />
                            <asp:Parameter Name="真实姓名" Type="String" />
                            <asp:Parameter Name="角色名" Type="String" />
                            <asp:Parameter Name="密码" Type="String" />
                            <asp:Parameter Name="电话" Type="String" />
                            <asp:Parameter Name="邮箱" Type="String" />
                            <asp:Parameter Name="办公室" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="用户名" Type="String" />
                            <asp:Parameter Name="真实姓名" Type="String" />
                            <asp:Parameter Name="电话" Type="String" />
                            <asp:Parameter Name="邮箱" Type="String" />
                            <asp:Parameter Name="办公室" Type="String" />
                            <asp:Parameter Name="Original_用户ID" Type="String" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>
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
