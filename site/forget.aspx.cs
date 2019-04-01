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
using System.Net.Mail;
using System.Text;
using System.Net;
using System.IO;


public partial class site_Default : System.Web.UI.Page
{
    static string mob;
    static int otp=0,eqotp=0;
    string str;
    Random r;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)

    {
        

    }
    public void callurl(string url)
    {
        WebRequest request = HttpWebRequest.Create(url);
        WebResponse response = request.GetResponse();
        StreamReader reader = new StreamReader(response.GetResponseStream());
        string urlText = reader.ReadToEnd(); // it takes the response from your url. now you can use as your need 
        Response.Write(urlText.ToString());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlDataAdapter sda=new SqlDataAdapter("select * from dealerreg where mob='"+TextBox1.Text+"'",con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            MultiView1.ActiveViewIndex = 1;
            r = new Random();
            otp = r.Next(1000, 9999);
            mob = TextBox1.Text;
            Response.Write(otp);
            // callurl("http://bulksms.login2itsolutions.com/sendsms?uname=ehospital&pwd=ehospital@123&senderid=EHSPTL&to=" + mob + "&msg=" + otp + "+<br>+car drive otp&route=T");
        }
        else
        {
            Response.Write("<script>alert(' Mobile Number not registered with Cardrive account. ');</script>");
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        eqotp = Convert.ToInt32(txtotp.Text);
        if (otp == eqotp)
        {
            MultiView1.ActiveViewIndex = 2;
        }
        else
        {
            Response.Write("<script>alert(' OTP Error. ');</script>");
        }
    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        
        SqlDataAdapter sda=new SqlDataAdapter("UPDATE dealerreg SET pass = '" + txtpwd.Text + "' WHERE (mob = '" + mob + "')", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Response.Write("<script>alert(' Password changed successfully ');</script>");
        Response.Write("<script>window.location.href='http://localhost:21783/last edited on 19.2.19/site/newlogin.aspx';</script>");

    }
}
