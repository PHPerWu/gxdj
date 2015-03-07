<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="NewsTypeManage.aspx.cs" Inherits="SysAdmin_BookTypeManage" %>

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
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
    <tr>
    <td width="5%"></td>
    <td width="90%" align="right">
        <dx:ASPxButton ID="btnAdd" runat="server" Text="新增新闻类型" AutoPostBack="False">
            <ClientSideEvents Click="function(s, e) {
	gv_Newstyle.AddNewRow();
}" />
        </dx:ASPxButton>
    </td>
    <td width="5%"></td>
    </tr>
    <tr>
    <td width="5%"></td>
    <td width="90%">
        <dx:ASPxGridView ID="gv_Newstyle" runat="server" AutoGenerateColumns="False" 
            DataSourceID="ods_新闻类型" EnableTheming="True" KeyFieldName="新闻类型代码" 
            Theme="Glass" Width="100%" 
            onhtmleditformcreated="gv_Newstyle_HtmlEditFormCreated">
            <Columns>
                <dx:GridViewCommandColumn Caption="操作" VisibleIndex="0">
                    <EditButton Visible="True">
                    </EditButton>
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="新闻类型代码" ReadOnly="True" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="新闻类型名称" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="是否启用" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="备注" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsBehavior ConfirmDelete="True" />
            <Settings ShowTitlePanel="True" />
            <SettingsText CommandDelete="删除" CommandEdit="修改" ConfirmDelete="确认要删除么？" 
                Title="新闻类型管理" />
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
                                <dx:ASPxLabel ID="lbName" runat="server" Text="新闻类型名称:">
                                </dx:ASPxLabel>
                            </td>
                            <td colspan="4" width="60%">
                                <dx:ASPxTextBox ID="txt_Name" runat="server" Text='<%# Bind("新闻类型名称") %>' 
                                    Width="170px">
                                    <ValidationSettings>
                                        <RequiredField ErrorText="必填" IsRequired="True" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <dx:ASPxLabel ID="lbDM" runat="server" Text="新闻类型代码:">
                                </dx:ASPxLabel>
                            </td>
                            <td colspan="4" width="60%">
                                <dx:ASPxTextBox ID="txt_DM" runat="server" Text='<%# Bind("新闻类型代码") %>' 
                                    Width="170px">
                                    <ValidationSettings>
                                        <RequiredField ErrorText="必填" IsRequired="True" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <dx:ASPxLabel ID="lbUseornot" runat="server" Text="是否启用">
                                </dx:ASPxLabel>
                            </td>
                            <td colspan="4" width="60%">
                                <dx:ASPxComboBox ID="cmb_Useornot" runat="server" Text='<%# Bind("是否启用") %>' 
                                    Value='<%# Bind("是否启用") %>'>
                                    <Items>
                                        <dx:ListEditItem Text="是" Value="是" />
                                        <dx:ListEditItem Text="否" Value="否" />
                                    </Items>
                                </dx:ASPxComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <dx:ASPxLabel ID="lbbz" runat="server" Text="备注:">
                                </dx:ASPxLabel>
                            </td>
                            <td colspan="4" width="60%">
                                <dx:ASPxTextBox ID="txt_bz" runat="server" Text='<%# Bind("备注") %>' 
                                    Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                &nbsp;</td>
                            <td align="left" width="10%">
                                <dx:ASPxButton ID="btn_Save" runat="server" 
                                    CommandArgument="<%# Container.VisibleIndex %>" oncommand="btn_Save_Command" 
                                    Text="保 存">
                                </dx:ASPxButton>
                            </td>
                            <td align="left" width="10%">
                                <dx:ASPxButton ID="btn_Cancel" runat="server" CausesValidation="False" 
                                    onclick="btn_Cancel_Click" Text="取 消">
                                </dx:ASPxButton>
                            </td>
                            <td align="left">
                                &nbsp;</td>
                            <td align="left">
                                &nbsp;</td>
                        </tr>
                    </table>
                </EditForm>
            </Templates>
        </dx:ASPxGridView>
        </td>
    <td width="5%"></td>
    </tr>
    <tr>
    <td width="5%">&nbsp;</td>
    <td width="90%">
        <asp:ObjectDataSource ID="ods_新闻类型" runat="server" DeleteMethod="Delete" 
            InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetData" TypeName="DataSetTableAdapters.DM_新闻类型TableAdapter" 
            UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_新闻类型代码" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="新闻类型代码" Type="String" />
                <asp:Parameter Name="新闻类型名称" Type="String" />
                <asp:Parameter Name="是否启用" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="新闻类型名称" Type="String" />
                <asp:Parameter Name="是否启用" Type="String" />
                <asp:Parameter Name="备注" Type="String" />
                <asp:Parameter Name="Original_新闻类型代码" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        </td>
    <td width="5%">&nbsp;</td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
