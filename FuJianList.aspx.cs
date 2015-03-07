using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newsList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            _defaultTableAdapters.DM_新闻类型TableAdapter df =new _defaultTableAdapters.DM_新闻类型TableAdapter();
            lblTitle.Text = "资源共享";
        }
        catch
        {
            Response.Redirect("default.aspx");
        }
    }
}