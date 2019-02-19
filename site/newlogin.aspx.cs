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
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class site_Default3 : System.Web.UI.Page
{
    string str;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)

    {
        SqlCommand cmd1 = new SqlCommand();
        SqlDataReader dr1;
        cmd1.Connection = con;
        con.Open();
        cmd1.CommandText = "select type from dealerreg where email='" + txtname1.Text + "'";

        dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            TextBox1.Text = dr1["type"].ToString();
        }

        con.Close();
        
        //SqlCommand cmd1 = new SqlCommand();
        //SqlDataReader dr1;
        //cmd1.Connection = con;
        //con.Open();
        //cmd1.CommandText = "select type from dealerreg where firstname='" + txtname1.Text + "'";
       
        //dr1 = cmd1.ExecuteReader();
        //if (dr1.Read())
        //{
        //    TextBox1.Text = dr1["type"].ToString();
        //}

        SqlDataReader dr;
        SqlCommand cmd = new SqlCommand();
        con.Open();
        string str = "select * from dealerreg where email='" + txtname1.Text + "' and pass='" + txtpass1.Text + "'";
        DataSet ds = new DataSet();
        ds.Clear();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {

            if (TextBox1.Text == "admin     ")
            {
                Session["admin"] = "admin";
                Response.Redirect("admin/page1.aspx");
            }
            else if (TextBox1.Text == "user      ")
            {
                Session["user"] = "user";
                Response.Redirect("user/user.aspx");
            }

            else if (TextBox1.Text == "dealer    ")
            {
                Session["dealer"] = txtname1.Text;
                Response.Write("<script>alert('" + txtname1.Text + "');</script>");
                Response.Redirect("dealer/dealer.aspx");
            }

        }
        else
        {
            Response.Write("<script>alert(' Recheck given deatils ');</script>");
        }
        con.Close();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void txtpass1_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
