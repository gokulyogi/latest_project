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


public partial class site_dealer_Default : System.Web.UI.Page
{
    string str;
    string img1,img2,img3,img4,img5,img6;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["dealer"] == "0")
        {
            Response.Redirect("~/site/newlogin.aspx");
        }
        img1 = "~//image123//" + FileUpload2.FileName;
        img2 = "~//image123//" + FileUpload3.FileName;
        img3 = "~//image123//" + FileUpload4.FileName;
        img4 = "~//image123//" + FileUpload5.FileName;
        img5 = "~//image123//" + FileUpload6.FileName;
        img6 = "~//image123//" + FileUpload7.FileName;

        str = "select isnull(max(ID),0)+1 from dealertable";
        DataSet ds = new DataSet();
        ds.Clear();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label11.Text = ds.Tables[0].Rows[0][0].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload7.SaveAs(Server.MapPath(img6));
        Image6.ImageUrl = img6;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        str = "insert into dealertable values('" +Label11.Text+"','" + DropDownList1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + Image1.ImageUrl + "','" + Image2.ImageUrl + "','" + Image3.ImageUrl + "','" + Image4.ImageUrl + "','" + Image5.ImageUrl + "','" + Image6.ImageUrl + "','"+TextBox6.Text+"')";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int n=cmd.ExecuteNonQuery();
        if (n == 1)
        {
            for (int i = 0; i < ListBox1.Items.Count; i++)
            {
                SqlCommand smd = new SqlCommand("insert into color(name,color)values('"+TextBox1.Text+"','"+ListBox1.Items[i].ToString()+"')",con);
                smd.ExecuteNonQuery();
            }
        }
        con.Close();
        Response.Write("<script> alert('Data Saved') </script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        FileUpload2.SaveAs(Server.MapPath(img1));
        Image1.ImageUrl = img1;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        FileUpload3.SaveAs(Server.MapPath(img2));
        Image2.ImageUrl = img2;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        FileUpload4.SaveAs(Server.MapPath(img3));
        Image3.ImageUrl = img3;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        FileUpload5.SaveAs(Server.MapPath(img4));
        Image4.ImageUrl = img4;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        FileUpload6.SaveAs(Server.MapPath(img5));
        Image5.ImageUrl = img5;
    }
    protected void btnaddc_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Add(TextBox4.Text);
        TextBox4.Text = "";
    }
}
