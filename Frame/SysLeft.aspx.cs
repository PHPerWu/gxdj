using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Frame_SysLeft : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValid"] == null || Session["IsValid"].ToString() != "true")
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
            //登录成功之后显示用户的姓名
            lblName.Text = Session["RealName"].ToString();
        }
    }
}