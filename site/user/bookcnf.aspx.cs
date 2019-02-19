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
        SqlDataAdapter sda = new SqlDataAdapter("SELECT DISTINCT name from dealertable where id=" + Request.QueryString.Get("k") + "", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        string brand = dt.Rows[0][0].ToString();
        SqlDataAdapter sda1 = new SqlDataAdapter("select color from color where name='" + brand + "'", con);
        DataTable dt2 = new DataTable();
        sda1.Fill(dt2);
        GridView1.DataSource = dt2;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}