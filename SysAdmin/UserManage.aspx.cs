using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;
using DevExpress.Web.ASPxEditors;

public partial class SysAdmin_UserManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValid"] == null || Session["IsValid"].ToString() != "true")
        {
            Response.Redirect("../Login.aspx");
        }
    }
    protected void btn_Cancel_Click(object sender, EventArgs e)
    {
        gv_User.CancelEdit();
    }
    protected void btn_Save_Command(object sender, CommandEventArgs e)
    {
        if (gv_User.IsNewRowEditing)//新增用户信息
        {
            try
            {
                gv_User.UpdateEdit();
                gv_User.DataBind();
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('用户信息添加成功！');", true);
                gv_User.CancelEdit();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('用户名不允许重复，请重新填写！');", true);

            }
        }
        else//更新用户信息
        {
            try
            {
                gv_User.UpdateEdit();
                gv_User.DataBind();
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('用户信息修改成功！');", true);
                gv_User.CancelEdit();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('用户名不允许重复，请重新填写！');", true);

            }
        }
    }
    protected void  gv_User_HtmlEditFormCreated(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewEditFormEventArgs e)
   {
       ASPxTextBox pswd = gv_User.FindEditFormTemplateControl("txt_Pswd") as ASPxTextBox;
       ASPxLabel lbPswd = gv_User.FindEditFormTemplateControl("lbPswd") as ASPxLabel; 
       if (!gv_User.IsNewRowEditing)
       {
           pswd.Visible = false;
           lbPswd.Visible = false;
       }
   }
    protected void gv_User_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        e.NewValues["角色名"] = "管理员";
        e.NewValues["密码"] = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile((gv_User.FindEditFormTemplateControl("txt_Pswd") as ASPxTextBox).Text.ToString(), "MD5");
    }
}
