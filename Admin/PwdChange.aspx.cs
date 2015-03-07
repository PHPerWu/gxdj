using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SysAdmin_PwdChange : System.Web.UI.Page
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
            //判断旧密码是否输入正确
            DataSetTableAdapters.TA_用户TableAdapter ada = new DataSetTableAdapters.TA_用户TableAdapter();
            if (ada.GetDataBy用户ID(Session["UserID"].ToString()).Rows[0]["密码"].ToString() == System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txtOldPwd.Text,"MD5"))
            {
                ada.UpdateQuery密码(System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txtPwd.Text,"MD5"), Session["UserID"].ToString());
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('密码修改成功！');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('旧密码输入错误！');", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('错误！请联系管理员！');", true);
        }
    }
}