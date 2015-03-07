using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;
using System.Security;
using System.Data;
using System.IO;

public partial class SysAdmin_PswdSet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValid"] == null || Session["IsValid"].ToString() != "true")
        {
            Response.Redirect("../Login.aspx");
        }
    }

    protected void btn_OK_Click(object sender, EventArgs e)
    {
        TA_用户TableAdapter adapter = new TA_用户TableAdapter();
        DataTable dt = adapter.GetDataBy用户名(txt_Name.Text.ToString());
        try 
        {
            if (dt.Rows.Count > 0)
            {
                try
                {
                    adapter.UpdateQuery密码(System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txt_NewPswd.Text.ToString(), "MD5"), dt.Rows[0]["用户ID"].ToString());
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('密码重置成功！');", true);
                    txt_Name.Text = txt_NewPswd.Text = txt_NewPswdConfirm.Text = string.Empty;
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('密码重置失败！');", true);
                }

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('不存在该用户，请检查后重新输入！');", true);

            }
        }
       catch(Exception ex)
        {
               ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('操作失败，请重新输入！');", true);

        }
    }
}