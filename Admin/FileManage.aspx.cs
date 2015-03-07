using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using DevExpress.Web.ASPxUploadControl;
using DataSetTableAdapters;
using System.Web.Security;
using System.Data;

public partial class Admin_FileManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValid"] == null || Session["IsValid"].ToString() != "true")
        {
            Response.Redirect("../Login.aspx");
        }
    }
     //by 艾传波
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try 
        {
            ASPxUploadControl fuTP = popup.FindControl("ASPxUploadControl1") as ASPxUploadControl; //得到ASPxUploadControl1控件，去获取路径
            TA_附件TableAdapter adapter = new TA_附件TableAdapter();
            //上传附件保存到数据库中
            if (fuTP.HasFile)     //判断选取的对话框的文件长度是否为0
            {

                string FileName = fuTP.FileName;    //客户端文件路径
                string WebFilePath = Server.MapPath("../File/" + FileName);
                string path = "../File/" + FileName;
                string FileExe = FileName.Split('.')[1];//获取文件后缀
                        try
                        {

                        fuTP.SaveAs(WebFilePath);
                        adapter.InsertQuery上传附件(FileName, path, DateTime.Now,Session["RealName"].ToString(),0);
                        lblError.Text = "文件上传成功！";
                        lblError.Visible = true;
                        ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('保存成功');", true);
                        }
                        catch (Exception ex)
                        {
                        lblError.Text = "文件上传失败！";
                        lblError.Visible = true;

                        }
                
            }
            else
            {
                lblError.Text = "请选择文件！";
                lblError.Visible = true;
            }
            gv_File.DataBind();
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('文件上传失败！"+ex.Message+"');", true);
        }
    }

    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        try
        {
            int index = Convert.ToInt32(e.CommandArgument);
            gv_File.DeleteRow(index);
            gv_File.DataBind();
            ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('附件删除成功！');", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('附件删除失败！');", true);
        }
       
    }
}