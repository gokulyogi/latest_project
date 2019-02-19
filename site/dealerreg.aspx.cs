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

public partial class site_Default : System.Web.UI.Page
{
    string str;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        str = "select isnull(max(ID),0)+1 from dealerreg";
        DataSet ds = new DataSet();
        ds.Clear();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label8.Text = ds.Tables[0].Rows[0][0].ToString();
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void clear_Click(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = "insert into dealerreg values('" + Label8.Text + "','" + txtname.Text + "','"+TextBox3.Text+"','"+DropDownList4.Text+"','"+TextBox9.Text+"','"+txtmob.Text+"','"+txtemail.Text+"','"+TextBox7.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+DropDownList2.Text+"','"+DropDownList3.Text+"','"+DropDownList5.Text+"','"+TextBox6.Text+"','"+TextBox8.Text+"','"+txtpass.Text+"','"+txtpassword.Text+"','"+TextBox10.Text+"',0)";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> alert('Data Saved, Wait for account activation.') </script>");
        
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        txtname.Text = "";
        TextBox3.Text = "";
        DropDownList4.Text = "";
        TextBox9.Text = "";
        txtmob.Text = "";
        txtemail.Text = "";
        TextBox7.Text = "";
        TextBox4.Text = "";
        DropDownList5.Text = "";
        DropDownList2.Text = "";
        DropDownList3.Text = "";
        TextBox1.Text = "";
        TextBox6.Text = "";
        TextBox8.Text = "";
        txtpass.Text = "";
        txtpassword.Text = "";
    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}
