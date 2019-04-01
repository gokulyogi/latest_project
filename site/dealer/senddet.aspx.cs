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

    }
    protected void btnsub1_Click(object sender, EventArgs e)
    {
        try
        {
            string k = Request.QueryString.Get("k");
            SqlCommand smd = new SqlCommand("insert into remarked(remarks,userid,dealerid,dated)values('" + txtremark.Text + "','" + k + "','" + Session["dealer"].ToString() + "','" + date + "')", con);
            con.Open();
            int x = smd.ExecuteNonQuery();
            if (x == 1)
            {
                Response.Write("<script>alert('successfully sent');</script>");
            }
            con.Close();
        }
        catch (Exception ee)
        { }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void btnsub2_Click(object sender, EventArgs e)
    {
        try
        {
          
            string bb = "dear user your car will be delivered on " + date + "";
            string k = Request.QueryString.Get("k");
            SqlCommand smd = new SqlCommand("insert into remarked(remarks,userid,dealerid,dated)values('" + bb + "','" + k + "','" + Session["dealer"].ToString() + "','" + date + "')", con);
            con.Open();
            int x = smd.ExecuteNonQuery();
            if (x == 1)
            {
                Response.Write("<script>alert('Responded Successfully');</script>");
                Response.Write("<script>window.location.href='http://localhost:21783/last edited on 19.2.19/site/dealer/Default2.aspx';</script>");
            }
            con.Close();
        }
        catch (Exception ee)
        { Response.Write("<script>alert('scene');</script>"); }
    }
    public static String date;
 
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        date = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;

        string bb = "Dear customer, Your request is under processing and our executive will contact you on " + date + ".";
        lbldate.Text = bb;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void btnb_Click(object sender, EventArgs e)
    {

    }
    protected void btnfirst_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnsecond_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex =1;
    }
}