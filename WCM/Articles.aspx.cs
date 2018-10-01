using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Articles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("server=.;uid=sa;pwd=1234;database=News");
//        cn.open();
        SqlCommand cm = new SqlCommand("INSERT INTO Articles(title,details,photo) values (@title,@details,@photo)", cn);
        cm.Parameters.Add("@title", txtTitle.Text);
        cm.Parameters.Add("@details", txtDetails.Text);
        String strImg = System.IO.Path.GetFileName(add.PostedFile.FileName);
        cm.Parameters.Add("@photo", strImg);
        cm.ExecuteNonQuery();
        //        cn.close();
        add.PostedFile.SaveAs(Server.MapPath("Images\\") + strImg);
    }
}