using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class site_dealer_Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string em = Request.QueryString.Get("k");
            int a = Convert.ToInt32(Request.QueryString.Get("l"));
            int b = Convert.ToInt32(Request.QueryString.Get("m"));
            int babu = Convert.ToInt32(Request.QueryString.Get("o"));
            SqlDataAdapter sda = new SqlDataAdapter("SELECT color.color AS clr, color.colorid, dealerreg.firstname AS fn, dealerreg.email, tblcars.brand, tblcars.name, tblcars.id AS cariid, dealerreg.mob, tblcars.variant, dealerreg.address, dealerreg.city, dealerreg.pin, dealerreg.state,dealerreg.country, tblcars.price FROM book INNER JOIN color ON book.colorid = color.colorid INNER JOIN dealerreg ON book.userid = dealerreg.email INNER JOIN tblcars ON color.id = tblcars.id AND color.id = tblcars.id WHERE (book.userid = '" + em + "') AND (book.carid = " + a + ") AND (book.colorid = " + b + ") and (book.id=" + babu + ") ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        catch (Exception ee)
        { }
    }
}