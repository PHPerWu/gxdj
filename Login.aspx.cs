using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //登录时的代码
    protected void imgBtnLogin_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            DataSetTableAdapters.TA_用户TableAdapter ada = new DataSetTableAdapters.TA_用户TableAdapter();
            //获取用户名以及密码，加密后进行判断是否正确
            string userName = txtUserName.Text.ToString();
            string pwd = txtPwd.Text.ToString();
            //先判断用户名是否正确，再判断密码是否正确
            DataTable dt = ada.GetDataBy用户名(userName);
            if (dt.Rows.Count > 0) //用户名正确
            {
                if (System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(pwd, "MD5").ToString() == dt.Rows[0]["密码"].ToString())
                {
                    //用户密码正确，跳转至后台
                    string role = dt.Rows[0]["角色名"].ToString();
                    string realName = dt.Rows[0]["真实姓名"].ToString();
                    //string type = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(role, "MD5");
                    Session["UserID"] = dt.Rows[0]["用户ID"].ToString();
                    Session["RealName"] = realName;
                    Session["IsValid"] = "true";
                    if(role=="系统管理员")
                    {
                        Response.Redirect("~/SysDefault.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/Index.aspx");
                    }   
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('密码输入错误！');", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('用户不存在！');", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('系统出错，请联系管理员!');", true);
        }
    }

    ////清除时的代码
    //protected void imgBtnClean_Click(object sender, ImageClickEventArgs e)
    //{
    //    txtUserName.Text = txtPwd.Text = string.Empty;
    //}
}