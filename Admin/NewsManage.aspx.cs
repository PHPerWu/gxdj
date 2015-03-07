using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxEditors;
using DevExpress.Web.ASPxUploadControl;
using System.IO;

public partial class Admin_NewsManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValid"] == null || Session["IsValid"].ToString() != "true")
        {
            Response.Redirect("../Login.aspx");
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (gvNews.IsNewRowEditing)
            {
                gvNews.UpdateEdit();
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('新闻新增成功！');", true);
            }
            else
            {
                gvNews.UpdateEdit();
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('新闻修改成功！');", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('操作失败！');", true);
        }
    }
    protected void gvNews_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        ASPxCheckBox chkAllow = gvNews.FindEditFormTemplateControl("chkAllow") as ASPxCheckBox;
        if (chkAllow.Checked)
        {
            e.NewValues["是否为图片新闻"] = "是";
            e.NewValues["图片路径"] = Session["PicPath"].ToString();
        }
        else
        {
            e.NewValues["是否为图片新闻"] = "否";
            e.NewValues["图片路径"] = "";
        }
        e.NewValues["新闻发布人"] = Session["RealName"].ToString();
        //e.NewValues["新闻发布时间"] = System.DateTime.Now;

    }
    protected void gvNews_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        ASPxCheckBox chkAllow = gvNews.FindEditFormTemplateControl("chkAllow") as ASPxCheckBox;
        if (chkAllow.Checked)
        {
            e.NewValues["是否为图片新闻"] = "是";
            e.NewValues["图片路径"] = Session["PicPath"].ToString();
        }
        else
        {
            e.NewValues["是否为图片新闻"] = "否";
            e.NewValues["图片路径"] = "";
        }
        e.NewValues["新闻发布人"] = Session["RealName"].ToString();
        //e.NewValues["新闻发布时间"] = System.DateTime.Now;
    }

    protected void upPic_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
    {
        ASPxUploadControl fileUpload = sender as ASPxUploadControl;
        UploadedFile file = fileUpload.UploadedFiles[0];
        if (file.FileName != "" && file.IsValid)
        {
            try
            {
                string fileName = file.FileName;    //文件全名，带后缀
                string webPath = Server.MapPath("../SYPic/" + fileName);   //服务端保存路径
                Session["PicPath"] = "SYPic/" + fileName;   //客户端显示时所需要的路径，用来存进数据库中
                fileUpload.SaveAs(webPath);
                e.CallbackData = "success";
            }
            catch (Exception ex)
            {
                e.ErrorText = "图片上传过程中出错!";
                e.CallbackData = "error";
            }
        }
    }
    protected void gvNews_HtmlEditFormCreated(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewEditFormEventArgs e)
    {
        if (!gvNews.IsNewRowEditing)
        {
            if (gvNews.GetRowValuesByKeyValue(Session["key"], "是否为图片新闻").ToString() == "是")
            {
                (gvNews.FindEditFormTemplateControl("chkAllow") as ASPxCheckBox).Checked = true;
            }
        }
    }
    protected void gvNews_StartRowEditing(object sender, DevExpress.Web.Data.ASPxStartRowEditingEventArgs e)
    {
        Session["key"] = e.EditingKeyValue;
    }
  
}