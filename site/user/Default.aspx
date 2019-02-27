<%@ Page Language="C#" MasterPageFile="~/site/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="site_user_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 129%; height: 284px">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Height="200px" Width="190px" 
                    BackColor="White" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                        <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="variant" HeaderText="variant" 
                            SortExpression="variant" />
                        <asp:BoundField DataField="features" HeaderText="features" 
                            SortExpression="features" />
                        <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="image1" HeaderText="image1" 
                            SortExpression="image1" />
                        <asp:BoundField DataField="image2" HeaderText="image2" 
                            SortExpression="image2" />
                        <asp:BoundField DataField="image3" HeaderText="image3" 
                            SortExpression="image3" />
                        <asp:BoundField DataField="image4" HeaderText="image4" 
                            SortExpression="image4" />
                        <asp:BoundField DataField="image5" HeaderText="image5" 
                            SortExpression="image5" />
                        <asp:BoundField DataField="image6" HeaderText="image6" 
                            SortExpression="image6" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [tblcars]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

