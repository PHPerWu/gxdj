using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_InfoManage : System.Web.UI.Page
{
    DataSetTableAdapters.TA_中心信息TableAdapter ada = new DataSetTableAdapters.TA_中心信息TableAdapter();

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
                try
                {
                    //获取传过来的类型
                    string type = Request.QueryString["infoType"].ToString();
                    //初始化相关值
                    //lblTitle.Text = type == "1" ? "组织概况" : "机构职能";
                    if (type == "1")
                    {
                        lblTitle.Text = "中心目标";
                    }
                    else if (type == "2")
                    {
                        lblTitle.Text = "中心功能";
                    }
                    else if (type == "3")
                    {
                        lblTitle.Text = "中心任务";
                    }
                    else if (type == "4")
                    {
                        lblTitle.Text = "管理机制";
                    }
                    if (ada.GetData(lblTitle.Text).Rows.Count > 0)
                    {
                        htmlInfo.Html = ada.GetData(lblTitle.Text).Rows[0]["信息内容"].ToString();
                    }
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('信息读取失败！');", true);
                }
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            //如果有记录，表示是新增，否则为修改
            if (ada.GetData(lblTitle.Text).Rows.Count <= 0)
            {
                ada.Insert(lblTitle.Text.ToString(), htmlInfo.Html);
                string tip = lblTitle.Text.ToString() + "新增成功！";
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('" + tip + "');", true);
            }
            else
            {
                ada.Update(htmlInfo.Html, lblTitle.Text.ToString());
                string tip = lblTitle.Text.ToString() + "修改成功！";
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('" + tip + "');", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('操作失败！');", true);
        }
    }
}