<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileManage.aspx.cs" Inherits="Admin_FileManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxUploadControl" TagPrefix="dx" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .dxeBase
        {
            font: 12px Tahoma, Geneva, sans-serif;
        }
        .style25
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
            <td align="right" width="90%">
                <dx:ASPxButton ID="btnFileUp" runat="server" Text="附件上传" Theme="Glass" 
                    AutoPostBack="False">
                    <ClientSideEvents Click="function(s, e) {
	cl_popupLoad.Show();
}" />
                </dx:ASPxButton>
            </td>
            <td>
            </td>
        </tr>
    </table>
    <table width="100%">
        <tr>
            <td align="center">
                <dx:ASPxGridView ID="gv_File" runat="server" AutoGenerateColumns="False"
                    EnableTheming="True" KeyFieldName="附件ID" Theme="Glass" Width="80%" 
                    DataSourceID="ods_File">
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="附件ID" ReadOnly="True" Visible="False" 
                            VisibleIndex="0">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="附件名" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="附件路径" VisibleIndex="2" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="上传时间" VisibleIndex="3">
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="上传人" VisibleIndex="4">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="下载量" 
                            VisibleIndex="5">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn VisibleIndex="6" FieldName="备用1" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="备用2" Visible="False" VisibleIndex="7">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="操作" VisibleIndex="8">
                            <DataItemTemplate>
                                <dx:ASPxButton ID="btnDelete" runat="server" oncommand="btnDelete_Command" 
                                    Text="删除" Theme="Glass" CommandArgument="<%# Container.VisibleIndex %>">
                                    <ClientSideEvents Click="function(s, e) {
	if(confirm(&quot;确认要删除吗？&quot;)){
e.processOnServer=true;
}
    else{
e.processOnServer=false;
}
}
" />
                                </dx:ASPxButton>
                            </DataItemTemplate>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <SettingsPager AlwaysShowPager="True">
                    </SettingsPager>
                    <Settings ShowTitlePanel="True" />
                    <SettingsText Title="附件管理" EmptyDataRow="当前没有附件，请点击上传！" />
                    <Styles>
                        <Header HorizontalAlign="Center">
                        </Header>
                        <AlternatingRow BackColor="#D3E6FE">
                        </AlternatingRow>
                        <Cell HorizontalAlign="Center">
                        </Cell>
                        <TitlePanel Font-Size="Medium">
                        </TitlePanel>
                    </Styles>
                </dx:ASPxGridView>
            </td>
        </tr>
    </table>
    <asp:ObjectDataSource ID="ods_File" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetData" TypeName="DataSetTableAdapters.TA_附件TableAdapter"
        DeleteMethod="Delete">
        <DeleteParameters>
            <asp:Parameter Name="Original_附件ID" Type="String" />
        </DeleteParameters>
    </asp:ObjectDataSource>
    <br />
    <dx:ASPxPopupControl ID="popup" runat="server" AllowDragging="True" AppearAfter="100"
        ClientInstanceName="cl_popupLoad" CloseAction="CloseButton" HeaderText="附件上传"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" RenderMode="Lightweight"
        Theme="Glass">
        <ContentCollection>
            <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server" SupportsDisabledAttribute="True">
                <table class="style25">
                    <tr>
                        <td colspan="2">
                            <dx:ASPxUploadControl ID="ASPxUploadControl1" runat="server" Theme="Glass" Width="280px">
                                <BrowseButton Text="浏览...">
                                </BrowseButton>
                            </dx:ASPxUploadControl>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dx:ASPxButton ID="btnSave" runat="server" CausesValidation="False" Text="保存" Theme="Glass"
                                OnClick="btnSave_Click">
                            </dx:ASPxButton>
                        </td>
                        <td>
                            <dx:ASPxButton ID="btnQuit" runat="server" CausesValidation="False" Text="取消" Theme="Glass">
                                <ClientSideEvents Click="function(s, e) {
	cl_popupLoad.Hide();
}" />
                            </dx:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="lblError" runat="server" ForeColor="Red">
                            </dx:ASPxLabel>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <br />
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    </div>
    </form>
</body>
</html>
