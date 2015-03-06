using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newsShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            _defaultTableAdapters.TA_新闻TableAdapter news = new _defaultTableAdapters.TA_新闻TableAdapter();
            lblTitle.Text = news.GetNewsByID(Request.QueryString["ID"].ToString()).Rows[0]["新闻标题"].ToString();
            lblContent.Text = news.GetNewsByID(Request.QueryString["ID"].ToString()).Rows[0]["新闻内容"].ToString();
        }
        catch {
            Response.Redirect("default.aspx");
        }
    }
}