using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxEditors;

public partial class SysAdmin_BookTypeManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValid"] == null || Session["IsValid"].ToString() != "true")
        {
            Response.Redirect("../Login.aspx");
        }
    }
    protected void btn_Save_Command(object sender, CommandEventArgs e)
    {

        if (gv_Newstyle.IsNewRowEditing)//新增新闻类型信息
        {
            try
            {
                gv_Newstyle.UpdateEdit();
                gv_Newstyle.DataBind();
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('新闻类型信息添加成功！');", true);
                gv_Newstyle.CancelEdit();
            }
            catch (Exception ex)
            {
                //(1)违反唯一约束条件 (GXDJ.PK_新闻类型代码) (2)违反唯一约束条件 (GXDJ.SYS_C0015036)
                if (ex.Message.Contains("违反唯一约束条件 (GXDJ.PK_新闻类型代码)"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('新闻类型代码不允许重复，请重新填写！');", true);
                }
                else if (ex.Message.Contains("违反唯一约束条件 (GXDJ.SYS_C0015036)"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('新闻类型名称不允许重复，请重新填写！');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('操作失败！');", true);
                }
            }
        }
        else//修改新闻类型信息
        {
            try
            {
                gv_Newstyle.UpdateEdit();
                gv_Newstyle.DataBind();
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('新闻类型信息修改成功！');", true);
                gv_Newstyle.CancelEdit();
            }
            catch (Exception ex)
            {
                //(1)违反唯一约束条件 (GXDJ.PK_新闻类型代码) (2)违反唯一约束条件 (GXDJ.SYS_C0015036)
                if (ex.Message.Contains("违反唯一约束条件 (GXDJ.PK_新闻类型代码)"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('新闻类型代码不允许重复，请重新填写！');", true);
                }
                else if (ex.Message.Contains("违反唯一约束条件 (GXDJ.SYS_C0015036)"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('新闻类型名称不允许重复，请重新填写！');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('操作失败！');", true);
                }
            } 
        }
    }
    protected void btn_Cancel_Click(object sender, EventArgs e)
    {
        gv_Newstyle.CancelEdit();
    }
    protected void gv_Newstyle_HtmlEditFormCreated(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewEditFormEventArgs e)
    {
        if (!gv_Newstyle.IsNewRowEditing)
        {
            (gv_Newstyle.FindEditFormTemplateControl("lbDM") as ASPxLabel).Visible = false;
            (gv_Newstyle.FindEditFormTemplateControl("txt_DM") as ASPxTextBox).Visible = false;
        }
    }
}