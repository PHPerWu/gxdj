using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SysAdmin_InfoChange : System.Web.UI.Page
{
    DataSetTableAdapters.TA_用户TableAdapter ada = new DataSetTableAdapters.TA_用户TableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValid"] == null || Session["IsValid"].ToString() != "true")
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                DataTable dt = ada.GetDataBy用户ID(Session["UserID"].ToString());
                txtRealName.Text = dt.Rows[0]["真实姓名"].ToString();
                txtPhone.Text = dt.Rows[0]["电话"].ToString();
                txtMail.Text = dt.Rows[0]["邮箱"].ToString();
                txtOffice.Text = dt.Rows[0]["办公室"].ToString();
            }
        }       
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            ada.UpdateQuery个人信息(txtRealName.Text, txtPhone.Text, txtMail.Text, txtOffice.Text, Session["UserID"].ToString());
            ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('个人信息修改成功！');", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('个人信息修改失败！');", true);
        }
    }
}