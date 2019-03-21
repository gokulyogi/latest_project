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
        SqlDataAdapter sda = new SqlDataAdapter("SELECT dealerreg.firstname AS Firstname, dealerreg.lastname AS Lastname, dealerreg.mob AS Mobile, dealerreg.email AS Email, remarked.remarks AS Dealers_Response FROM remarked INNER JOIN dealerreg ON remarked.dealerid = dealerreg.email AND remarked.dealerid = dealerreg.email WHERE (remarked.userid = '" + Session["user"].ToString() + "') ORDER BY remarked.dated desc", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource=dt;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}