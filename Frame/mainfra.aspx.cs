using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Frame_mainfra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValid"] == null || Session["IsValid"].ToString() != "true")
        {
            Response.Redirect("../Login.aspx");
        }
    }
}