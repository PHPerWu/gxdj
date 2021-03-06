﻿<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="NewsManage.aspx.cs"
    Inherits="Admin_NewsManage" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxSpellChecker" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallback" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>新闻管理</title>
    <script type="text/javascript">
        function FilesUploadComplete(s, e) {
            if (e.errorText != "")
                ShowMessage(e.errorText);
            else if (e.callbackData == "success")
                popUp.Hide();
        }
        function ShowMessage(message) {
            window.setTimeout("alert('" + message + "')", 0);
        }
    </script>
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
                    <dx:ASPxButton ID="btnAdd" runat="server" Text="新增" Theme="Glass" AutoPostBack="False">
                        <ClientSideEvents Click="function(s, e) {
gvNews.AddNewRow();
}" />
                    </dx:ASPxButton>
                </td>
                <td width="5%">
                </td>
            </tr>
            <tr>
                <td width="5%">
                    &nbsp;</td>
                <td width="90%" align="center">
                    <dx:ASPxGridView ID="gvNews" runat="server" Width="100%" AutoGenerateColumns="False"
                        DataSourceID="odsNews" EnableTheming="True" KeyFieldName="新闻ID" Theme="Glass"
                        ClientInstanceName="gvNews" OnRowInserting="gvNews_RowInserting" 
                        OnRowUpdating="gvNews_RowUpdating" 
                        onhtmleditformcreated="gvNews_HtmlEditFormCreated" 
                        onstartrowediting="gvNews_StartRowEditing">
                        <Columns>
                            <dx:GridViewDataTextColumn Caption="序号" VisibleIndex="1">
                                <DataItemTemplate>
                                    <%#Container.VisibleIndex+1 %>
                                </DataItemTemplate>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewCommandColumn Caption="操作" VisibleIndex="0" Width="100px">
                                <EditButton Visible="True">
                                </EditButton>
                                <DeleteButton Visible="True">
                                </DeleteButton>
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn VisibleIndex="3" FieldName="新闻ID" ReadOnly="True" 
                                Visible="False">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="新闻标题" VisibleIndex="4">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn VisibleIndex="7" FieldName="新闻内容" Visible="False">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="新闻发布人" VisibleIndex="8">
                                <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataDateColumn FieldName="新闻发布时间" VisibleIndex="9">
                                <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                            </dx:GridViewDataDateColumn>
                            <dx:GridViewDataTextColumn FieldName="新闻来源" VisibleIndex="6">
                                <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="新闻类型代码" VisibleIndex="10" Visible="False">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="新闻类型名称" VisibleIndex="5">
                                <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="是否为图片新闻" VisibleIndex="2" Caption="图片新闻">
                                <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                                <DataItemTemplate>
                                    <dx:ASPxCheckBox ID="ckbIsPic" runat="server" Checked='<%#Convert.ToBoolean(Eval("是否为图片新闻").ToString()=="是") %>'
                                        Enabled="false">
                                    </dx:ASPxCheckBox>
                                </DataItemTemplate>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="图片路径" Visible="False" VisibleIndex="11">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="点击量" Visible="False" VisibleIndex="12">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="备用1" Visible="False" VisibleIndex="13">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="备用2" Visible="False" VisibleIndex="14">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                        <SettingsBehavior ConfirmDelete="True" />
                        <SettingsPager AlwaysShowPager="True">
                        </SettingsPager>
                        <Settings ShowTitlePanel="True" />
                        <SettingsText ConfirmDelete="确认要删除吗？" Title="新闻管理" />
                        <SettingsCommandButton>
                            <EditButton Text="修改">
                            </EditButton>
                            <DeleteButton Text="删除">
                            </DeleteButton>
                        </SettingsCommandButton>
                        <Styles>
                            <Header HorizontalAlign="Center">
                            </Header>
                            <Cell HorizontalAlign="Center">
                            </Cell>
                            <TitlePanel Font-Size="Medium" HorizontalAlign="Center">
                            </TitlePanel>
                        </Styles>
                        <Templates>
                            <EditForm>
                                <table width="100%">
                                    <tr>
                                        <td width="5%">
                                        </td>
                                        <td colspan="4" align="center">
                                            <dx:ASPxTextBox ID="txtTitle" runat="server" Width="500px" Height="25px" NullText="请在此输入新闻标题..."
                                                Theme="Glass" Text='<%# Bind("新闻标题") %>'>
                                                <ValidationSettings>
                                                    <RequiredField ErrorText="新闻标题不能为空！" IsRequired="True" />
                                                </ValidationSettings>
                                                <Border BorderStyle="Dashed" />
                                            </dx:ASPxTextBox>
                                        </td>
                                        <td width="5%">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="5%">
                                            <td colspan="2" align="center">
                                                <dx:ASPxComboBox ID="cmbNewsType" runat="server" DataSourceID="odsNewsType" EnableTheming="True"
                                                    NullText="请选择新闻类型" Text='<%# Bind("新闻类型名称") %>' TextField="新闻类型名称" Theme="Glass"
                                                    Value='<%# Bind("新闻类型代码") %>' ValueField="新闻类型代码" Width="200px">
                                                    <ValidationSettings>
                                                        <RequiredField ErrorText="请选择新闻类型！" IsRequired="True" />
                                                    </ValidationSettings>
                                                </dx:ASPxComboBox>
                                            </td>
                                            <td align="right">
                                                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="新闻来源：" Theme="Glass">
                                                </dx:ASPxLabel>
                                            </td>
                                            <td align="left">
                                                <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" EnableTheming="True" Text='<%# Bind("新闻来源") %>'
                                                    Theme="Glass" Width="200px">
                                                </dx:ASPxTextBox>
                                            </td>
                                            <td width="5%">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="5%">
                                            &nbsp;<td align="right" width="20%">
                                                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="是否为图片新闻：" Theme="Glass" Width="100px">
                                                </dx:ASPxLabel>
                                            </td>
                                            <td align="left" width="200px" style="width: -200">
                                                <%--<dx:ASPxRadioButtonList ID="rblAllow" runat="server" 
                                                    RepeatDirection="Horizontal" Width="100px" ClientInstanceName="rblAllow" 
                                                    EnableTheming="True" Theme="Glass" Value='<%# Bind("是否为图片新闻") %>' 
                                                    Visible="False">
                                                    <ClientSideEvents SelectedIndexChanged="function(s, e) {
	if(rblAllow.GetSelectedItem().text==&quot;是&quot;)
    {
    popUp.Show();
    }
}" />
                                                    <Items>
                                                        <dx:ListEditItem Text="是" Value="是" />
                                                        <dx:ListEditItem Text="否" Value="否" />
                                                    </Items>
                                                </dx:ASPxRadioButtonList>--%>
                                                <dx:ASPxCheckBox ID="chkAllow" runat="server" CheckState="Unchecked" 
                                                    ClientInstanceName="chkAllow" Text="是">
                                                    <ClientSideEvents CheckedChanged="function(s, e) {
	if(chkAllow.GetChecked())
    {
    popUp.Show();
    }
}" />
                                                </dx:ASPxCheckBox>
                                            </td>
                                            <td align="right" style="width: 0" width="200px">
                                                <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="发布时间：" Theme="Glass">
                                                </dx:ASPxLabel>
                                            </td>
                                            <td align="left" style="width: 66px" width="200px">
                                                <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" EnableTheming="True" 
                                                    Theme="Glass" Value='<%# Bind("新闻发布时间") %>' Width="200px">
                                                    <ValidationSettings CausesValidation="True">
                                                        <RequiredField ErrorText="请选择发布时间!" IsRequired="True" />
                                                    </ValidationSettings>
                                                </dx:ASPxDateEdit>
                                            </td>
                                            <td width="5%">
                                                &nbsp;
                                            </td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="5%">
                                            &nbsp;<td align="left" colspan="4" width="15%">
                                                &nbsp;
                                            </td>
                                            <td width="5%">
                                                &nbsp;
                                            </td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="5%">
                                        </td>
                                        <td colspan="4">
                                            <dx:ASPxHtmlEditor ID="htmlNewsContent" runat="server" ClientInstanceName="htmlNewsContent"
                                                Theme="Glass" Width="100%" Html='<%# Bind("新闻内容") %>'>
                                                <SettingsImageUpload UploadImageFolder="~/NewsImages/">
                                                </SettingsImageUpload>
                                                <SettingsValidation>
                                                    <RequiredField IsRequired="True" />
                                                </SettingsValidation>
                                            </dx:ASPxHtmlEditor>
                                        </td>
                                        <td width="5%">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="5%">
                                        </td>
                                        <td width="45%" align="right" colspan="2">
                                            <dx:ASPxButton ID="btnSave" runat="server" Text="保存" Theme="Glass" 
                                                CommandArgument="<%# Container.VisibleIndex %>" Width="100px" 
                                                onclick="btnSave_Click">
                                            </dx:ASPxButton>
                                        </td>
                                        <td width="45%" align="left" colspan="2">
                                            <dx:ASPxButton ID="btnCancel" runat="server" Text="取消" CausesValidation="False" Theme="Glass"
                                                AutoPostBack="False" EnableTheming="True" Width="100px">
                                                <ClientSideEvents Click="function(s, e) {
	gvNews.CancelEdit();	
}" />
                                            </dx:ASPxButton>
                                        </td>
                                        <td width="5%">
                                        </td>
                                    </tr>
                                </table>
                            </EditForm>
                        </Templates>
                    </dx:ASPxGridView>
                </td>
                <td width="5%">
                </td>
            </tr>
        </table>
        <asp:ObjectDataSource ID="odsNews" runat="server" DeleteMethod="DeleteQuery" InsertMethod="InsertQuery添加"
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.TA_新闻TableAdapter"
            UpdateMethod="UpdateQuery修改">
            <DeleteParameters>
                <asp:Parameter Name="Original_新闻ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="新闻标题" Type="String" />
                <asp:Parameter Name="新闻内容" Type="String" />
                <asp:Parameter Name="新闻发布人" Type="String" />
                <asp:Parameter Name="新闻发布时间" Type="DateTime" />
                <asp:Parameter Name="新闻来源" Type="String" />
                <asp:Parameter Name="新闻类型代码" Type="String" />
                <asp:Parameter Name="新闻类型名称" Type="String" />
                <asp:Parameter Name="是否为图片新闻" Type="String" />
                <asp:Parameter Name="图片路径" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="新闻标题" Type="String" />
                <asp:Parameter Name="新闻内容" Type="String" />
                <asp:Parameter Name="新闻发布人" Type="String" />
                <asp:Parameter Name="新闻发布时间" Type="DateTime" />
                <asp:Parameter Name="新闻来源" Type="String" />
                <asp:Parameter Name="新闻类型代码" Type="String" />
                <asp:Parameter Name="新闻类型名称" Type="String" />
                <asp:Parameter Name="是否为图片新闻" Type="String" />
                <asp:Parameter Name="图片路径" Type="String" />
                <asp:Parameter Name="Original_新闻ID" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="odsNewsType" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetDataBy是否启用" 
                TypeName="DataSetTableAdapters.DM_新闻类型TableAdapter" DeleteMethod="Delete" 
                InsertMethod="Insert" UpdateMethod="Update">
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
            <br />
            <dx:ASPxPopupControl ID="popUp" runat="server" AllowDragging="True" 
                ClientInstanceName="popUp" CloseAction="CloseButton" HeaderText="上传新闻图片" Modal="True" 
                PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" 
                RenderMode="Lightweight" Theme="Glass">
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxUploadControl ID="upPic" runat="server" 
                            OnFileUploadComplete="upPic_FileUploadComplete" ShowProgressPanel="True" 
                            ShowUploadButton="True" Theme="Glass" UploadMode="Auto" Width="280px">
                            <ValidationSettings AllowedFileExtensions=".jpg, .jpeg, .gif, .png" 
                                MaxFileSize="4194304">
                            </ValidationSettings>
                            <ClientSideEvents FileUploadComplete="FilesUploadComplete" />
                            <UploadButton Text="上传">
                            </UploadButton>
                        </dx:ASPxUploadControl>
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxPopupControl>
        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
