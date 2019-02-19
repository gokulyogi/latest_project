using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class site_admin_approve : System.Web.UI.Page
{
    string str;
    int idq;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        idq = Convert.ToInt32(Request.QueryString.Get("k"));
        SqlCommand cmd = new SqlCommand("update dealerreg set status=1 where id= "+idq+"and type='dealer'",con);
        con.Open();
        int x = cmd.ExecuteNonQuery();
        if (x == 1)
            Response.Redirect("viewdealer.aspx");
        else
            Response.Write("<script>alert('update failed');</script>");
        con.Close();
    }
}