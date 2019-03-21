using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class site_admin_reject : System.Web.UI.Page
{
    string str;
    int idq;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            idq = Convert.ToInt32(Request.QueryString.Get("k"));
            SqlCommand cmd = new SqlCommand("update dealerreg set status=2 where id= " + idq + "and type='dealer'", con);
            con.Open();
            int x = cmd.ExecuteNonQuery();
            if (x == 1)
                Response.Redirect("viewdealer.aspx");
            else
                Response.Write("<script>alert('rejected  ');</script>");
            con.Close();
        }
        catch (Exception ee)
        { }
    }
}