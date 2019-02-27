using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class site_dealer_Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter sdaa = new SqlDataAdapter("SELECT color.color AS clr,color.colorid,dealerreg.firstname AS fn, dealerreg.lastname AS sn, dealerreg.email, tblcars.brand, tblcars.name,tblcars.id as cariid, dealerreg.mob, tblcars.variant,book.id as babu FROM book INNER JOIN color ON book.colorid = color.colorid INNER JOIN dealerreg ON book.userid = dealerreg.email INNER JOIN tblcars ON color.id = tblcars.id AND color.id = tblcars.id where book.dealerid='" + Session["dealer"].ToString() + "'", con);
        DataTable dt2 = new DataTable();
        sdaa.Fill(dt2);
        Repeater1.DataSource = dt2;
        Repeater1.DataBind();
    }
}