using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Settings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome " + Session["un"].ToString();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reg.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Articles.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditArticle.aspx");
    }
}