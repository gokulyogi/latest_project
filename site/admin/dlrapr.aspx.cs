using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class site_admin_Default2 : System.Web.UI.Page
{
    string str;
    int idq;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"] == "0")
            {
                Response.Redirect("~/site/newlogin.aspx");
            }
            idq = Convert.ToInt32(Request.QueryString.Get("k"));
            SqlDataAdapter sda = new SqlDataAdapter("select * from dealerreg where id=" + idq + " and type='dealer'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        catch (Exception ee)
        { }
    }
}