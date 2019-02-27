using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// //babu is dealer
/// </summary>
public partial class site_user_Default2 : System.Web.UI.Page
{
     public static int colorid=0,cd=0;
    DataTable dt2;
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter sda1 = new SqlDataAdapter("select color,colorid from color where id='" + Convert.ToInt32(Request.QueryString.Get("k")) + "'", con);
        dt2= new DataTable();
        sda1.Fill(dt2);
        if (!IsPostBack)
        {
            for (int i = 0; i < dt2.Rows.Count; i++)
            {
                colors.Items.Add(dt2.Rows[i][0].ToString());
            }
        }
        cd= Convert.ToInt32(colors.SelectedIndex.ToString());

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void btnbook_Click(object sender, EventArgs e)
    {
        colorid = Convert.ToInt32(dt2.Rows[cd][1]);
        String babu = Request.QueryString.Get("kp");
        string userid = Session["user"].ToString();
        String carid=Request.QueryString.Get("k").ToString();
        SqlCommand cmd = new SqlCommand("insert into book(userid,dealerid,carid,colorid)values('"+userid+"','"+babu+"','"+carid+"',"+colorid+")", con);
        con.Open();
        int x=cmd.ExecuteNonQuery();
        if(x==1)
        {
                    Response.Write("<script>alert('success');</script>");
        }
        con.Close();
    }
    protected void colors_SelectedIndexChanged(object sender, EventArgs e)
    {
        cd = Convert.ToInt32(colors.SelectedIndex.ToString());
        colorid = Convert.ToInt32(dt2.Rows[cd][1]);
        Response.Write(colorid);
    }
}