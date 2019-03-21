using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.Sql;


public partial class site_admin_Default : System.Web.UI.Page
{
    string str;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"] == "0")
            {
                Response.Redirect("~/site/newlogin.aspx");
            }
            SqlDataAdapter sda = new SqlDataAdapter("select id,firstname,email,mob from dealerreg where type='dealer' and status=0", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
        catch (Exception ee)
        { }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}