using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("server =.;uid=sa;pwd=1234;database=News");
        SqlCommand cm = new SqlCommand("SELECT * FROM Users WHERE username=@username AND password = @password", cn);
        cm.Parameters.Add("@username", usrnam.Text);
        cm.Parameters.Add("@password", pwd.Text);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds, "Users");
        if (ds.Tables["Users"].Rows.Count == 0)
        {
            Response.Write("Invalid user. Verify!");
        }
        else
        {
            Session["un"] = usrnam.Text;
            Response.Redirect("Settings.aspx");

        }
    }
}