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
using System.Data.Sql;
using System.Data.SqlClient;

public partial class site_dealer_Default : System.Web.UI.Page
{
    String email;
    int count;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        email=Session["dealer"].ToString();
        if (Session["dealer"] == "0")
        {
            Response.Redirect("~/site/newlogin.aspx");
        }
        else
        {
            SqlDataAdapter sda = new SqlDataAdapter("select status from dealerreg where email='" + email + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                count = Convert.ToInt32(dt.Rows[0][0].ToString());
                if (count == 0)
                {
                    Response.Write("<script>alert('Please wait for account activation');</script>");
                    Response.Write("<script>window.location.href = '/project original anedited/site/newlogin.aspx';</script>");
                }
            }
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewbook.aspx");
    }
}
