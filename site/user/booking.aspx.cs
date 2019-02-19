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
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

public partial class site_user_Default3 : System.Web.UI.Page
{
    string str;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    static int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlCommand cmd = new SqlCommand();
        //SqlDataReader dr;
        //cmd.Connection = con;
        //con.Open();
        //cmd.CommandText = "select * from dealertable where id=" + Request.QueryString["id"];
        //dr = cmd.ExecuteReader();
        //if (dr.Read())
        //{
        //    Image1.ImageUrl = dr["image1"].ToString();
        //}
        if (Session["user"] == "0")
        {
            Response.Redirect("~/site/newlogin.aspx");
        }
        loadim();

    }
    void loadim()
    {
        if (count == 0)
        {
            prv.Visible = false;
        }
        else
        {
            prv.Visible = true;
        }
        if (count == 5)
        {
            nxt.Visible = false;
        }
        else
        {
            nxt.Visible = true;
        }
        SqlDataAdapter sda = new SqlDataAdapter("select image1,image2,image3,image4,image5,image6 from dealertable where id=" + Request.QueryString["id"] + "", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Image1.ImageUrl = dt.Rows[0][count].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Image1_DataBinding(object sender, EventArgs e)
    {

    }
    protected void Image2_DataBinding(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if(count>0)
        count--;
        loadim();
    }
    protected void nxt_Click(object sender, EventArgs e)
    {
        if(count<5)
        count++;
        loadim();
    }

    protected void bcnf_Click(object sender, EventArgs e)
    {
        Response.Redirect("bookcnf.aspx?k=" + Request.QueryString["id"] + "");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}