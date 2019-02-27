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


public partial class site_Default : System.Web.UI.Page
{
    string str;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)

    {
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr;
        cmd.Connection = con;
        con.Open();
        cmd.CommandText="select pass from dealerreg where firstname='"+TextBox6.Text+"' and mob='"+txtpass1.Text+"' and email='"+TextBox3.Text+"'";
        dr=cmd.ExecuteReader();
        if(dr.Read())
        {
            str="update dealerreg set pass='"+TextBox4.Text+"' && password='"+TextBox5.Text+"'";
            Response.Write("<script> alert('Password changed.') </script>");
            Response.Redirect("~/site/newlogin.aspx");

        }
        else
        {   
            Response.Write("<script> alert('Enter valid details') </script>");
        }
        con.Close();
       
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
}
