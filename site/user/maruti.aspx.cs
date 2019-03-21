using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class site_user_Default2 : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["user"] == "0")
            {
                Response.Redirect("~/site/newlogin.aspx");
            }
            TextBox1.Text = Request.QueryString.Get("k");
        }
        catch (Exception ee)
        { }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DataList2.SelectedIndex = e.Item.ItemIndex;
        Label11.Text = ((Label)DataList2.SelectedItem.FindControl("Label12")).Text;
        String babu = Label11.Text;
        if (e.CommandName == "addtocart")
        {
            Response.Redirect("booking.aspx?id=" + e.CommandArgument.ToString() + "&kp=" + babu);
        }

    }
    protected void ImageButton2_Command(object sender, CommandEventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DataList2.SelectedIndex = e.Item.ItemIndex;
        Label11.Text = ((Label)DataList2.SelectedItem.FindControl("Label12")).Text;
        String babu = Label11.Text;
        if (e.CommandName == "addtocart")
        {
            
            Response.Redirect("booking.aspx?id=" + e.CommandArgument.ToString()+"&kp="+babu);
        }
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void DataList2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}