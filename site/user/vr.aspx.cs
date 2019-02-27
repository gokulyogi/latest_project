using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class site_user_Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter sda = new SqlDataAdapter("SELECT        remarked.remarks, dealerreg.firstname, dealerreg.lastname, dealerreg.mob, dealerreg.email FROM remarked INNER JOIN dealerreg ON remarked.userid = dealerreg.email WHERE        (remarked.userid = '"+Session["user"].ToString()+"')", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource=dt;
        GridView1.DataBind();
    }
}